import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/string.dart';
import '../../models/api_response/search_repository_response/search_repository_response.dart';
import '../../repositories/search_github_repository.dart';
import '../../utils/exception.dart';

/// GitHub のリポジトリの検索ワードを提供するプロバイダ
final gitHubRepositoriesSearchWordProvider = StateProvider.autoDispose<String>((ref) => '');

/// GitHub のリポジトリの検索結果のページ番号を提供するプロバイダ
final gitHubRepositoriesPageProvider = StateProvider.autoDispose<int>((ref) => 1);

/// GitHub のリポジトリの検索結果の 1 ページあたりの件数を提供するプロバイダ
final gitHubRepositoriesPerPageProvider = StateProvider.autoDispose<int>((ref) => 10);

/// GitHub の GET /search/repositories API をコールして、
/// 検索にヒットしたGitHub リポジトリの一覧を返す。
final gitHubRepositoriesFutureProvider =
    FutureProvider.autoDispose<SearchRepositoryResponse>((ref) async {
  final q = ref.watch(gitHubRepositoriesSearchWordProvider);
  final page = ref.watch(gitHubRepositoriesPageProvider);
  final perPage = ref.watch(gitHubRepositoriesPerPageProvider);
  if (q.isEmpty) {
    throw const AppException(emptyQMessage);
  }
  if (page < 1) {
    throw const AppException('ページ番号が正しくありません。');
  }
  if (perPage < 1) {
    throw const AppException('1 ページあたりの件数が正しくありません。');
  }
  return ref.read(searchGitHubRepoRepositoryProvider).fetchGitHubRepositories(
        q: q,
        page: page,
        perPage: perPage,
      );
});
