package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class s extends p {
    public static final Function1 d(final String str) {
        return str.length() == 0 ? new Function1() { // from class: kotlin.text.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return s.e((String) obj);
            }
        } : new Function1() { // from class: kotlin.text.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return s.f(str, (String) obj);
            }
        };
    }

    public static final String e(String line) {
        kotlin.jvm.internal.j.e(line, "line");
        return line;
    }

    public static final String f(String str, String line) {
        kotlin.jvm.internal.j.e(line, "line");
        return str + line;
    }

    public static final int g(String str) {
        int length = str.length();
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            }
            if (!AbstractC1622b.c(str.charAt(i2))) {
                break;
            }
            i2++;
        }
        return i2 == -1 ? str.length() : i2;
    }

    public static final String h(String str, String newIndent) {
        String str2;
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(newIndent, "newIndent");
        List listE0 = B.e0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listE0) {
            if (!B.X((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.r.v(arrayList, 10));
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList.get(i3);
            i3++;
            arrayList2.add(Integer.valueOf(g((String) obj2)));
        }
        Integer num = (Integer) kotlin.collections.y.S(arrayList2);
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (newIndent.length() * listE0.size());
        Function1 function1D = d(newIndent);
        int iN = kotlin.collections.q.n(listE0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : listE0) {
            int i4 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.q.u();
            }
            String str3 = (String) obj3;
            if ((i2 == 0 || i2 == iN) && B.X(str3)) {
                str3 = null;
            } else {
                String strC0 = D.C0(str3, iIntValue);
                if (strC0 != null && (str2 = (String) function1D.invoke(strC0)) != null) {
                    str3 = str2;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i2 = i4;
        }
        return ((StringBuilder) kotlin.collections.y.N(arrayList3, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
    }

    public static final String i(String str, String newIndent, String marginPrefix) {
        String str2;
        String str3;
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(newIndent, "newIndent");
        kotlin.jvm.internal.j.e(marginPrefix, "marginPrefix");
        if (B.X(marginPrefix)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List listE0 = B.e0(str);
        int length = str.length() + (newIndent.length() * listE0.size());
        Function1 function1D = d(newIndent);
        int iN = kotlin.collections.q.n(listE0);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : listE0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.q.u();
            }
            String str4 = (String) obj;
            String strSubstring = null;
            if ((i2 == 0 || i2 == iN) && B.X(str4)) {
                str2 = marginPrefix;
                str4 = null;
            } else {
                int length2 = str4.length();
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        i4 = -1;
                        break;
                    }
                    if (!AbstractC1622b.c(str4.charAt(i4))) {
                        break;
                    }
                    i4++;
                }
                if (i4 == -1) {
                    str2 = marginPrefix;
                } else {
                    int i5 = i4;
                    str2 = marginPrefix;
                    if (z.G(str4, str2, i5, false, 4, null)) {
                        int length3 = str2.length() + i5;
                        kotlin.jvm.internal.j.c(str4, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str4.substring(length3);
                        kotlin.jvm.internal.j.d(strSubstring, "substring(...)");
                    }
                }
                if (strSubstring != null && (str3 = (String) function1D.invoke(strSubstring)) != null) {
                    str4 = str3;
                }
            }
            if (str4 != null) {
                arrayList.add(str4);
            }
            i2 = i3;
            marginPrefix = str2;
        }
        return ((StringBuilder) kotlin.collections.y.N(arrayList, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
    }

    public static String j(String str) {
        kotlin.jvm.internal.j.e(str, "<this>");
        return h(str, "");
    }

    public static final String k(String str, String marginPrefix) {
        kotlin.jvm.internal.j.e(str, "<this>");
        kotlin.jvm.internal.j.e(marginPrefix, "marginPrefix");
        return i(str, "", marginPrefix);
    }

    public static /* synthetic */ String l(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "|";
        }
        return k(str, str2);
    }
}
