/// 播放器服务
///
/// 管理视频播放状态和进度记录

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PlayerService {
  static const String _progressKey = 'playback_progress';

  /// 保存播放进度
  Future<void> saveProgress(int videoId, int position, int duration) async {
    final prefs = await SharedPreferences.getInstance();
    final progress = _getProgressMap(prefs);
    progress[videoId.toString()] = {
      'position': position,
      'duration': duration,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    };
    await prefs.setString(_progressKey, jsonEncode(progress));
  }

  /// 获取播放进度
  Future<int?> getProgress(int videoId) async {
    final prefs = await SharedPreferences.getInstance();
    final progress = _getProgressMap(prefs);
    final data = progress[videoId.toString()];
    if (data != null) {
      return data['position'] as int?;
    }
    return null;
  }

  Map<String, dynamic> _getProgressMap(SharedPreferences prefs) {
    final raw = prefs.getString(_progressKey);
    if (raw == null) return {};
    try {
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      return {};
    }
  }
}