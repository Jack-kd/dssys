package com.byazt.ymw;

import com.umeng.analytics.pro.ek;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;

@com.byazt.kj.hp(hp = {0, 1, 68, 54})
/* loaded from: classes3.dex */
public class a {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String hp(byte[] bArr) {
        if (bArr != null) {
            return hp(bArr, 0, bArr.length);
        }
        throw new NullPointerException("bytes is null");
    }

    public static String l(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return hp(messageDigest.digest());
                }
            } catch (Throwable unused) {
            }
        }
        return null;
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

    public static byte[] hp(String str) throws IllegalArgumentException {
        if (str != null && str.length() % 2 != 1) {
            char[] charArray = str.toCharArray();
            int length = charArray.length;
            byte[] bArr = new byte[length / 2];
            for (int i2 = 0; i2 < length; i2 += 2) {
                bArr[i2 / 2] = (byte) ((Character.digit(charArray[i2], 16) << 4) + Character.digit(charArray[i2 + 1], 16));
            }
            return bArr;
        }
        throw new IllegalArgumentException("hexBinary needs to be even-length: ".concat(String.valueOf(str)));
    }

    public static String hp(File file) throws IOException {
        FileInputStream fileInputStream;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            if (messageDigest == null) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = fileInputStream.read(bArr, 0, 8192);
                    if (i2 <= 0) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i2);
                }
                String strHp = hp(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (Exception unused) {
                }
                return strHp;
            } catch (Throwable unused2) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            fileInputStream = null;
        }
    }
}
