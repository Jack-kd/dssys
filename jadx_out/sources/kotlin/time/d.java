package kotlin.time;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class d {
    public static final long h(long j2, int i2) {
        return b.e((j2 << 1) + i2);
    }

    public static final long i(long j2) {
        return b.e((j2 << 1) + 1);
    }

    public static final long j(long j2) {
        return (-4611686018426L > j2 || j2 >= 4611686018427L) ? i(E1.f.g(j2, -4611686018427387903L, 4611686018427387903L)) : k(m(j2));
    }

    public static final long k(long j2) {
        return b.e(j2 << 1);
    }

    public static final long l(long j2) {
        return (-4611686018426999999L > j2 || j2 >= 4611686018427000000L) ? i(n(j2)) : k(j2);
    }

    public static final long m(long j2) {
        return j2 * 1000000;
    }

    public static final long n(long j2) {
        return j2 / 1000000;
    }

    public static final long o(int i2, DurationUnit unit) {
        j.e(unit, "unit");
        return unit.compareTo(DurationUnit.SECONDS) <= 0 ? k(e.b(i2, unit, DurationUnit.NANOSECONDS)) : p(i2, unit);
    }

    public static final long p(long j2, DurationUnit unit) {
        j.e(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long jB = e.b(4611686018426999999L, durationUnit, unit);
        return ((-jB) > j2 || j2 > jB) ? i(E1.f.g(e.a(j2, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L)) : k(e.b(j2, unit, durationUnit));
    }
}
