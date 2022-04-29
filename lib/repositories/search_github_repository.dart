import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';
import '../models/api_response/search_repository_response/search_repository_response.dart';

final searchRepoRepositoryProvider = Provider.autoDispose(
  (ref) => RepoRepository(client: ref.read(apiClientProvider)),
);

class RepoRepository {
  RepoRepository({
    required ApiClient client,
  }) : _client = client;
  final ApiClient _client;

  /// 入力したキーワードで GET /search/repositories API をコールして、
  /// ヒットする GitHub リポジトリ一覧を含む SearchRepositoryResponse を返す。
  Future<SearchRepositoryResponse> fetchRepositories({
    required String q,
    int page = 1,
    int perPage = 10,
  }) async {
    final apiResponse = await _client.get(
      '/search/repositories',
      queryParameters: <String, dynamic>{
        'q': q,
        'page': page,
        'per_page': perPage,
      },
    );
    return SearchRepositoryResponse.fromJson(apiResponse.data);
  }
}
