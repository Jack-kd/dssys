/// 搜索服务
///
/// 管理搜索历史和搜索建议

import 'package:shared_preferences/shared_preferences.dart';

class SearchService {
  static const String _historyKey = 'search_history_keywords'; // pp+0x1b148

  /// 获取搜索历史
  Future<List<String>> getSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_historyKey) ?? [];
    return history;
  }

  /// 添加搜索历史
  Future<void> addSearchHistory(String keyword) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_historyKey) ?? [];
    history.remove(keyword);
    history.insert(0, keyword);
    // 最多保留 20 条
    if (history.length > 20) {
      history.removeRange(20, history.length);
    }
    await prefs.setStringList(_historyKey, history);
  }

  /// 清除搜索历史
  Future<void> clearSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_historyKey);
  }
}