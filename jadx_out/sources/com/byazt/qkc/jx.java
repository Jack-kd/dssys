package com.byazt.qkc;

import com.umeng.analytics.pro.ek;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 1695, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String hp(String str) throws NoSuchAlgorithmException {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return hp(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String hp(byte[] bArr) {
        if (bArr != null) {
            return hp(bArr, 0, bArr.length);
        }
        throw new NullPointerException("bytes is null");
    }

    public static String hp(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            if (i2 >= 0 && i2 + i3 <= bArr.length) {
                int i4 = i3 * 2;
                char[] cArr = new char[i4];
                int i5 = 0;
                for (int i6 = 0; i6 < i3; i6++) {
                    byte b3 = bArr[i6 + i2];
                    int i7 = i5 + 1;
                    char[] cArr2 = hp;
                    cArr[i5] = cArr2[(b3 & 255) >> 4];
                    i5 += 2;
                    cArr[i7] = cArr2[b3 & ek.f49295m];
                }
                return new String(cArr, 0, i4);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("bytes is null");
    }
}
