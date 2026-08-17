package com.smartdigimkt.c5;

import android.text.TextUtils;
import com.umeng.analytics.pro.ek;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f39699a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f39700b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, -1, -1, -1, -1, -1};

    /* renamed from: c, reason: collision with root package name */
    public static String f39701c = "";

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f39702d = new HashMap();

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(c(str));
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : a(str.getBytes());
    }

    public static byte[] c(String str) {
        int i2;
        byte b3;
        int i3;
        byte b4;
        int i4;
        byte b5;
        int i5;
        byte b6;
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        int i6 = 0;
        while (i6 < length) {
            while (true) {
                i2 = i6 + 1;
                b3 = f39700b[bytes[i6]];
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
                b4 = f39700b[bytes[i2]];
                if (i3 >= length || b4 != -1) {
                    break;
                }
                i2 = i3;
            }
            if (b4 == -1) {
                break;
            }
            byteArrayOutputStream.write((b3 << 2) | ((b4 & com.sigmob.sdk.archives.tar.e.f35442H) >>> 4));
            while (true) {
                i4 = i3 + 1;
                byte b7 = bytes[i3];
                if (b7 == 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                b5 = f39700b[b7];
                if (i4 >= length || b5 != -1) {
                    break;
                }
                i3 = i4;
            }
            if (b5 == -1) {
                break;
            }
            byteArrayOutputStream.write(((b4 & ek.f49295m) << 4) | ((b5 & 60) >>> 2));
            while (true) {
                i5 = i4 + 1;
                byte b8 = bytes[i4];
                if (b8 == 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                b6 = f39700b[b8];
                if (i5 >= length || b6 != -1) {
                    break;
                }
                i4 = i5;
            }
            if (b6 == -1) {
                break;
            }
            byteArrayOutputStream.write(b6 | ((b5 & 3) << 6));
            i6 = i5;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String d(String str) {
        String str2 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                char[] charArray = str.toCharArray();
                if (charArray != null && charArray.length > 0) {
                    char[] cArr = new char[charArray.length];
                    for (int i2 = 0; i2 < charArray.length; i2++) {
                        cArr[i2] = a(charArray[i2]).charValue();
                    }
                    str2 = new String(cArr);
                }
                return new String(c(str2));
            }
        } catch (Exception unused) {
        }
        return str2;
    }

    public static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String strA = a(str.getBytes());
        if (TextUtils.isEmpty(f39701c)) {
            f39701c = a("ZE1XbmhiZXlLcjBKSXZMTk94M0JGa0V1bWw5Mlk1ZmpTcUdUN1I4cFpWY2lQSEFzdEM0VVhhNlFEdzFnb3orLw==");
        }
        StringBuilder sb = new StringBuilder();
        for (char cCharAt : strA.toCharArray()) {
            int i2 = 0;
            while (true) {
                char[] cArr = f39699a;
                if (i2 >= 64) {
                    break;
                }
                if (cArr[i2] == cCharAt && i2 < f39701c.length()) {
                    cCharAt = f39701c.charAt(i2);
                    break;
                }
                i2++;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String strA = a(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(strA.length());
            for (char cCharAt : strA.toCharArray()) {
                int i2 = 0;
                while (true) {
                    char[] cArr = f39699a;
                    if (i2 >= 64) {
                        break;
                    }
                    if (cArr[i2] == cCharAt && i2 < 64) {
                        cCharAt = "dMWnhbeyKr0JIvLNOx3BFkEuml92Y5fjSqGT7R8pZVciPHAstC4UXa6QDw1goz+/".charAt(i2);
                        break;
                    }
                    i2++;
                }
                sb.append(cCharAt);
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            int i3 = i2 + 1;
            byte b3 = bArr[i2];
            int i4 = b3 & 255;
            if (i3 == length) {
                char[] cArr = f39699a;
                stringBuffer.append(cArr[i4 >>> 2]);
                stringBuffer.append(cArr[(b3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i5 = i2 + 2;
            byte b4 = bArr[i3];
            if (i5 == length) {
                char[] cArr2 = f39699a;
                stringBuffer.append(cArr2[i4 >>> 2]);
                stringBuffer.append(cArr2[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
                stringBuffer.append(cArr2[(b4 & ek.f49295m) << 2]);
                stringBuffer.append("=");
                break;
            }
            i2 += 3;
            byte b5 = bArr[i5];
            char[] cArr3 = f39699a;
            stringBuffer.append(cArr3[i4 >>> 2]);
            stringBuffer.append(cArr3[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
            stringBuffer.append(cArr3[((b4 & ek.f49295m) << 2) | ((b5 & 192) >>> 6)]);
            stringBuffer.append(cArr3[b5 & 63]);
        }
        return stringBuffer.toString();
    }

    public static synchronized Character a(char c2) {
        String str = null;
        try {
            if (TextUtils.isEmpty(null)) {
                if (TextUtils.isEmpty(f39701c)) {
                    f39701c = a("ZE1XbmhiZXlLcjBKSXZMTk94M0JGa0V1bWw5Mlk1ZmpTcUdUN1I4cFpWY2lQSEFzdEM0VVhhNlFEdzFnb3orLw==");
                }
                str = f39701c;
            }
            HashMap map = (HashMap) f39702d.get(str);
            if (map == null) {
                map = new HashMap();
                if (str.length() >= 64) {
                    int i2 = 0;
                    while (true) {
                        char[] cArr = f39699a;
                        if (i2 >= 64) {
                            break;
                        }
                        map.put(Character.valueOf(str.charAt(i2)), Character.valueOf(cArr[i2]));
                        i2++;
                    }
                    f39702d.put(str, map);
                }
            }
            if (map.containsKey(Character.valueOf(c2))) {
                return (Character) map.get(Character.valueOf(c2));
            }
            return Character.valueOf(c2);
        } catch (Throwable th) {
            throw th;
        }
    }
}
