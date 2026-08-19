package com.kuaishou.weapon.p0;

import android.text.TextUtils;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f31158a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", "b", "c", "d", "e", "f"};

    private static String a(byte b3) {
        int i2 = b3;
        if (b3 < 0) {
            i2 = b3 + 256;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = f31158a;
        sb.append(strArr[i2 / 16]);
        sb.append(strArr[i2 % 16]);
        return sb.toString();
    }

    public static String b(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                return a(MessageDigest.getInstance("MD5").digest(bArr));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String c(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b3 = bArr[i2];
            int i3 = i2 * 2;
            cArr2[i3] = cArr[(b3 >>> 4) & 15];
            cArr2[i3 + 1] = cArr[b3 & ek.f49295m];
        }
        return new String(cArr2);
    }

    public static byte[] d(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                return MessageDigest.getInstance("MD5").digest(bArr);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b3 : bArr) {
            stringBuffer.append(a(b3));
        }
        return stringBuffer.toString();
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String str2 = new String(str);
            try {
                return a(MessageDigest.getInstance("MD5").digest(str2.getBytes()));
            } catch (Throwable unused) {
                return str2;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static String a(File file) {
        FileInputStream fileInputStream;
        MessageDigest messageDigest;
        if (file != null && file.exists()) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
                fileInputStream = new FileInputStream(file);
            } catch (Throwable unused) {
                fileInputStream = null;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i2);
                }
                String strC = c(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (Throwable unused2) {
                }
                return strC;
            } catch (Throwable unused3) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                return null;
            }
        }
        return null;
    }
}
