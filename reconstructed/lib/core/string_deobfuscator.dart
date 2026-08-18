/// 字符串反混淆器
///
/// 从 libapp.so 偏移 0x44d6a8 函数逆向工程
/// 原始实现使用 256 项查表数组，每字节映射到一个字符
///
/// 算法:
///   for each byte b in obfuscated_string:
///     result += lookup_table[b]
///
/// 其中 lookup_table 位于 x26+0x2b0 (Dart VM 对象池)

import 'constants.dart';

class StringDeobfuscator {
  /// 完整的 256 字节查找表
  /// 从 libapp.so 的 Dart VM 对象池 (x26+0x2b0) 提取
  static const List<String> _lookupTable = _buildLookupTable();

  /// 构建完整的 256 项查找表
  static List<String> _buildLookupTable() {
    final table = List<String>.filled(256, '?');
    for (final entry in STRING_LOOKUP_TABLE.entries) {
      table[entry.key] = entry.value;
    }
    return table;
  }

  /// 反混淆字符串
  ///
  /// [obfuscated] 是混淆后的十六进制字符串 (如 "74db580e")
  /// 返回反混淆后的明文字符串 (如 "id")
  ///
  /// 对应 native 函数: 0x44d6a8
  static String deobfuscate(String obfuscated) {
    final buffer = StringBuffer();
    for (int i = 0; i < obfuscated.length; i += 2) {
      final byte = int.parse(obfuscated.substring(i, i + 2), radix: 16);
      buffer.write(_lookupTable[byte]);
    }
    return buffer.toString();
  }
}