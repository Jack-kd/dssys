package L1;

import L1.e;
import com.bykv.vk.component.ttvideo.player.C;
import com.umeng.analytics.pro.ek;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.Http2Connection;
import org.eclipse.jetty.util.m;

/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f229a = {com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 65, 66, 67, 68, 69, 70};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f230b = {Http2Connection.DEGRADED_PONG_TIMEOUT_NS, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f231c = {C.ENCODING_PCM_MU_LAW, 16777216, 1048576, 65536, 4096, 256, 16, 1};

    /* renamed from: d, reason: collision with root package name */
    public static final long[] f232d = {1000000000000000000L, 100000000000000000L, 10000000000000000L, 1000000000000000L, 100000000000000L, 10000000000000L, 1000000000000L, 100000000000L, RealConnection.IDLE_CONNECTION_HEALTHY_NS, C.NANOS_PER_SECOND, 100000000, 10000000, C.MICROS_PER_SECOND, 100000, 10000, 1000, 100, 10, 1};

    public static boolean a(d dVar, d dVar2) {
        if (dVar.length() > dVar2.length()) {
            return false;
        }
        int index = dVar2.getIndex();
        int index2 = dVar.getIndex();
        while (index2 < dVar.n0()) {
            int i2 = index + 1;
            if (dVar.k0(index2) != dVar2.k0(index)) {
                return false;
            }
            index2++;
            index = i2;
        }
        return true;
    }

    public static void b(d dVar, int i2) {
        boolean z2;
        if (i2 == 0) {
            int index = dVar.getIndex() - 1;
            dVar.c0(index, com.sigmob.sdk.archives.tar.e.f35442H);
            dVar.z0(index);
            return;
        }
        if (i2 < 0) {
            i2 = -i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int index2 = dVar.getIndex();
        while (i2 > 0) {
            int i3 = i2 & 15;
            i2 >>= 4;
            index2--;
            dVar.c0(index2, f229a[i3]);
        }
        if (z2) {
            index2--;
            dVar.c0(index2, (byte) 45);
        }
        dVar.z0(index2);
    }

    public static void c(d dVar) {
        dVar.put(ek.f49293k);
        dVar.put((byte) 10);
    }

    public static void d(d dVar, long j2) {
        if (j2 < 0) {
            dVar.put((byte) 45);
            if (j2 == Long.MIN_VALUE) {
                dVar.put((byte) 57);
                j2 = 223372036854775808L;
            } else {
                j2 = -j2;
            }
        }
        if (j2 < 10) {
            dVar.put(f229a[(int) j2]);
            return;
        }
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            long[] jArr = f232d;
            if (i2 >= jArr.length) {
                return;
            }
            long j3 = jArr[i2];
            if (j2 >= j3) {
                long j4 = j2 / j3;
                dVar.put(f229a[(int) j4]);
                j2 -= j4 * jArr[i2];
                z2 = true;
            } else if (z2) {
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
            }
            i2++;
        }
    }

    public static void e(d dVar, int i2) {
        if (i2 < 0) {
            dVar.put((byte) 45);
            if (i2 == Integer.MIN_VALUE) {
                dVar.put((byte) 56);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
                return;
            }
            i2 = -i2;
        }
        if (i2 < 16) {
            dVar.put(f229a[i2]);
            return;
        }
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            int[] iArr = f231c;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            if (i2 >= i4) {
                int i5 = i2 / i4;
                dVar.put(f229a[i5]);
                i2 -= i5 * iArr[i3];
                z2 = true;
            } else if (z2) {
                dVar.put(com.sigmob.sdk.archives.tar.e.f35442H);
            }
            i3++;
        }
    }

    public static String f(d dVar) {
        return dVar instanceof e.a ? dVar.toString() : dVar.j0(m.f52676d);
    }

    public static d g(long j2) {
        h hVar = new h(32);
        d(hVar, j2);
        return hVar;
    }

    public static int h(d dVar) {
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        for (int index = dVar.getIndex(); index < dVar.n0(); index++) {
            byte bK0 = dVar.k0(index);
            if (bK0 > 32) {
                if (bK0 >= 48 && bK0 <= 57) {
                    i2 = (i2 * 10) + (bK0 - 48);
                    z2 = true;
                } else {
                    if (bK0 != 45 || z2) {
                        break;
                    }
                    z3 = true;
                }
            } else {
                if (z2) {
                    break;
                }
            }
        }
        if (z2) {
            return z3 ? -i2 : i2;
        }
        throw new NumberFormatException(dVar.toString());
    }

    public static long i(d dVar) {
        long j2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        for (int index = dVar.getIndex(); index < dVar.n0(); index++) {
            byte bK0 = dVar.k0(index);
            if (bK0 > 32) {
                if (bK0 >= 48 && bK0 <= 57) {
                    j2 = (j2 * 10) + (bK0 - 48);
                    z2 = true;
                } else {
                    if (bK0 != 45 || z2) {
                        break;
                    }
                    z3 = true;
                }
            } else {
                if (z2) {
                    break;
                }
            }
        }
        if (z2) {
            return z3 ? -j2 : j2;
        }
        throw new NumberFormatException(dVar.toString());
    }
}
