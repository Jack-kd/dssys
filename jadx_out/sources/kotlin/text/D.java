package kotlin.text;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public abstract class D extends C {
    public static final String C0(String str, int i2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        if (i2 >= 0) {
            String strSubstring = str.substring(E1.f.d(i2, str.length()));
            kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i2 + " is less than zero.").toString());
    }

    public static String D0(String str, int i2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        if (i2 >= 0) {
            return F0(str, E1.f.b(str.length() - i2, 0));
        }
        throw new IllegalArgumentException(("Requested character count " + i2 + " is less than zero.").toString());
    }

    public static char E0(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(B.P(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static String F0(String str, int i2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        if (i2 >= 0) {
            String strSubstring = str.substring(0, E1.f.d(i2, str.length()));
            kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i2 + " is less than zero.").toString());
    }
}
