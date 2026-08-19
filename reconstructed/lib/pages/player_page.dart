/// 播放器页面
///
/// 视频播放功能
/// 原始 APP 使用 .m3u8 (HLS) 流媒体播放

import 'package:flutter/material.dart';
import '../models/video.dart';
import '../services/video_service.dart';
import '../services/player_service.dart';

class PlayerPage extends StatefulWidget {
  final int videoId;
  final String videoName;

  const PlayerPage({
    super.key,
    required this.videoId,
    required this.videoName,
  });

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final VideoService _videoService = VideoService();
  final PlayerService _playerService = PlayerService();

  List<VideoSource> _sources = [];
  VideoSource? _currentSource;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadPlayUrl();
  }

  Future<void> _loadPlayUrl() async {
    try {
      setState(() {
        _loading = true;
        _error = null;
      });
      final sources = await _videoService.getPlayUrl(widget.videoId);
      if (mounted) {
        setState(() {
          _sources = sources;
          if (sources.isNotEmpty) {
            _currentSource = sources.first;
          }
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
      appBar: AppBar(title: Text(widget.videoName)),
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
            ElevatedButton(onPressed: _loadPlayUrl, child: const Text('重试')),
          ],
        ),
      );
    }
    if (_sources.isEmpty) {
      return const Center(child: Text('暂无播放源'));
    }

    return Column(
      children: [
        // 播放器区域
        Container(
          width: double.infinity,
          height: 220,
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.play_circle_outline,
                    size: 64, color: Colors.white),
                const SizedBox(height: 8),
                Text(
                  _currentSource?.name ?? widget.videoName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                if (_currentSource?.playUrl != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    '格式: ${_currentSource!.format ?? "m3u8"}',
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ],
            ),
          ),
        ),
        // 剧集列表
        Expanded(
          child: _sources.length > 1
              ? ListView.builder(
                  itemCount: _sources.length,
                  itemBuilder: (context, index) {
                    final source = _sources[index];
                    final isSelected = source == _currentSource;
                    return ListTile(
                      selected: isSelected,
                      title: Text(source.name),
                      trailing: isSelected
                          ? const Icon(Icons.play_arrow, color: Colors.blue)
                          : null,
                      onTap: () {
                        setState(() => _currentSource = source);
                      },
                    );
                  },
                )
              : const Center(child: Text('正在播放')),
        ),
      ],
    );
  }
}