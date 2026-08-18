/// 视频 API 服务
///
/// 封装所有视频相关的 API 调用
/// 原始 API 路径: /ndsx.php/v7

import '../core/api_client.dart';
import '../core/constants.dart';
import '../models/video.dart';
import '../models/api_response.dart';

class VideoService {
  final ApiClient _client = ApiClient();

  /// 搜索视频
  ///
  /// 对应 API: /ndsx.php/v7/search
  /// 参数: keyword, page, pageSize
  Future<SearchResult> search({
    required String keyword,
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _client.get(
      ApiEndpoints.search,
      queryParameters: {
        'keyword': keyword,
        'page': page,
        'pageSize': pageSize,
      },
    );
    final apiResponse = ApiResponse<SearchResult>.fromJson(
      response,
      (data) => SearchResult.fromJson(data),
    );
    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    throw ApiException(code: apiResponse.code, message: apiResponse.message);
  }

  /// 获取视频详情
  ///
  /// 对应 API: /ndsx.php/v7/video/:videoId
  Future<Video> getVideoDetail(int videoId) async {
    final response = await _client.get(
      '${ApiEndpoints.videoDetail}/$videoId',
    );
    final apiResponse = ApiResponse<Video>.fromJson(
      response,
      (data) => Video.fromJson(data),
    );
    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    throw ApiException(code: apiResponse.code, message: apiResponse.message);
  }

  /// 获取播放地址
  ///
  /// 对应 API: /ndsx.php/v7/playUrl
  /// 返回 .m3u8 或 .mp4 播放地址
  Future<List<VideoSource>> getPlayUrl(int videoId, {int? episode}) async {
    final response = await _client.get(
      ApiEndpoints.playUrl,
      queryParameters: {
        'videoId': videoId,
        if (episode != null) 'episode': episode,
      },
    );
    final apiResponse = ApiResponse<List<VideoSource>>.fromJson(
      response,
      (data) {
        final list = data['sources'] as List<dynamic>? ?? [];
        return list
            .map((e) => VideoSource.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    throw ApiException(code: apiResponse.code, message: apiResponse.message);
  }

  /// 获取首页数据
  ///
  /// 对应 API: /ndsx.php/v7/home
  Future<HomeData> getHomeData() async {
    final response = await _client.get(ApiEndpoints.home);
    final apiResponse = ApiResponse<HomeData>.fromJson(
      response,
      (data) => HomeData.fromJson(data),
    );
    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    throw ApiException(code: apiResponse.code, message: apiResponse.message);
  }

  /// 获取推荐列表
  ///
  /// 对应 API: /recommendVideoList/:recommendId
  Future<List<Video>> getRecommendList(int recommendId, {int page = 1}) async {
    final response = await _client.get(
      '${ApiEndpoints.recommendList}/$recommendId',
      queryParameters: {'page': page},
    );
    final apiResponse = ApiResponse<List<Video>>.fromJson(
      response,
      (data) {
        final list = data['list'] as List<dynamic>? ?? [];
        return list
            .map((e) => Video.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  /// 获取分类视频列表
  Future<SearchResult> getCategoryVideos(
    int categoryId, {
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _client.get(
      ApiEndpoints.categoryList,
      queryParameters: {
        'categoryId': categoryId,
        'page': page,
        'pageSize': pageSize,
      },
    );
    return SearchResult.fromJson(response);
  }
}