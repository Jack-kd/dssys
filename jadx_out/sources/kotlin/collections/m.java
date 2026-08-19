package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class m extends l {
    public static boolean A(Object[] objArr, Object obj) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return I(objArr, obj) >= 0;
    }

    public static List B(Object[] objArr, int i2) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (i2 >= 0) {
            return X(objArr, E1.f.b(objArr.length - i2, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
    }

    public static List C(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return (List) D(objArr, new ArrayList());
    }

    public static final Collection D(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static Object E(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static E1.d F(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return new E1.d(0, G(objArr));
    }

    public static int G(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return objArr.length - 1;
    }

    public static Object H(Object[] objArr, int i2) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (i2 < 0 || i2 >= objArr.length) {
            return null;
        }
        return objArr[i2];
    }

    public static int I(Object[] objArr, Object obj) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        int i2 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i2 < length) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i2 < length2) {
            if (kotlin.jvm.internal.j.a(obj, objArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final Appendable J(byte[] bArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) throws IOException {
        kotlin.jvm.internal.j.e(bArr, "<this>");
        kotlin.jvm.internal.j.e(buffer, "buffer");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        buffer.append(prefix);
        int i3 = 0;
        for (byte b3 : bArr) {
            i3++;
            if (i3 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            if (function1 != null) {
                buffer.append((CharSequence) function1.invoke(Byte.valueOf(b3)));
            } else {
                buffer.append(String.valueOf((int) b3));
            }
        }
        if (i2 >= 0 && i3 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final Appendable K(Object[] objArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) throws IOException {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(buffer, "buffer");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        buffer.append(prefix);
        int i3 = 0;
        for (Object obj : objArr) {
            i3++;
            if (i3 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            kotlin.text.p.a(buffer, obj, function1);
        }
        if (i2 >= 0 && i3 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String L(byte[] bArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) {
        kotlin.jvm.internal.j.e(bArr, "<this>");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        return ((StringBuilder) J(bArr, new StringBuilder(), separator, prefix, postfix, i2, truncated, function1)).toString();
    }

    public static final String M(Object[] objArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        return ((StringBuilder) K(objArr, new StringBuilder(), separator, prefix, postfix, i2, truncated, function1)).toString();
    }

    public static /* synthetic */ String N(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i3 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i3 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i3 & 32) != 0) {
            function1 = null;
        }
        CharSequence charSequence5 = charSequence4;
        Function1 function12 = function1;
        return L(bArr, charSequence, charSequence2, charSequence3, i2, charSequence5, function12);
    }

    public static /* synthetic */ String O(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i3 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i3 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i3 & 32) != 0) {
            function1 = null;
        }
        CharSequence charSequence5 = charSequence4;
        Function1 function12 = function1;
        return M(objArr, charSequence, charSequence2, charSequence3, i2, charSequence5, function12);
    }

    public static final void P(float[] fArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(fArr, "<this>");
        AbstractC1599d.Companion.d(i2, i3, fArr.length);
        int i4 = (i2 + i3) / 2;
        if (i2 == i4) {
            return;
        }
        int i5 = i3 - 1;
        while (i2 < i4) {
            float f2 = fArr[i2];
            fArr[i2] = fArr[i5];
            fArr[i5] = f2;
            i5--;
            i2++;
        }
    }

    public static final void Q(int[] iArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(iArr, "<this>");
        AbstractC1599d.Companion.d(i2, i3, iArr.length);
        int i4 = (i2 + i3) / 2;
        if (i2 == i4) {
            return;
        }
        int i5 = i3 - 1;
        while (i2 < i4) {
            int i6 = iArr[i2];
            iArr[i2] = iArr[i5];
            iArr[i5] = i6;
            i5--;
            i2++;
        }
    }

    public static final void R(long[] jArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(jArr, "<this>");
        AbstractC1599d.Companion.d(i2, i3, jArr.length);
        int i4 = (i2 + i3) / 2;
        if (i2 == i4) {
            return;
        }
        int i5 = i3 - 1;
        while (i2 < i4) {
            long j2 = jArr[i2];
            jArr[i2] = jArr[i5];
            jArr[i5] = j2;
            i5--;
            i2++;
        }
    }

    public static char S(char[] cArr) {
        kotlin.jvm.internal.j.e(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static Object T(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static void U(float[] fArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(fArr, "<this>");
        l.v(fArr, i2, i3);
        P(fArr, i2, i3);
    }

    public static void V(int[] iArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(iArr, "<this>");
        l.w(iArr, i2, i3);
        Q(iArr, i2, i3);
    }

    public static void W(long[] jArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(jArr, "<this>");
        l.x(jArr, i2, i3);
        R(jArr, i2, i3);
    }

    public static final List X(Object[] objArr, int i2) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
        }
        if (i2 == 0) {
            return q.l();
        }
        int length = objArr.length;
        if (i2 >= length) {
            return Z(objArr);
        }
        if (i2 == 1) {
            return p.e(objArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = length - i2; i3 < length; i3++) {
            arrayList.add(objArr[i3]);
        }
        return arrayList;
    }

    public static final Collection Y(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        for (Object obj : objArr) {
            destination.add(obj);
        }
        return destination;
    }

    public static List Z(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        int length = objArr.length;
        return length != 0 ? length != 1 ? a0(objArr) : p.e(objArr[0]) : q.l();
    }

    public static List a0(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return new ArrayList(q.i(objArr, false, 1, null));
    }

    public static final Set b0(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        int length = objArr.length;
        return length != 0 ? length != 1 ? (Set) Y(objArr, new LinkedHashSet(F.e(objArr.length))) : I.d(objArr[0]) : J.e();
    }
}
