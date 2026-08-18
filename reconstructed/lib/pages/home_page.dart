/// 首页
///
/// 展示推荐视频、热门视频、分类等内容

import 'package:flutter/material.dart';
import '../models/video.dart';
import '../services/video_service.dart';
import 'search_page.dart';
import 'video_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VideoService _videoService = VideoService();
  HomeData? _homeData;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadHomeData();
  }

  Future<void> _loadHomeData() async {
    try {
      setState(() {
        _loading = true;
        _error = null;
      });
      final data = await _videoService.getHomeData();
      if (mounted) {
        setState(() {
          _homeData = data;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('大师兄影视'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SearchPage()),
              );
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('加载失败: $_error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadHomeData,
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    if (_homeData == null) {
      return const Center(child: Text('暂无数据'));
    }

    return RefreshIndicator(
      onRefresh: _loadHomeData,
      child: ListView(
        children: [
          // 推荐视频
          if (_homeData!.recommendVideos.isNotEmpty) ...[
            _buildSectionHeader('推荐视频'),
            _buildVideoGrid(_homeData!.recommendVideos),
          ],
          // 热门视频
          if (_homeData!.hotVideos.isNotEmpty) ...[
            _buildSectionHeader('热门视频'),
            _buildVideoGrid(_homeData!.hotVideos),
          ],
          // 最新视频
          if (_homeData!.newVideos.isNotEmpty) ...[
            _buildSectionHeader('最新视频'),
            _buildVideoGrid(_homeData!.newVideos),
          ],
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildVideoGrid(List<Video> videos) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.55,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return _buildVideoCard(videos[index]);
      },
    );
  }

  Widget _buildVideoCard(Video video) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => VideoDetailPage(videoId: video.id),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: video.image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        video.image!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(
                          Icons.movie,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : const Icon(Icons.movie, size: 40, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            video.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13),
          ),
          if (video.rating != null)
            Text(
              '${video.rating!.toStringAsFixed(1)}分',
              style: const TextStyle(fontSize: 11, color: Colors.orange),
            ),
        ],
      ),
    );
  }
}