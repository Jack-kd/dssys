package org.eclipse.jetty.util;

import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.util.Arrays;
import java.util.StringTokenizer;

/* loaded from: classes5.dex */
public abstract class l extends StringTokenizer {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f52672a;

    static {
        char[] cArr = new char[32];
        f52672a = cArr;
        Arrays.fill(cArr, (char) 65535);
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[12] = 'f';
        cArr[13] = 'r';
    }

    public static boolean a(char c2) {
        return c2 == 'n' || c2 == 'r' || c2 == 't' || c2 == 'f' || c2 == 'b' || c2 == '\\' || c2 == '/' || c2 == '\"' || c2 == 'u';
    }

    public static void b(Appendable appendable, String str) throws IOException {
        try {
            appendable.append('\"');
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt >= ' ') {
                    if (cCharAt == '\"' || cCharAt == '\\') {
                        appendable.append('\\');
                    }
                    appendable.append(cCharAt);
                } else {
                    char c2 = f52672a[cCharAt];
                    if (c2 == 65535) {
                        appendable.append('\\').append('u').append('0').append('0');
                        if (cCharAt < 16) {
                            appendable.append('0');
                        }
                        appendable.append(Integer.toString(cCharAt, 16));
                    } else {
                        appendable.append('\\').append(c2);
                    }
                }
            }
            appendable.append('\"');
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String c(String str, String str2) throws IOException {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\' || cCharAt == '\"' || cCharAt == '\'' || Character.isWhitespace(cCharAt) || str2.indexOf(cCharAt) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
                b(stringBuffer, str);
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static boolean d(Appendable appendable, String str, String str2) throws IOException {
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str2.indexOf(str.charAt(i2)) >= 0) {
                b(appendable, str);
                return true;
            }
        }
        try {
            appendable.append(str);
            return false;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String e(String str) {
        return f(str, false);
    }

    public static String f(String str, boolean z2) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt != '\"' && cCharAt != '\'') {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() - 2);
        boolean z3 = false;
        int i2 = 1;
        while (i2 < str.length() - 1) {
            char cCharAt2 = str.charAt(i2);
            if (z3) {
                if (cCharAt2 == '\"') {
                    sb.append('\"');
                } else if (cCharAt2 == '/') {
                    sb.append('/');
                } else if (cCharAt2 == '\\') {
                    sb.append('\\');
                } else if (cCharAt2 == 'b') {
                    sb.append('\b');
                } else if (cCharAt2 == 'f') {
                    sb.append('\f');
                } else if (cCharAt2 == 'n') {
                    sb.append('\n');
                } else if (cCharAt2 == 'r') {
                    sb.append('\r');
                } else if (cCharAt2 == 't') {
                    sb.append('\t');
                } else if (cCharAt2 != 'u') {
                    if (z2 && !a(cCharAt2)) {
                        sb.append('\\');
                    }
                    sb.append(cCharAt2);
                } else {
                    int i3 = i2 + 3;
                    int iB = (n.b((byte) str.charAt(i2)) << 24) + (n.b((byte) str.charAt(i2 + 1)) << ek.f49296n) + (n.b((byte) str.charAt(i2 + 2)) << 8);
                    i2 += 4;
                    sb.append((char) (iB + n.b((byte) str.charAt(i3))));
                }
                z3 = false;
            } else if (cCharAt2 == '\\') {
                z3 = true;
            } else {
                sb.append(cCharAt2);
            }
            i2++;
        }
        return sb.toString();
    }
}
