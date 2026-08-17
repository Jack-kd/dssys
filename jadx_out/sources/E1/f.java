package E1;

import E1.b;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class f extends e {
    public static int b(int i2, int i3) {
        return i2 < i3 ? i3 : i2;
    }

    public static long c(long j2, long j3) {
        return j2 < j3 ? j3 : j2;
    }

    public static int d(int i2, int i3) {
        return i2 > i3 ? i3 : i2;
    }

    public static long e(long j2, long j3) {
        return j2 > j3 ? j3 : j2;
    }

    public static int f(int i2, int i3, int i4) {
        if (i3 <= i4) {
            return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    public static long g(long j2, long j3, long j4) {
        if (j3 <= j4) {
            return j2 < j3 ? j3 : j2 > j4 ? j4 : j2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j4 + " is less than minimum " + j3 + '.');
    }

    public static b h(int i2, int i3) {
        return b.f56e.a(i2, i3, -1);
    }

    public static b i(b bVar, int i2) {
        j.e(bVar, "<this>");
        e.a(i2 > 0, Integer.valueOf(i2));
        b.a aVar = b.f56e;
        int iA = bVar.a();
        int iB = bVar.b();
        if (bVar.d() <= 0) {
            i2 = -i2;
        }
        return aVar.a(iA, iB, i2);
    }

    public static d j(int i2, int i3) {
        return i3 <= Integer.MIN_VALUE ? d.f64f.a() : new d(i2, i3 - 1);
    }
}
