package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class l extends AbstractC1606k {
    public static final List c(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        List listA = n.a(objArr);
        kotlin.jvm.internal.j.d(listA, "asList(...)");
        return listA;
    }

    public static byte[] d(byte[] bArr, byte[] destination, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(bArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        System.arraycopy(bArr, i3, destination, i2, i4 - i3);
        return destination;
    }

    public static float[] e(float[] fArr, float[] destination, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(fArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        System.arraycopy(fArr, i3, destination, i2, i4 - i3);
        return destination;
    }

    public static int[] f(int[] iArr, int[] destination, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(iArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        System.arraycopy(iArr, i3, destination, i2, i4 - i3);
        return destination;
    }

    public static long[] g(long[] jArr, long[] destination, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(jArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        System.arraycopy(jArr, i3, destination, i2, i4 - i3);
        return destination;
    }

    public static Object[] h(Object[] objArr, Object[] destination, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        System.arraycopy(objArr, i3, destination, i2, i4 - i3);
        return destination;
    }

    public static /* synthetic */ byte[] i(byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = bArr.length;
        }
        return d(bArr, bArr2, i2, i3, i4);
    }

    public static /* synthetic */ float[] j(float[] fArr, float[] fArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = fArr.length;
        }
        return e(fArr, fArr2, i2, i3, i4);
    }

    public static /* synthetic */ int[] k(int[] iArr, int[] iArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = iArr.length;
        }
        return f(iArr, iArr2, i2, i3, i4);
    }

    public static /* synthetic */ long[] l(long[] jArr, long[] jArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = jArr.length;
        }
        return g(jArr, jArr2, i2, i3, i4);
    }

    public static /* synthetic */ Object[] m(Object[] objArr, Object[] objArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = objArr.length;
        }
        return h(objArr, objArr2, i2, i3, i4);
    }

    public static byte[] n(byte[] bArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(bArr, "<this>");
        AbstractC1605j.b(i3, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2, i3);
        kotlin.jvm.internal.j.d(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] o(Object[] objArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        AbstractC1605j.b(i3, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i2, i3);
        kotlin.jvm.internal.j.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static final void p(int[] iArr, int i2, int i3, int i4) {
        kotlin.jvm.internal.j.e(iArr, "<this>");
        Arrays.fill(iArr, i3, i4, i2);
    }

    public static final void q(long[] jArr, long j2, int i2, int i3) {
        kotlin.jvm.internal.j.e(jArr, "<this>");
        Arrays.fill(jArr, i2, i3, j2);
    }

    public static void r(Object[] objArr, Object obj, int i2, int i3) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        Arrays.fill(objArr, i2, i3, obj);
    }

    public static /* synthetic */ void s(int[] iArr, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i3 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = iArr.length;
        }
        p(iArr, i2, i3, i4);
    }

    public static /* synthetic */ void t(long[] jArr, long j2, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = jArr.length;
        }
        q(jArr, j2, i2, i3);
    }

    public static /* synthetic */ void u(Object[] objArr, Object obj, int i2, int i3, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = objArr.length;
        }
        r(objArr, obj, i2, i3);
    }

    public static void v(float[] fArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(fArr, "<this>");
        Arrays.sort(fArr, i2, i3);
    }

    public static void w(int[] iArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(iArr, "<this>");
        Arrays.sort(iArr, i2, i3);
    }

    public static void x(long[] jArr, int i2, int i3) {
        kotlin.jvm.internal.j.e(jArr, "<this>");
        Arrays.sort(jArr, i2, i3);
    }

    public static final void y(Object[] objArr) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (objArr.length > 1) {
            Arrays.sort(objArr);
        }
    }

    public static final void z(Object[] objArr, Comparator comparator) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        kotlin.jvm.internal.j.e(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }
}
