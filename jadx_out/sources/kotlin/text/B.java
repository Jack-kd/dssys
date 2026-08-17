package kotlin.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public abstract class B extends z {

    public static final class a implements kotlin.sequences.g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CharSequence f51448a;

        public a(CharSequence charSequence) {
            this.f51448a = charSequence;
        }

        @Override // kotlin.sequences.g
        public Iterator iterator() {
            return new h(this.f51448a);
        }
    }

    public static String A0(String str, char c2, String missingDelimiterValue) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(missingDelimiterValue, "missingDelimiterValue");
        int iA0 = a0(str, c2, 0, false, 6, null);
        if (iA0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iA0 + 1, str.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence B0(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z2 = false;
        while (i2 <= length) {
            boolean zC = AbstractC1622b.c(charSequence.charAt(!z2 ? i2 : length));
            if (z2) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i2++;
            } else {
                z2 = true;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static final boolean J(CharSequence charSequence, char c2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return U(charSequence, c2, 0, z2, 2, null) >= 0;
    }

    public static boolean K(CharSequence charSequence, CharSequence other, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(other, "other");
        return other instanceof String ? V(charSequence, (String) other, 0, z2, 2, null) >= 0 : T(charSequence, other, 0, charSequence.length(), z2, false, 16, null) >= 0;
    }

    public static /* synthetic */ boolean L(CharSequence charSequence, char c2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return J(charSequence, c2, z2);
    }

    public static /* synthetic */ boolean M(CharSequence charSequence, CharSequence charSequence2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return K(charSequence, charSequence2, z2);
    }

    public static final boolean N(CharSequence charSequence, CharSequence suffix, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(suffix, "suffix");
        return (!z2 && (charSequence instanceof String) && (suffix instanceof String)) ? z.u((String) charSequence, (String) suffix, false, 2, null) : k0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z2);
    }

    public static /* synthetic */ boolean O(CharSequence charSequence, CharSequence charSequence2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return N(charSequence, charSequence2, z2);
    }

    public static final int P(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int Q(CharSequence charSequence, char c2, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return (z2 || !(charSequence instanceof String)) ? W(charSequence, new char[]{c2}, i2, z2) : ((String) charSequence).indexOf(c2, i2);
    }

    public static final int R(CharSequence charSequence, String string, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(string, "string");
        return (z2 || !(charSequence instanceof String)) ? T(charSequence, string, i2, charSequence.length(), z2, false, 16, null) : ((String) charSequence).indexOf(string, i2);
    }

    public static final int S(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z2, boolean z3) {
        E1.b dVar = !z3 ? new E1.d(E1.f.b(i2, 0), E1.f.d(i3, charSequence.length())) : E1.f.h(E1.f.d(i2, P(charSequence)), E1.f.b(i3, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iA = dVar.a();
            int iB = dVar.b();
            int iD = dVar.d();
            if ((iD <= 0 || iA > iB) && (iD >= 0 || iB > iA)) {
                return -1;
            }
            int i4 = iA;
            while (true) {
                String str = (String) charSequence2;
                boolean z4 = z2;
                if (z.x(str, 0, (String) charSequence, i4, str.length(), z4)) {
                    return i4;
                }
                if (i4 == iB) {
                    return -1;
                }
                i4 += iD;
                z2 = z4;
            }
        } else {
            boolean z5 = z2;
            int iA2 = dVar.a();
            int iB2 = dVar.b();
            int iD2 = dVar.d();
            if ((iD2 <= 0 || iA2 > iB2) && (iD2 >= 0 || iB2 > iA2)) {
                return -1;
            }
            int i5 = iA2;
            while (true) {
                boolean z6 = z5;
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                z5 = z6;
                if (k0(charSequence4, 0, charSequence3, i5, charSequence2.length(), z6)) {
                    return i5;
                }
                if (i5 == iB2) {
                    return -1;
                }
                i5 += iD2;
                charSequence2 = charSequence4;
                charSequence = charSequence3;
            }
        }
    }

    public static /* synthetic */ int T(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z2, boolean z3, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z3 = false;
        }
        return S(charSequence, charSequence2, i2, i3, z2, z3);
    }

    public static /* synthetic */ int U(CharSequence charSequence, char c2, int i2, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return Q(charSequence, c2, i2, z2);
    }

    public static /* synthetic */ int V(CharSequence charSequence, String str, int i2, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return R(charSequence, str, i2, z2);
    }

    public static final int W(CharSequence charSequence, char[] chars, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(chars, "chars");
        if (!z2 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(kotlin.collections.m.S(chars), i2);
        }
        int iB = E1.f.b(i2, 0);
        int iP = P(charSequence);
        if (iB > iP) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iB);
            for (char c2 : chars) {
                if (AbstractC1623c.d(c2, cCharAt, z2)) {
                    return iB;
                }
            }
            if (iB == iP) {
                return -1;
            }
            iB++;
        }
    }

    public static boolean X(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (!AbstractC1622b.c(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static final int Y(CharSequence charSequence, char c2, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return (z2 || !(charSequence instanceof String)) ? c0(charSequence, new char[]{c2}, i2, z2) : ((String) charSequence).lastIndexOf(c2, i2);
    }

    public static final int Z(CharSequence charSequence, String string, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(string, "string");
        return (z2 || !(charSequence instanceof String)) ? S(charSequence, string, i2, 0, z2, true) : ((String) charSequence).lastIndexOf(string, i2);
    }

    public static /* synthetic */ int a0(CharSequence charSequence, char c2, int i2, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = P(charSequence);
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return Y(charSequence, c2, i2, z2);
    }

    public static /* synthetic */ int b0(CharSequence charSequence, String str, int i2, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = P(charSequence);
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return Z(charSequence, str, i2, z2);
    }

    public static final int c0(CharSequence charSequence, char[] chars, int i2, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(chars, "chars");
        if (!z2 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(kotlin.collections.m.S(chars), i2);
        }
        for (int iD = E1.f.d(i2, P(charSequence)); -1 < iD; iD--) {
            char cCharAt = charSequence.charAt(iD);
            for (char c2 : chars) {
                if (AbstractC1623c.d(c2, cCharAt, z2)) {
                    return iD;
                }
            }
        }
        return -1;
    }

    public static final kotlin.sequences.g d0(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return new a(charSequence);
    }

    public static final List e0(CharSequence charSequence) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        return kotlin.sequences.q.C(d0(charSequence));
    }

    public static final CharSequence f0(CharSequence charSequence, int i2, char c2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException("Desired length " + i2 + " is less than zero.");
        }
        if (i2 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i2);
        int length = i2 - charSequence.length();
        int i3 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c2);
                if (i3 == length) {
                    break;
                }
                i3++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static String g0(String str, int i2, char c2) {
        kotlin.jvm.internal.j.e(str, "<this>");
        return f0(str, i2, c2).toString();
    }

    public static final kotlin.sequences.g h0(CharSequence charSequence, final char[] cArr, int i2, final boolean z2, int i3) {
        p0(i3);
        return new e(charSequence, i2, i3, new Function2() { // from class: kotlin.text.A
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return B.j0(cArr, z2, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    public static /* synthetic */ kotlin.sequences.g i0(CharSequence charSequence, char[] cArr, int i2, boolean z2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z2 = false;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return h0(charSequence, cArr, i2, z2, i3);
    }

    public static final Pair j0(char[] cArr, boolean z2, CharSequence DelimitedRangesSequence, int i2) {
        kotlin.jvm.internal.j.e(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        int iW = W(DelimitedRangesSequence, cArr, i2, z2);
        if (iW < 0) {
            return null;
        }
        return kotlin.f.a(Integer.valueOf(iW), 1);
    }

    public static final boolean k0(CharSequence charSequence, int i2, CharSequence other, int i3, int i4, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(other, "other");
        if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > other.length() - i4) {
            return false;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (!AbstractC1623c.d(charSequence.charAt(i2 + i5), other.charAt(i3 + i5), z2)) {
                return false;
            }
        }
        return true;
    }

    public static String l0(String str, CharSequence prefix) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        if (!u0(str, prefix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String m0(String str, CharSequence suffix) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(suffix, "suffix");
        if (!O(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - suffix.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String n0(String str, CharSequence delimiter) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(delimiter, "delimiter");
        return o0(str, delimiter, delimiter);
    }

    public static final String o0(String str, CharSequence prefix, CharSequence suffix) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(suffix, "suffix");
        if (str.length() < prefix.length() + suffix.length() || !u0(str, prefix, false, 2, null) || !O(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length(), str.length() - suffix.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void p0(int i2) {
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2).toString());
    }

    public static final List q0(CharSequence charSequence, char[] delimiters, boolean z2, int i2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return r0(charSequence, String.valueOf(delimiters[0]), z2, i2);
        }
        Iterable iterableM = kotlin.sequences.q.m(i0(charSequence, delimiters, 0, z2, i2, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.r.v(iterableM, 10));
        Iterator it = iterableM.iterator();
        while (it.hasNext()) {
            arrayList.add(v0(charSequence, (E1.d) it.next()));
        }
        return arrayList;
    }

    public static final List r0(CharSequence charSequence, String str, boolean z2, int i2) {
        p0(i2);
        int length = 0;
        int iR = R(charSequence, str, 0, z2);
        if (iR == -1 || i2 == 1) {
            return kotlin.collections.p.e(charSequence.toString());
        }
        boolean z3 = i2 > 0;
        ArrayList arrayList = new ArrayList(z3 ? E1.f.d(i2, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iR).toString());
            length = str.length() + iR;
            if (z3 && arrayList.size() == i2 - 1) {
                break;
            }
            iR = R(charSequence, str, length, z2);
        } while (iR != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ List s0(CharSequence charSequence, char[] cArr, boolean z2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z2 = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return q0(charSequence, cArr, z2, i2);
    }

    public static final boolean t0(CharSequence charSequence, CharSequence prefix, boolean z2) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        return (!z2 && (charSequence instanceof String) && (prefix instanceof String)) ? z.H((String) charSequence, (String) prefix, false, 2, null) : k0(charSequence, 0, prefix, 0, prefix.length(), z2);
    }

    public static /* synthetic */ boolean u0(CharSequence charSequence, CharSequence charSequence2, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return t0(charSequence, charSequence2, z2);
    }

    public static final String v0(CharSequence charSequence, E1.d range) {
        kotlin.jvm.internal.j.e(charSequence, "<this>");
        kotlin.jvm.internal.j.e(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static final String w0(String str, char c2, String missingDelimiterValue) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(missingDelimiterValue, "missingDelimiterValue");
        int iU = U(str, c2, 0, false, 6, null);
        if (iU == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iU + 1, str.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final String x0(String str, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(delimiter, "delimiter");
        kotlin.jvm.internal.j.e(missingDelimiterValue, "missingDelimiterValue");
        int iV = V(str, delimiter, 0, false, 6, null);
        if (iV == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iV + delimiter.length(), str.length());
        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String y0(String str, char c2, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return w0(str, c2, str2);
    }

    public static /* synthetic */ String z0(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return x0(str, str2, str3);
    }
}
