package com.czhj.sdk.common.utils;

import com.czhj.sdk.logger.SigmobLog;
import java.io.FileInputStream;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ImageTypeUtil {

    /* renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f29496a;

    static {
        HashMap<String, String> map = new HashMap<>();
        f29496a = map;
        map.put("FFD8", "jpg");
        map.put("8950", "png");
        map.put("4749", "gif");
        map.put("4949", "tif");
        map.put("424D", "bmp");
        map.put("5745", "webp");
    }

    private static String a(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            String upperCase = Integer.toHexString(b3 & 255).toUpperCase();
            if (upperCase.length() < 2) {
                sb.append(0);
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }

    public static String getFileHeader(String str) {
        String str2;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
            str2 = null;
        }
        try {
            byte[] bArr = new byte[2];
            fileInputStream.read(bArr, 0, 2);
            String strA = a(bArr);
            if (strA != null && strA.equals("5249")) {
                fileInputStream.skip(6L);
                fileInputStream.read(bArr, 0, 2);
                strA = a(bArr);
            }
            try {
                fileInputStream.close();
                return strA;
            } catch (Throwable unused) {
                return strA;
            }
        } catch (Throwable th2) {
            th = th2;
            str2 = null;
            fileInputStream2 = fileInputStream;
            try {
                SigmobLog.e(th.getMessage());
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable unused2) {
                    }
                }
                return str2;
            } catch (Throwable th3) {
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable unused3) {
                    }
                }
                throw th3;
            }
        }
    }

    public static String getFileType(String str) {
        return f29496a.get(getFileHeader(str));
    }
}
