/// 大师兄影视 - 核心常量
///
/// 此文件包含从原始 APK 逆向工程提取的所有常量：
/// - API 端点路径
/// - 密钥材料
/// - 参数名称
/// - 配置键

/// ============================================================
/// 字符串反混淆查找表
/// 从 libapp.so 偏移 0x44d6a8 函数提取
/// 每个字节通过查表映射到真实字符
/// ============================================================
const Map<int, String> STRING_LOOKUP_TABLE = {
  // 从已知对照对推导 (部分)
  // pp+0x1e600 "74db580e" -> "id"
  0x74: 'i', 0xdb: 'd',
  // pp+0x11888 "4f3795f48de5d2" -> "token"
  0x4f: 't', 0x37: 'o', 0x95: 'k', 0xf4: 'e', 0x8d: 'n',
  // pp+0x1e608 "b3f0b25c37e1fb75b727" -> "sign_md5"
  0xb3: 's', 0xf0: 'i', 0xb2: 'g', 0x5c: 'n', 0xe1: 'm', 0xfb: 'd', 0x75: '5',
  // pp+0x1e610 "5f5a0dc1b40db2be1029" -> "apk_path"
  0x5f: 'a', 0x5a: 'p', 0x0d: 'k', 0xc1: '_', 0xb4: 'p', 0xbe: 'a', 0x10: 't', 0x29: 'h',
  // pp+0x1e618 "c70cff93c6f7eab63d2be62f" -> "apk_length"
  0xc7: 'a', 0x0c: 'p', 0xff: 'k', 0x93: '_', 0xc6: 'l', 0xf7: 'e', 0xea: 'n', 0xb6: 'g', 0x3d: 't', 0x2b: 'h',
  // pp+0x1e620 "3df7d4f712fb5f08bab34440a2aa" -> "video_detail"
  0x3d: 'v', 0xd4: 'i', 0x12: 'd', 0x08: 'e', 0xba: 'o', 0xb3: '_', 0x44: 'd', 0x40: 'e', 0xa2: 't', 0xaa: 'a', 0xf7: 'i', 0x5f: 'l',
  // 其他常见字符
  0x2f: 'r', 0x6c: 'c', 0x1b: 'u', 0x1f: 'f', 0xd5: 'y',
};

/// ============================================================
/// 混淆密钥 (从 pp+0x16ff0, pp+0x17008, pp+0x17010 反混淆)
/// 这些是用于签名的 32 位 MD5 密钥片段
/// ============================================================
const List<String> SECRET_KEY_FRAGMENTS = [
  '7f6702c324815d0e6749c73fda5335b2',
  '6392886ae1105818e79155165835f2a2',
  '87cd1772ecd3205dff4a0cd42845ab9e',
];

/// 签名密钥种子 (base64: eGRkYXBwc2VjcmV0a2V5)
const String SECRET_KEY_SEED = 'xddappsecretkey';

/// 组合后的完整密钥
const String SECRET_KEY =
    '7f6702c324815d0e6749c73fda5335b2'
    '6392886ae1105818e79155165835f2a2'
    '87cd1772ecd3205dff4a0cd42845ab9e';

/// ============================================================
/// API 端点路径
/// 从 Dart AOT 快照中的 pp 段提取
/// ============================================================

/// 核心 API 基础路径
const String API_BASE_PATH = '/ndsx.php/v7';

/// API 路径占位符 - 运行时替换为 RSA 解密后的真实域名
const String API_PLACEHOLDER = 'https://xdd';

/// 引导 URL - 获取加密的 secret 配置
const String SECRET_PARSE_API_URL = 'http://mobile.appad.top/';

/// API 端点
class ApiEndpoints {
  /// 视频搜索
  static const String search = '$API_BASE_PATH/search';

  /// 推荐视频列表
  static const String recommendList = '/recommendVideoList';

  /// 视频详情 (参数: videoId)
  static const String videoDetail = '$API_BASE_PATH/video';

  /// 播放地址获取
  static const String playUrl = '$API_BASE_PATH/playUrl';

  /// 视频分类列表
  static const String categoryList = '$API_BASE_PATH/category';

  /// 首页数据
  static const String home = '$API_BASE_PATH/home';
}

/// ============================================================
/// 请求参数名 (从 pp 段反混淆)
/// ============================================================
class ParamNames {
  static const String signMd5 = 'sign_md5';       // pp+0x1e608
  static const String apkPath = 'apk_path';        // pp+0x1e610
  static const String apkLength = 'apk_length';    // pp+0x1e618
  static const String videoDetail = 'video_detail'; // pp+0x1e620
  static const String id = 'id';                    // pp+0x1e600
  static const String token = 'token';              // pp+0x11888
  static const String version = 'version';          // pp+0x118a0
  static const String platform = 'platform';        // pp+0x118c8
  static const String csrf = 'csrf';                // pp+0x118e8
  static const String deviceId = 'deviceId';        // pp+0x20e80
  static const String appKey = 'appKey';            // pp+0x16138
  static const String coreParams = 'core_params';   // pp+0x1ebb8
  static const String groupKey = 'group_key';       // pp+0x210f8
}

/// ============================================================
/// MethodChannel 名称
/// ============================================================
class ChannelNames {
  /// flutter_android_sign 通道 (pp+0x16fd8)
  /// 用于获取 APK 签名证书 SHA1 作为 deviceId
  static const String flutterAndroidSign = 'flutter_android_sign';

  /// getSign 方法名 (pp+0x16fe8)
  static const String getSign = 'getSign';
}

/// ============================================================
/// 应用配置键 (从 pp 段提取)
/// ============================================================
class ConfigKeys {
  /// 加密的 secret 配置解析 URL (pp+0x20fe0)
  static const String secretParseApiUrl = 'secret_parse_api_url';

  /// 解析 secret 配置 (pp+0x1eac8)
  static const String parseSecret = 'parse_secret';

  /// 核心参数 (pp+0x1ebb8)
  static const String coreParams = 'core_params';
}

/// ============================================================
/// 数据库表名
/// ============================================================
class DbTables {
  /// 视频收藏表
  /// CREATE TABLE (id INTEGER PRIMARY KEY, videoName TEXT,
  ///   lastAddTime INTEGER, videoImage TEXT, videoJson TEXT)
  static const String videoHistory = 'video_history';

  /// 播放进度表
  /// CREATE TABLE (videoId INTEGER PRIMARY KEY, startSecond INTEGER,
  ///   endSecond INTEGER, enable INTEGER)
  static const String playbackProgress = 'playback_progress';
}