/// 数据模型
///
/// 从原始 APP 的 API 响应结构逆向工程

/// 视频详情模型
class Video {
  final int id;
  final String name;
  final String? image;
  final String? description;
  final String? director;
  final String? actors;
  final String? area;
  final String? language;
  final int? year;
  final String? type;
  final int? episodeCount;
  final int? currentEpisode;
  final double? rating;
  final int? playCount;
  final String? updateTime;
  final List<VideoSource>? sources;

  Video({
    required this.id,
    required this.name,
    this.image,
    this.description,
    this.director,
    this.actors,
    this.area,
    this.language,
    this.year,
    this.type,
    this.episodeCount,
    this.currentEpisode,
    this.rating,
    this.playCount,
    this.updateTime,
    this.sources,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'] as int? ?? 0,
      name: json['videoName'] as String? ?? json['name'] as String? ?? '',
      image: json['videoImage'] as String? ?? json['image'] as String?,
      description: json['description'] as String?,
      director: json['director'] as String?,
      actors: json['actors'] as String?,
      area: json['area'] as String?,
      language: json['language'] as String?,
      year: json['year'] as int?,
      type: json['type'] as String?,
      episodeCount: json['episodeCount'] as int?,
      currentEpisode: json['currentEpisode'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      playCount: json['playCount'] as int?,
      updateTime: json['updateTime'] as String? ?? json['lastAddTime'] as String?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => VideoSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'videoName': name,
    'videoImage': image,
    'description': description,
    'director': director,
    'actors': actors,
    'area': area,
    'language': language,
    'year': year,
    'type': type,
    'episodeCount': episodeCount,
    'currentEpisode': currentEpisode,
    'rating': rating,
    'playCount': playCount,
    'updateTime': updateTime,
  };
}

/// 视频播放源 (剧集)
class VideoSource {
  final int episode;
  final String name;
  final String? playUrl;
  final String? format; // m3u8, mp4, etc.

  VideoSource({
    required this.episode,
    required this.name,
    this.playUrl,
    this.format,
  });

  factory VideoSource.fromJson(Map<String, dynamic> json) {
    return VideoSource(
      episode: json['episode'] as int? ?? json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '第${json['episode'] ?? json['id']}集',
      playUrl: json['playUrl'] as String? ?? json['url'] as String?,
      format: json['format'] as String?,
    );
  }
}

/// 搜索建议模型
class SearchSuggestion {
  final String keyword;
  final int count;

  SearchSuggestion({required this.keyword, this.count = 0});

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) {
    return SearchSuggestion(
      keyword: json['keyword'] as String? ?? '',
      count: json['count'] as int? ?? 0,
    );
  }
}

/// 搜索结果模型
class SearchResult {
  final List<Video> videos;
  final int total;
  final int page;
  final int pageSize;

  SearchResult({
    required this.videos,
    required this.total,
    required this.page,
    required this.pageSize,
  });

  bool get hasMore => page * pageSize < total;

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      videos: (json['list'] as List<dynamic>? ?? [])
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int? ?? 0,
      page: json['page'] as int? ?? 1,
      pageSize: json['pageSize'] as int? ?? 20,
    );
  }
}

/// 视频分类模型
class VideoCategory {
  final int id;
  final String name;
  final String? icon;

  VideoCategory({required this.id, required this.name, this.icon});

  factory VideoCategory.fromJson(Map<String, dynamic> json) {
    return VideoCategory(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      icon: json['icon'] as String?,
    );
  }
}

/// 首页数据模型
class HomeData {
  final List<Video> banners;
  final List<VideoCategory> categories;
  final List<Video> hotVideos;
  final List<Video> newVideos;
  final List<Video> recommendVideos;

  HomeData({
    required this.banners,
    required this.categories,
    required this.hotVideos,
    required this.newVideos,
    required this.recommendVideos,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      banners: (json['banners'] as List<dynamic>? ?? [])
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>? ?? [])
          .map((e) => VideoCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotVideos: (json['hotVideos'] as List<dynamic>? ?? [])
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      newVideos: (json['newVideos'] as List<dynamic>? ?? [])
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendVideos: (json['recommendVideos'] as List<dynamic>? ?? [])
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}