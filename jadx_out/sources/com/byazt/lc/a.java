package com.byazt.lc;

import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 1769, 54})
/* loaded from: classes3.dex */
public final class a {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String hp(String str) {
        return hp(str.getBytes());
    }

    private static String l(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        char[] cArr = new char[length << 1];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = hp;
            cArr[i2] = cArr2[(b3 >>> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }

    public static String hp(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(bArr);
                return l(messageDigest.digest());
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String hp(File file) throws NoSuchAlgorithmException, IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr, 0, 8192);
                if (i2 > 0) {
                    messageDigest.update(bArr, 0, i2);
                } else {
                    fileInputStream.close();
                    return l(messageDigest.digest());
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
