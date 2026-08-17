package com.anythink.core.common.v;

import android.text.TextUtils;
import com.umeng.analytics.pro.ek;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8180a = "czZQYTNDVjhJUWZMTmNPWUR4aWVXKzFuRzRGRW1iNS8yTVhKd2g3UlNvenZyQXFCWlVqOXlIbGcwa3VwS2R0VA==";

    /* renamed from: c, reason: collision with root package name */
    public static final String f8182c = "+3MtanYVQs8GK7W/rSpiz9FCBUEDdbqxmhgcIRH4loTvuZw20XfO51JPN6jeLkyA";

    /* renamed from: d, reason: collision with root package name */
    private static final String f8183d = "j";

    /* renamed from: g, reason: collision with root package name */
    private static final String f8186g = "ZE1XbmhiZXlLcjBKSXZMTk94M0JGa0V1bWw5Mlk1ZmpTcUdUN1I4cFpWY2lQSEFzdEM0VVhhNlFEdzFnb3orLw==";

    /* renamed from: e, reason: collision with root package name */
    private static final char[] f8184e = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f8185f = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, -1, -1, -1, -1, -1};

    /* renamed from: h, reason: collision with root package name */
    private static String f8187h = "";

    /* renamed from: b, reason: collision with root package name */
    static HashMap<String, HashMap<Character, Character>> f8181b = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static Map<Character, Character> f8188i = null;

    /* renamed from: j, reason: collision with root package name */
    private static String f8189j = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    private j() {
    }

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : a(str.getBytes());
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(e(str));
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String strA = a(str.getBytes());
        if (TextUtils.isEmpty(f8187h)) {
            f8187h = b(f8186g);
        }
        StringBuilder sb = new StringBuilder();
        for (char cCharAt : strA.toCharArray()) {
            int i2 = 0;
            while (true) {
                char[] cArr = f8184e;
                if (i2 >= cArr.length) {
                    break;
                }
                if (cArr[i2] == cCharAt && i2 < f8187h.length()) {
                    cCharAt = f8187h.charAt(i2);
                    break;
                }
                i2++;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String d(String str) {
        char[] charArray;
        try {
            if (TextUtils.isEmpty(str) || (charArray = a(str.getBytes()).toCharArray()) == null || charArray.length <= 0) {
                return "";
            }
            char[] cArr = new char[charArray.length];
            for (int i2 = 0; i2 < charArray.length; i2++) {
                char c2 = charArray[i2];
                if (f8188i == null) {
                    f8188i = new HashMap();
                    for (int i3 = 0; i3 < f8189j.length(); i3++) {
                        f8188i.put(Character.valueOf(f8189j.charAt(i3)), Character.valueOf(f8182c.charAt(i3)));
                    }
                }
                cArr[i2] = (f8188i.containsKey(Character.valueOf(c2)) ? f8188i.get(Character.valueOf(c2)) : Character.valueOf(c2)).charValue();
            }
            return new String(cArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
    
        if (r2 == (-1)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0078, code lost:
    
        r1.write(r2 | ((r5 & 3) << 6));
        r2 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] e(java.lang.String r8) {
        /*
            byte[] r8 = r8.getBytes()
            int r0 = r8.length
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>(r0)
            r2 = 0
        Lb:
            if (r2 >= r0) goto L82
        Ld:
            byte[] r3 = com.anythink.core.common.v.j.f8185f
            int r4 = r2 + 1
            r2 = r8[r2]
            r2 = r3[r2]
            r3 = -1
            if (r4 >= r0) goto L1d
            if (r2 == r3) goto L1b
            goto L1d
        L1b:
            r2 = r4
            goto Ld
        L1d:
            if (r2 == r3) goto L82
        L1f:
            byte[] r5 = com.anythink.core.common.v.j.f8185f
            int r6 = r4 + 1
            r4 = r8[r4]
            r4 = r5[r4]
            if (r6 >= r0) goto L2e
            if (r4 == r3) goto L2c
            goto L2e
        L2c:
            r4 = r6
            goto L1f
        L2e:
            if (r4 == r3) goto L82
            int r2 = r2 << 2
            r5 = r4 & 48
            int r5 = r5 >>> 4
            r2 = r2 | r5
            r1.write(r2)
        L3a:
            int r2 = r6 + 1
            r5 = r8[r6]
            r6 = 61
            if (r5 != r6) goto L47
            byte[] r8 = r1.toByteArray()
            return r8
        L47:
            byte[] r7 = com.anythink.core.common.v.j.f8185f
            r5 = r7[r5]
            if (r2 >= r0) goto L52
            if (r5 == r3) goto L50
            goto L52
        L50:
            r6 = r2
            goto L3a
        L52:
            if (r5 == r3) goto L82
            r4 = r4 & 15
            int r4 = r4 << 4
            r7 = r5 & 60
            int r7 = r7 >>> 2
            r4 = r4 | r7
            r1.write(r4)
        L60:
            int r4 = r2 + 1
            r2 = r8[r2]
            if (r2 != r6) goto L6b
            byte[] r8 = r1.toByteArray()
            return r8
        L6b:
            byte[] r7 = com.anythink.core.common.v.j.f8185f
            r2 = r7[r2]
            if (r4 >= r0) goto L76
            if (r2 == r3) goto L74
            goto L76
        L74:
            r2 = r4
            goto L60
        L76:
            if (r2 == r3) goto L82
            r3 = r5 & 3
            int r3 = r3 << 6
            r2 = r2 | r3
            r1.write(r2)
            r2 = r4
            goto Lb
        L82:
            byte[] r8 = r1.toByteArray()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.j.e(java.lang.String):byte[]");
    }

    private static String f(String str) {
        return a(str, (String) null);
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
                char[] cArr = f8184e;
                stringBuffer.append(cArr[i4 >>> 2]);
                stringBuffer.append(cArr[(b3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i5 = i2 + 2;
            byte b4 = bArr[i3];
            if (i5 == length) {
                char[] cArr2 = f8184e;
                stringBuffer.append(cArr2[i4 >>> 2]);
                stringBuffer.append(cArr2[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
                stringBuffer.append(cArr2[(b4 & ek.f49295m) << 2]);
                stringBuffer.append("=");
                break;
            }
            i2 += 3;
            byte b5 = bArr[i5];
            char[] cArr3 = f8184e;
            stringBuffer.append(cArr3[i4 >>> 2]);
            stringBuffer.append(cArr3[((b3 & 3) << 4) | ((b4 & 240) >>> 4)]);
            stringBuffer.append(cArr3[((b4 & ek.f49295m) << 2) | ((b5 & 192) >>> 6)]);
            stringBuffer.append(cArr3[b5 & 63]);
        }
        return stringBuffer.toString();
    }

    private static synchronized Character a(char c2, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(f8187h)) {
                    f8187h = b(f8186g);
                }
                str = f8187h;
            }
            HashMap<Character, Character> map = f8181b.get(str);
            if (map == null) {
                map = new HashMap<>();
                if (str.length() >= f8184e.length) {
                    int i2 = 0;
                    while (true) {
                        char[] cArr = f8184e;
                        if (i2 >= cArr.length) {
                            break;
                        }
                        map.put(Character.valueOf(str.charAt(i2)), Character.valueOf(cArr[i2]));
                        i2++;
                    }
                    f8181b.put(str, map);
                }
            }
            if (map.containsKey(Character.valueOf(c2))) {
                return map.get(Character.valueOf(c2));
            }
            return Character.valueOf(c2);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String a(String str, String str2) {
        String str3 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                char[] charArray = str.toCharArray();
                if (charArray != null && charArray.length > 0) {
                    char[] cArr = new char[charArray.length];
                    for (int i2 = 0; i2 < charArray.length; i2++) {
                        cArr[i2] = a(charArray[i2], str2).charValue();
                    }
                    str3 = new String(cArr);
                }
                return new String(e(str3));
            }
        } catch (Exception unused) {
        }
        return str3;
    }

    private static Character a(char c2) {
        if (f8188i == null) {
            f8188i = new HashMap();
            for (int i2 = 0; i2 < f8189j.length(); i2++) {
                f8188i.put(Character.valueOf(f8189j.charAt(i2)), Character.valueOf(f8182c.charAt(i2)));
            }
        }
        if (f8188i.containsKey(Character.valueOf(c2))) {
            return f8188i.get(Character.valueOf(c2));
        }
        return Character.valueOf(c2);
    }
}
