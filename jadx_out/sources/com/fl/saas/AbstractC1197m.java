package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;
import com.umeng.analytics.pro.ek;

/* renamed from: com.fl.saas.m, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1197m {

    /* renamed from: a, reason: collision with root package name */
    private static char[] f30609a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b, reason: collision with root package name */
    private static byte[] f30610b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, -1, -1, -1, -1, -1};

    public static byte[] a(String str) {
        String string;
        int i2;
        byte b3;
        int i3;
        byte b4;
        int i4;
        byte b5;
        int i5;
        byte b6;
        try {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bytes = str.getBytes("US-ASCII");
            int length = bytes.length;
            int i6 = 0;
            loop0: while (i6 < length) {
                while (true) {
                    i2 = i6 + 1;
                    b3 = f30610b[bytes[i6]];
                    if (i2 >= length || b3 != -1) {
                        break;
                    }
                    i6 = i2;
                }
                if (b3 == -1) {
                    break;
                }
                while (true) {
                    i3 = i2 + 1;
                    b4 = f30610b[bytes[i2]];
                    if (i3 >= length || b4 != -1) {
                        break;
                    }
                    i2 = i3;
                }
                if (b4 == -1) {
                    break;
                }
                stringBuffer.append((char) ((b3 << 2) | ((b4 & com.sigmob.sdk.archives.tar.e.f35442H) >>> 4)));
                while (true) {
                    i4 = i3 + 1;
                    byte b7 = bytes[i3];
                    if (b7 != 61) {
                        b5 = f30610b[b7];
                        if (i4 >= length || b5 != -1) {
                            break;
                        }
                        i3 = i4;
                    } else {
                        string = stringBuffer.toString();
                        break loop0;
                    }
                }
                if (b5 == -1) {
                    break;
                }
                stringBuffer.append((char) (((b4 & ek.f49295m) << 4) | ((b5 & 60) >>> 2)));
                while (true) {
                    i5 = i4 + 1;
                    byte b8 = bytes[i4];
                    if (b8 != 61) {
                        b6 = f30610b[b8];
                        if (i5 >= length || b6 != -1) {
                            break;
                        }
                        i4 = i5;
                    } else {
                        string = stringBuffer.toString();
                        break loop0;
                    }
                }
                if (b6 == -1) {
                    break;
                }
                stringBuffer.append((char) (b6 | ((b5 & 3) << 6)));
                i6 = i5;
            }
            string = stringBuffer.toString();
            return string.getBytes("iso8859-1");
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return new byte[0];
        }
    }

    public static byte[] b(String str) {
        try {
            String strReplace = str.replace('-', '+').replace('_', '/');
            int length = strReplace.length() % 4;
            if (length > 0) {
                strReplace = strReplace + "====".substring(length);
            }
            return a(strReplace);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return new byte[0];
        }
    }

    public static String a(byte[] bArr) {
        String str;
        try {
            StringBuffer stringBuffer = new StringBuffer();
            int length = bArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + 1;
                byte b3 = bArr[i2];
                int i4 = b3 & 255;
                if (i3 == length) {
                    stringBuffer.append(f30609a[i4 >>> 2]);
                    stringBuffer.append(f30609a[(b3 & 3) << 4]);
                    str = "==";
                } else {
                    int i5 = i2 + 2;
                    byte b4 = bArr[i3];
                    if (i5 == length) {
                        stringBuffer.append(f30609a[i4 >>> 2]);
                        stringBuffer.append(f30609a[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
                        stringBuffer.append(f30609a[(b4 & ek.f49295m) << 2]);
                        str = "=";
                    } else {
                        i2 += 3;
                        byte b5 = bArr[i5];
                        stringBuffer.append(f30609a[i4 >>> 2]);
                        stringBuffer.append(f30609a[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
                        stringBuffer.append(f30609a[((b4 & ek.f49295m) << 2) | ((b5 & 192) >>> 6)]);
                        stringBuffer.append(f30609a[b5 & 63]);
                    }
                }
                stringBuffer.append(str);
                break;
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }

    public static String b(byte[] bArr) {
        try {
            return a(bArr).replace('+', '-').replace('/', '_').replaceAll("=", "");
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }
}
