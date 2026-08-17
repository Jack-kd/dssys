package org.eclipse.jetty.util;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* loaded from: classes5.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final R1.c f52673a = R1.b.a(m.class);

    /* renamed from: b, reason: collision with root package name */
    public static final String f52674b = System.getProperty("line.separator", "\n");

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f52675c = Charset.forName("UTF-8");

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f52676d = Charset.forName("ISO-8859-1");

    /* renamed from: e, reason: collision with root package name */
    public static char[] f52677e = {0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '[', '\\', ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|', '}', '~', 127};

    public static void a(StringBuilder sb, int i2) {
        if (i2 < 100) {
            sb.append((char) ((i2 / 10) + 48));
            sb.append((char) ((i2 % 10) + 48));
        }
    }

    public static String b(String str) {
        int i2;
        char[] charArray;
        char c2;
        int length = str.length();
        while (true) {
            i2 = length - 1;
            if (length <= 0) {
                charArray = null;
                break;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 127 && cCharAt != (c2 = f52677e[cCharAt])) {
                charArray = str.toCharArray();
                charArray[i2] = c2;
                break;
            }
            length = i2;
        }
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            char c3 = charArray[i3];
            if (c3 <= 127) {
                charArray[i3] = f52677e[c3];
            }
            i2 = i3;
        }
        return charArray == null ? str : new String(charArray);
    }

    public static byte[] c(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (Exception e2) {
            f52673a.e(e2);
            return str.getBytes();
        }
    }

    public static boolean d(String str) {
        return "UTF-8".equalsIgnoreCase(str) || "UTF8".equalsIgnoreCase(str);
    }

    public static String e(String str, String str2, String str3) {
        int length = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf == -1) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + str3.length());
        do {
            sb.append(str.substring(length, iIndexOf));
            sb.append(str3);
            length = str2.length() + iIndexOf;
            iIndexOf = str.indexOf(str2, length);
        } while (iIndexOf != -1);
        if (length < str.length()) {
            sb.append(str.substring(length, str.length()));
        }
        return sb.toString();
    }

    public static boolean f(String str, String str2) {
        if (str2 == null) {
            return true;
        }
        if (str == null || str.length() < str2.length()) {
            return false;
        }
        for (int i2 = 0; i2 < str2.length(); i2++) {
            char cCharAt = str.charAt(i2);
            char cCharAt2 = str2.charAt(i2);
            if (cCharAt != cCharAt2) {
                if (cCharAt <= 127) {
                    cCharAt = f52677e[cCharAt];
                }
                if (cCharAt2 <= 127) {
                    cCharAt2 = f52677e[cCharAt2];
                }
                if (cCharAt != cCharAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String g(byte[] bArr, int i2, int i3, String str) {
        try {
            return new String(bArr, i2, i3, str);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static String h(String str) {
        return l.e(str);
    }
}
