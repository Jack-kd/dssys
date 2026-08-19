package kotlin.time;

import androidx.core.location.LocationRequestCompat;
import kotlin.jvm.internal.j;
import kotlin.text.B;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes5.dex */
public abstract class b implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public static final a f51490b = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public static final long f51491c = e(0);

    /* renamed from: d, reason: collision with root package name */
    public static final long f51492d = d.i(4611686018427387903L);

    /* renamed from: e, reason: collision with root package name */
    public static final long f51493e = d.i(-4611686018427387903L);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final long a() {
            return b.f51491c;
        }

        public a() {
        }
    }

    public static final long A(long j2) {
        return d.h(-q(j2), ((int) j2) & 1);
    }

    public static final long b(long j2, long j3, long j4) {
        long jN = d.n(j4);
        long j5 = j3 + jN;
        if (-4611686018426L > j5 || j5 >= 4611686018427L) {
            return d.i(E1.f.g(j5, -4611686018427387903L, 4611686018427387903L));
        }
        return d.k(d.m(j5) + (j4 - d.m(jN)));
    }

    public static final void c(long j2, StringBuilder sb, int i2, int i3, int i4, String str, boolean z2) {
        sb.append(i2);
        if (i3 != 0) {
            sb.append('.');
            String strG0 = B.g0(String.valueOf(i3), i4, '0');
            int i5 = -1;
            int length = strG0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i6 = length - 1;
                    if (strG0.charAt(length) != '0') {
                        i5 = length;
                        break;
                    } else if (i6 < 0) {
                        break;
                    } else {
                        length = i6;
                    }
                }
            }
            int i7 = i5 + 1;
            if (z2 || i7 >= 3) {
                sb.append((CharSequence) strG0, 0, ((i5 + 3) / 3) * 3);
                j.d(sb, "append(...)");
            } else {
                sb.append((CharSequence) strG0, 0, i7);
                j.d(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    public static int d(long j2, long j3) {
        long j4 = j2 ^ j3;
        if (j4 < 0 || (((int) j4) & 1) == 0) {
            return j.h(j2, j3);
        }
        int i2 = (((int) j2) & 1) - (((int) j3) & 1);
        return v(j2) ? -i2 : i2;
    }

    public static long e(long j2) {
        if (!c.a()) {
            return j2;
        }
        if (t(j2)) {
            long jQ = q(j2);
            if (-4611686018426999999L <= jQ && jQ < 4611686018427000000L) {
                return j2;
            }
            throw new AssertionError(q(j2) + " ns is out of nanoseconds range");
        }
        long jQ2 = q(j2);
        if (-4611686018427387903L > jQ2 || jQ2 >= 4611686018427387904L) {
            throw new AssertionError(q(j2) + " ms is out of milliseconds range");
        }
        long jQ3 = q(j2);
        if (-4611686018426L > jQ3 || jQ3 >= 4611686018427L) {
            return j2;
        }
        throw new AssertionError(q(j2) + " ms is denormalized");
    }

    public static final long f(long j2) {
        return v(j2) ? A(j2) : j2;
    }

    public static final int g(long j2) {
        if (u(j2)) {
            return 0;
        }
        return (int) (i(j2) % 24);
    }

    public static final long h(long j2) {
        return y(j2, DurationUnit.DAYS);
    }

    public static final long i(long j2) {
        return y(j2, DurationUnit.HOURS);
    }

    public static final long j(long j2) {
        return (s(j2) && r(j2)) ? q(j2) : y(j2, DurationUnit.MILLISECONDS);
    }

    public static final long k(long j2) {
        return y(j2, DurationUnit.MINUTES);
    }

    public static final long l(long j2) {
        return y(j2, DurationUnit.SECONDS);
    }

    public static final int m(long j2) {
        if (u(j2)) {
            return 0;
        }
        return (int) (k(j2) % 60);
    }

    public static final int n(long j2) {
        if (u(j2)) {
            return 0;
        }
        return (int) (s(j2) ? d.m(q(j2) % 1000) : q(j2) % Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
    }

    public static final int o(long j2) {
        if (u(j2)) {
            return 0;
        }
        return (int) (l(j2) % 60);
    }

    public static final DurationUnit p(long j2) {
        return t(j2) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    public static final long q(long j2) {
        return j2 >> 1;
    }

    public static final boolean r(long j2) {
        return !u(j2);
    }

    public static final boolean s(long j2) {
        return (((int) j2) & 1) == 1;
    }

    public static final boolean t(long j2) {
        return (((int) j2) & 1) == 0;
    }

    public static final boolean u(long j2) {
        return j2 == f51492d || j2 == f51493e;
    }

    public static final boolean v(long j2) {
        return j2 < 0;
    }

    public static final boolean w(long j2) {
        return j2 > 0;
    }

    public static final long x(long j2, long j3) {
        if (u(j2)) {
            if (r(j3) || (j3 ^ j2) >= 0) {
                return j2;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (u(j3)) {
            return j3;
        }
        if ((((int) j2) & 1) != (((int) j3) & 1)) {
            return s(j2) ? b(j2, q(j2), q(j3)) : b(j2, q(j3), q(j2));
        }
        long jQ = q(j2) + q(j3);
        return t(j2) ? d.l(jQ) : d.j(jQ);
    }

    public static final long y(long j2, DurationUnit unit) {
        j.e(unit, "unit");
        if (j2 == f51492d) {
            return LocationRequestCompat.PASSIVE_INTERVAL;
        }
        if (j2 == f51493e) {
            return Long.MIN_VALUE;
        }
        return e.a(q(j2), p(j2), unit);
    }

    public static String z(long j2) {
        if (j2 == 0) {
            return "0s";
        }
        if (j2 == f51492d) {
            return "Infinity";
        }
        if (j2 == f51493e) {
            return "-Infinity";
        }
        boolean zV = v(j2);
        StringBuilder sb = new StringBuilder();
        if (zV) {
            sb.append('-');
        }
        long jF = f(j2);
        long jH = h(jF);
        int iG = g(jF);
        int iM = m(jF);
        int iO = o(jF);
        int iN = n(jF);
        int i2 = 0;
        boolean z2 = jH != 0;
        boolean z3 = iG != 0;
        boolean z4 = iM != 0;
        boolean z5 = (iO == 0 && iN == 0) ? false : true;
        if (z2) {
            sb.append(jH);
            sb.append('d');
            i2 = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i3 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iG);
            sb.append('h');
            i2 = i3;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i4 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iM);
            sb.append('m');
            i2 = i4;
        }
        if (z5) {
            int i5 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            if (iO != 0 || z2 || z3 || z4) {
                c(j2, sb, iO, iN, 9, "s", false);
            } else if (iN >= 1000000) {
                c(j2, sb, iN / 1000000, iN % 1000000, 6, "ms", false);
            } else if (iN >= 1000) {
                c(j2, sb, iN / 1000, iN % 1000, 3, "us", false);
            } else {
                sb.append(iN);
                sb.append("ns");
            }
            i2 = i5;
        }
        if (zV && i2 > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }
}
