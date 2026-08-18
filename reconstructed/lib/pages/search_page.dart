/// 搜索页面
///
/// 实现视频搜索功能
/// 包含搜索历史管理

import 'package:flutter/material.dart';
import '../models/video.dart';
import '../services/video_service.dart';
import '../services/search_service.dart';
import 'video_detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final VideoService _videoService = VideoService();
  final SearchService _searchService = SearchService();
  final TextEditingController _searchController = TextEditingController();

  List<String> _history = [];
  List<Video> _results = [];
  bool _loading = false;
  bool _searched = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    final history = await _searchService.getSearchHistory();
    if (mounted) {
      setState(() => _history = history);
    }
  }

  Future<void> _search(String keyword) async {
    if (keyword.trim().isEmpty) return;

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final result = await _videoService.search(keyword: keyword);
      await _searchService.addSearchHistory(keyword);
      if (mounted) {
        setState(() {
          _results = result.videos;
          _loading = false;
          _searched = true;
        });
        _loadHistory();
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
        title: TextField(
          controller: _searchController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: '搜索视频',
            border: InputBorder.none,
          ),
          onSubmitted: _search,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _search(_searchController.text),
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
      return Center(child: Text('搜索失败: $_error'));
    }
    if (_searched) {
      if (_results.isEmpty) {
        return const Center(child: Text('未找到相关视频'));
      }
      return ListView.builder(
        itemCount: _results.length,
        itemBuilder: (context, index) {
          final video = _results[index];
          return ListTile(
            leading: video.image != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(video.image!, width: 60, height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            const Icon(Icons.movie, size: 40))),
                : const Icon(Icons.movie, size: 40),
            title: Text(video.name),
            subtitle: Text(video.type ?? ''),
            trailing: video.rating != null
                ? Text('${video.rating!.toStringAsFixed(1)}分',
                    style: const TextStyle(color: Colors.orange))
                : null,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VideoDetailPage(videoId: video.id),
                ),
              );
            },
          );
        },
      );
    }
    // 搜索历史
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_history.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('搜索历史',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () async {
                    await _searchService.clearSearchHistory();
                    _loadHistory();
                  },
                  child: const Text('清除'),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 8,
            children: _history.map((keyword) {
              return ActionChip(
                label: Text(keyword),
                onPressed: () {
                  _searchController.text = keyword;
                  _search(keyword);
                },
              );
            }).toList(),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}