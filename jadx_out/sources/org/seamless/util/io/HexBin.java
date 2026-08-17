package org.seamless.util.io;

import com.umeng.analytics.pro.ek;
import java.io.UnsupportedEncodingException;

/* loaded from: classes5.dex */
public final class HexBin {
    private static final int BASELENGTH = 255;
    private static final int LOOKUPLENGTH = 16;
    private static byte[] hexNumberTable = new byte[255];
    private static byte[] lookUpHexAlphabet = new byte[16];

    static {
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < 255; i4++) {
            hexNumberTable[i4] = -1;
        }
        for (int i5 = 57; i5 >= 48; i5--) {
            hexNumberTable[i5] = (byte) (i5 - 48);
        }
        for (int i6 = 70; i6 >= 65; i6--) {
            hexNumberTable[i6] = (byte) (i6 - 55);
        }
        for (int i7 = 102; i7 >= 97; i7--) {
            hexNumberTable[i7] = (byte) (i7 - 87);
        }
        while (true) {
            if (i3 >= 10) {
                break;
            }
            lookUpHexAlphabet[i3] = (byte) (i3 + 48);
            i3++;
        }
        for (i2 = 10; i2 <= 15; i2++) {
            lookUpHexAlphabet[i2] = (byte) (i2 + 55);
        }
    }

    public static String bytesToString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new String(encode(bArr));
    }

    public static byte[] decode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        if (length % 2 != 0) {
            return null;
        }
        int i2 = length / 2;
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * 2;
            if (isHex(bArr[i4])) {
                int i5 = i4 + 1;
                if (isHex(bArr[i5])) {
                    byte[] bArr3 = hexNumberTable;
                    bArr2[i3] = (byte) ((bArr3[bArr[i4]] << 4) | bArr3[bArr[i5]]);
                }
            }
            return null;
        }
        return bArr2;
    }

    public static byte[] encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            byte[] bArr3 = lookUpHexAlphabet;
            bArr2[i3] = bArr3[(bArr[i2] >> 4) & 15];
            bArr2[i3 + 1] = bArr3[bArr[i2] & ek.f49295m];
        }
        return bArr2;
    }

    public static boolean isHex(byte b3) {
        return hexNumberTable[b3] != -1;
    }

    public static byte[] stringToBytes(String str) {
        return decode(str.getBytes());
    }

    public static String bytesToString(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        String str2 = new String(encode(bArr));
        StringBuilder sb = new StringBuilder();
        int i2 = 1;
        for (char c2 : str2.toCharArray()) {
            sb.append(c2);
            if (i2 == 2) {
                sb.append(str);
                i2 = 1;
            } else {
                i2++;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public static byte[] stringToBytes(String str, String str2) {
        return decode(str.replaceAll(str2, "").getBytes());
    }

    public static String encode(String str) {
        byte[] bArrEncode;
        if (str == null) {
            return null;
        }
        try {
            bArrEncode = encode(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException unused) {
            bArrEncode = null;
        }
        if (bArrEncode == null) {
            return null;
        }
        return new String(bArrEncode);
    }

    public static String decode(String str) {
        byte[] bArrDecode;
        if (str == null) {
            return null;
        }
        try {
            bArrDecode = decode(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException unused) {
            bArrDecode = null;
        }
        if (bArrDecode == null) {
            return null;
        }
        return new String(bArrDecode);
    }
}
