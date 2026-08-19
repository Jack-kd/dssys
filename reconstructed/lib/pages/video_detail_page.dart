/// 视频详情页面
///
/// 展示视频详情信息、剧集列表、播放入口

import 'package:flutter/material.dart';
import '../models/video.dart';
import '../services/video_service.dart';
import 'player_page.dart';

class VideoDetailPage extends StatefulWidget {
  final int videoId;

  const VideoDetailPage({super.key, required this.videoId});

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  final VideoService _videoService = VideoService();
  Video? _video;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadDetail();
  }

  Future<void> _loadDetail() async {
    try {
      setState(() {
        _loading = true;
        _error = null;
      });
      final video = await _videoService.getVideoDetail(widget.videoId);
      if (mounted) {
        setState(() {
          _video = video;
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
      appBar: AppBar(title: Text(_video?.name ?? '视频详情')),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(child: Text('加载失败: $_error'));
    }
    if (_video == null) {
      return const Center(child: Text('视频不存在'));
    }

    final video = _video!;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 封面图
          if (video.image != null)
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(video.image!, fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: Colors.grey[300])),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 标题
                Text(video.name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                // 基本信息
                _buildInfoRow('类型', video.type ?? '未知'),
                if (video.area != null) _buildInfoRow('地区', video.area!),
                if (video.language != null)
                  _buildInfoRow('语言', video.language!),
                if (video.year != null)
                  _buildInfoRow('年份', video.year.toString()),
                if (video.director != null)
                  _buildInfoRow('导演', video.director!),
                if (video.actors != null) _buildInfoRow('主演', video.actors!),
                if (video.rating != null)
                  _buildInfoRow('评分', '${video.rating!.toStringAsFixed(1)}分'),
                if (video.episodeCount != null)
                  _buildInfoRow('集数', '${video.episodeCount}集'),
                const SizedBox(height: 16),
                // 简介
                if (video.description != null) ...[
                  const Text('简介',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(video.description!,
                      style: const TextStyle(fontSize: 14, height: 1.6)),
                ],
                const SizedBox(height: 16),
                // 播放按钮
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              PlayerPage(videoId: video.id, videoName: video.name),
                        ),
                      );
                    },
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('立即播放'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(label,
                style: const TextStyle(color: Colors.grey, fontSize: 14)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}