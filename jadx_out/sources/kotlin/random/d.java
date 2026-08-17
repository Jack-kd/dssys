package kotlin.random;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class d {
    public static final String a(Object from, Object until) {
        j.e(from, "from");
        j.e(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void b(double d2, double d3) {
        if (d3 <= d2) {
            throw new IllegalArgumentException(a(Double.valueOf(d2), Double.valueOf(d3)).toString());
        }
    }

    public static final void c(int i2, int i3) {
        if (i3 <= i2) {
            throw new IllegalArgumentException(a(Integer.valueOf(i2), Integer.valueOf(i3)).toString());
        }
    }

    public static final void d(long j2, long j3) {
        if (j3 <= j2) {
            throw new IllegalArgumentException(a(Long.valueOf(j2), Long.valueOf(j3)).toString());
        }
    }

    public static final int e(int i2) {
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    public static final int f(int i2, int i3) {
        return (i2 >>> (32 - i3)) & ((-i3) >> 31);
    }
}
