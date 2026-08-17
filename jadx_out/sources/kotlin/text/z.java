package kotlin.text;

import java.util.Comparator;
import kotlin.collections.AbstractC1599d;

/* loaded from: classes5.dex */
public abstract class z extends y {
    public static final String A(String str, char c2, char c3, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        if (!z2) {
            String strReplace = str.replace(c2, c3);
            kotlin.jvm.internal.j.d(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (AbstractC1623c.d(cCharAt, c2, z2)) {
                cCharAt = c3;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static final String B(String str, String oldValue, String newValue, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(oldValue, "oldValue");
        kotlin.jvm.internal.j.e(newValue, "newValue");
        int i2 = 0;
        int iR = B.R(str, oldValue, 0, z2);
        if (iR < 0) {
            return str;
        }
        int length = oldValue.length();
        int iB = E1.f.b(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i2, iR);
            sb.append(newValue);
            i2 = iR + length;
            if (iR >= str.length()) {
                break;
            }
            iR = B.R(str, oldValue, iR + iB, z2);
        } while (iR > 0);
        sb.append((CharSequence) str, i2, str.length());
        String string = sb.toString();
        kotlin.jvm.internal.j.d(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String C(String str, char c2, char c3, boolean z2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return A(str, c2, c3, z2);
    }

    public static /* synthetic */ String D(String str, String str2, String str3, boolean z2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return B(str, str2, str3, z2);
    }

    public static boolean E(String str, String prefix, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        return !z2 ? str.startsWith(prefix, i2) : x(str, i2, prefix, 0, prefix.length(), z2);
    }

    public static boolean F(String str, String prefix, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        return !z2 ? str.startsWith(prefix) : x(str, 0, prefix, 0, prefix.length(), z2);
    }

    public static /* synthetic */ boolean G(String str, String str2, int i2, boolean z2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return E(str, str2, i2, z2);
    }

    public static /* synthetic */ boolean H(String str, String str2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return F(str, str2, z2);
    }

    public static String q(char[] cArr) {
        kotlin.jvm.internal.j.e(cArr, "<this>");
        return new String(cArr);
    }

    public static String r(char[] cArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(cArr, "<this>");
        AbstractC1599d.Companion.a(i2, i3, cArr.length);
        return new String(cArr, i2, i3 - i2);
    }

    public static String s(byte[] bArr) {
        kotlin.jvm.internal.j.e(bArr, "<this>");
        return new String(bArr, C1624d.f51451b);
    }

    public static boolean t(String str, String suffix, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(suffix, "suffix");
        return !z2 ? str.endsWith(suffix) : x(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean u(String str, String str2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return t(str, str2, z2);
    }

    public static boolean v(String str, String str2, boolean z2) {
        return str == null ? str2 == null : !z2 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static Comparator w(kotlin.jvm.internal.o oVar) {
        kotlin.jvm.internal.j.e(oVar, "<this>");
        Comparator CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        kotlin.jvm.internal.j.d(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static final boolean x(String str, int i2, String other, int i3, int i4, boolean z2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(other, "other");
        return !z2 ? str.regionMatches(i2, other, i3, i4) : str.regionMatches(z2, i2, other, i3, i4);
    }

    public static /* synthetic */ boolean y(String str, int i2, String str2, int i3, int i4, boolean z2, int i5, Object obj) {
        if ((i5 & 16) != 0) {
            z2 = false;
        }
        return x(str, i2, str2, i3, i4, z2);
    }

    public static String z(CharSequence charSequence, int i2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i2 + '.').toString());
        }
        if (i2 == 0) {
            return "";
        }
        int i3 = 1;
        if (i2 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i2);
        if (1 <= i2) {
            while (true) {
                sb.append(charSequence);
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.j.b(string);
        return string;
    }
}
