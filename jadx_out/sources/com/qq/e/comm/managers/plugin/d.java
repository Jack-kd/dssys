package com.qq.e.comm.managers.plugin;

import com.qq.e.comm.managers.setting.GlobalSetting;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f35361a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", "b", "c", "d", "e", "f"};

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b3 : bArr) {
            stringBuffer.append(a(b3));
        }
        return stringBuffer.toString();
    }

    private static String a(byte b3) {
        int i2 = b3;
        if (b3 < 0) {
            i2 = b3 + 256;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = f35361a;
        sb.append(strArr[i2 / 16]);
        sb.append(strArr[i2 % 16]);
        return sb.toString();
    }

    public static String a(File file) throws Throwable {
        MessageDigest messageDigest;
        FileInputStream fileInputStream;
        if (file != null && file.exists()) {
            FileInputStream fileInputStream2 = null;
            try {
                messageDigest = MessageDigest.getInstance("MD5");
                fileInputStream = new FileInputStream(file);
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i2);
                }
                String strA = a(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (Exception unused2) {
                }
                return strA;
            } catch (Exception unused3) {
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused4) {
                    }
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused5) {
                    }
                }
                throw th;
            }
        }
        return "";
    }

    public static String a(String str) {
        try {
            String str2 = new String(str);
            try {
                return a(MessageDigest.getInstance("MD5").digest(str2.getBytes("UTF-8")));
            } catch (Exception unused) {
                return str2;
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
