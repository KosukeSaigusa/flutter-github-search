import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/response_data/issues_response/issues_response.dart';
import '../../repositories/issue.dart';
import '../../utils/api.dart';
import '../../utils/exceptions/api_exceptions.dart';
import 'fetch_issue_state.dart';

/// Issue の読み書きの対象としている GitHub リポジトリのオーナー名を提供するプロバイダ
final issueOwnerNameProvider =
    StateProvider.autoDispose<String>((_) => const String.fromEnvironment('GITHUB_OWNER_NAME'));

/// Issue の読み書きの対象としている GitHub リポジトリの名前を提供するプロバイダ
final issueRepoNameProvider =
    StateProvider.autoDispose<String>((_) => const String.fromEnvironment('TARGET_GITHUB_REPO'));

/// dart_define で指定している対象リポジトリのイシュー一覧を取得・保持するための
/// StateNotifier を提供するプロバイダ。
final fetchIssueStateNotifierProvider =
    StateNotifierProvider.autoDispose<FetchIssueStateNotifier, FetchIssueState>(
  (ref) => FetchIssueStateNotifier(ref.read),
);

class FetchIssueStateNotifier extends StateNotifier<FetchIssueState> {
  FetchIssueStateNotifier(this._read) : super(const FetchIssueState()) {
    _fetchIssues();
  }

  final Reader _read;

  /// ListView.builder に指定するスクロールコントローラ
  final scrollController = ScrollController();

  /// GET /repos/{owner}/{repo}/issues API をコールして結果を state に保持する
  Future<void> _fetchIssues() async {
    if (state.currentPage < 1) {
      state = state.copyWith(loading: false, error: FetchResponseError.pageNotValid);
      return;
    }
    if (state.perPage < 1) {
      state = state.copyWith(loading: false, error: FetchResponseError.perPageNotValid);
      return;
    }
    try {
      state = state.copyWith(loading: true);
      final response = await _read(issueRepositoryProvider).fetchIssues(
        ownerName: _read(issueOwnerNameProvider),
        repoName: _read(issueRepoNameProvider),
        page: state.currentPage,
        perPage: state.perPage,
      );
      _updateStateByResponse(response);
    } on ApiException {
      state = state.copyWith(error: FetchResponseError.apiError);
    } on Exception {
      state = state.copyWith(error: FetchResponseError.other);
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  /// Issue の作成後などにリロードする
  Future<void> reload() async {
    _animateToTop();
    _resetPagerStatus();
    await _fetchIssues();
  }

  /// 前のページへ
  void showPreviousPage() {
    if (state.currentPage < 2) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage - 1);
    _resetPagerStatus();
    _animateToTop();
    _fetchIssues();
  }

  /// 次のページへ
  void showNextPage() {
    if (state.issues.isEmpty) {
      return;
    }
    state = state.copyWith(currentPage: state.currentPage + 1);
    _resetPagerStatus();
    _animateToTop();
    _fetchIssues();
  }

  /// GET /repos/{owner}/{repo}/issues API の結果に応じて更新すべき状態を更新する
  void _updateStateByResponse(IssuesResponse response) {
    state = state.copyWith(
      issues: response.issues,
      canShowNextPage: response.issues.length >= state.perPage,
    );
    _resetPagerStatus();
  }

  /// ページャに関わる状態を更新する
  void _resetPagerStatus() {
    state = state.copyWith(
      canShowPreviousPage: state.currentPage > 1,
      canShowNextPage: state.issues.length >= state.perPage,
    );
  }

  /// ページ切替時に ListView の上までスクロールする
  void _animateToTop() {
    if (!scrollController.hasClients) {
      return;
    }
    scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 200),
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
