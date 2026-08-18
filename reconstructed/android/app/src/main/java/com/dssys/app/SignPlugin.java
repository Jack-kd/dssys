package com.dssys.app;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;

import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * 签名插件 - 获取 APK 签名证书 SHA1
 *
 * 从原始 APK 的 smali_classes3/G0/a.smali 和 G0/b.smali 逆向工程
 *
 * 原始实现:
 *   G0/a.smali: MethodChannel 分发器
 *     - 注册 "flutter_android_sign" 通道
 *     - 处理 "getSign" 方法调用
 *     - 调用 G0/b.b(Context) 获取签名
 *
 *   G0/b.smali: 签名提取逻辑
 *     - b(Context): 获取 APK 签名证书 SHA1 指纹
 *       1. 获取 PackageManager
 *       2. 使用 GET_SIGNATURES (0x40) 获取包信息
 *       3. 提取第一个签名
 *       4. 解析 X509 证书
 *       5. 计算 SHA1 哈希
 *       6. 格式化为 "AA:BB:CC:..." 格式
 *     - a(byte[]): 字节数组转十六进制字符串
 *       遍历每个字节，调用 Integer.toHexString()
 *       单字节补零，取最后两位
 *       转换为大写
 *       用冒号分隔
 */
public class SignPlugin implements MethodCallHandler {

    private final Context context;

    public SignPlugin(Context context) {
        this.context = context;
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if ("getSign".equals(call.method)) {
            try {
                String sign = getSign(context);
                result.success(sign);
            } catch (Exception e) {
                result.error("SIGN_ERROR", e.getMessage(), null);
            }
        } else {
            result.notImplemented();
        }
    }

    /**
     * 获取 APK 签名证书 SHA1 指纹
     *
     * 对应原始实现: G0/b.b(Context)
     */
    public static String getSign(Context context) throws Exception {
        PackageManager pm = context.getPackageManager();
        String packageName = context.getPackageName();

        // 获取签名信息 (GET_SIGNATURES = 0x40 = 64)
        PackageInfo packageInfo = pm.getPackageInfo(packageName, PackageManager.GET_SIGNATURES);

        // 提取第一个签名
        Signature[] signatures = packageInfo.signatures;
        if (signatures == null || signatures.length == 0) {
            throw new Exception("No signatures found");
        }
        Signature signature = signatures[0];

        // 解析 X509 证书
        byte[] certBytes = signature.toByteArray();
        ByteArrayInputStream inputStream = new ByteArrayInputStream(certBytes);
        CertificateFactory certFactory = CertificateFactory.getInstance("X509");
        X509Certificate cert = (X509Certificate) certFactory.generateCertificate(inputStream);

        // 计算 SHA1
        MessageDigest md = MessageDigest.getInstance("SHA1");
        byte[] digest = md.digest(cert.getEncoded());

        // 转换为十六进制字符串 (AA:BB:CC:... 格式)
        return bytesToHex(digest);
    }

    /**
     * 字节数组转十六进制字符串
     *
     * 对应原始实现: G0/b.a(byte[])
     */
    public static String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder(bytes.length * 3);
        for (int i = 0; i < bytes.length; i++) {
            String hex = Integer.toHexString(bytes[i] & 0xFF);
            // 补零
            if (hex.length() == 1) {
                sb.append('0');
            }
            // 取最后两位
            if (hex.length() > 2) {
                hex = hex.substring(hex.length() - 2);
            }
            sb.append(hex.toUpperCase());
            // 冒号分隔 (最后一位不加)
            if (i < bytes.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }
}