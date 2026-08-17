package com.smartdigimkt.w0;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.location.LocationRequestCompat;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class i implements l, com.smartdigimkt.o0.e, com.smartdigimkt.z0.v, com.smartdigimkt.z0.x, d0 {

    /* renamed from: B, reason: collision with root package name */
    public boolean[] f44789B;

    /* renamed from: C, reason: collision with root package name */
    public boolean[] f44790C;

    /* renamed from: D, reason: collision with root package name */
    public boolean[] f44791D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f44792E;

    /* renamed from: G, reason: collision with root package name */
    public long f44794G;

    /* renamed from: I, reason: collision with root package name */
    public boolean f44796I;

    /* renamed from: J, reason: collision with root package name */
    public int f44797J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f44798K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f44799L;

    /* renamed from: a, reason: collision with root package name */
    public final Uri f44800a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.z0.i f44801b;

    /* renamed from: c, reason: collision with root package name */
    public final int f44802c;

    /* renamed from: d, reason: collision with root package name */
    public final x f44803d;

    /* renamed from: e, reason: collision with root package name */
    public final j f44804e;

    /* renamed from: f, reason: collision with root package name */
    public final com.smartdigimkt.z0.b f44805f;

    /* renamed from: g, reason: collision with root package name */
    public final String f44806g;

    /* renamed from: h, reason: collision with root package name */
    public final long f44807h;

    /* renamed from: j, reason: collision with root package name */
    public final g f44809j;

    /* renamed from: o, reason: collision with root package name */
    public k f44814o;

    /* renamed from: p, reason: collision with root package name */
    public com.smartdigimkt.o0.k f44815p;

    /* renamed from: s, reason: collision with root package name */
    public boolean f44818s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f44819t;

    /* renamed from: u, reason: collision with root package name */
    public int f44820u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f44821v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f44822w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f44823x;

    /* renamed from: y, reason: collision with root package name */
    public int f44824y;

    /* renamed from: z, reason: collision with root package name */
    public k0 f44825z;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.z0.a0 f44808i = new com.smartdigimkt.z0.a0();

    /* renamed from: k, reason: collision with root package name */
    public final com.smartdigimkt.a1.d f44810k = new com.smartdigimkt.a1.d();

    /* renamed from: l, reason: collision with root package name */
    public final d f44811l = new d(this);

    /* renamed from: m, reason: collision with root package name */
    public final e f44812m = new e(this);

    /* renamed from: n, reason: collision with root package name */
    public final Handler f44813n = new Handler();

    /* renamed from: r, reason: collision with root package name */
    public int[] f44817r = new int[0];

    /* renamed from: q, reason: collision with root package name */
    public e0[] f44816q = new e0[0];

    /* renamed from: H, reason: collision with root package name */
    public long f44795H = -9223372036854775807L;

    /* renamed from: F, reason: collision with root package name */
    public long f44793F = -1;

    /* renamed from: A, reason: collision with root package name */
    public long f44788A = -9223372036854775807L;

    public i(Uri uri, com.smartdigimkt.z0.i iVar, com.smartdigimkt.o0.d[] dVarArr, int i2, x xVar, j jVar, com.smartdigimkt.z0.l lVar, String str, int i3) {
        this.f44800a = uri;
        this.f44801b = iVar;
        this.f44802c = i2;
        this.f44803d = xVar;
        this.f44804e = jVar;
        this.f44805f = lVar;
        this.f44806g = str;
        this.f44807h = i3;
        this.f44809j = new g(dVarArr, this);
        this.f44820u = i2 == -1 ? 3 : i2;
        if (xVar.f44870b == null) {
            throw new IllegalStateException();
        }
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            x.a(wVar.f44867a, new o(xVar, wVar.f44868b));
        }
    }

    @Override // com.smartdigimkt.w0.l
    public final void a(k kVar, long j2) {
        this.f44814o = kVar;
        com.smartdigimkt.a1.d dVar = this.f44810k;
        synchronized (dVar) {
            if (!dVar.f39268a) {
                dVar.f39268a = true;
                dVar.notifyAll();
            }
        }
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r13) {
        /*
            r12 = this;
            com.smartdigimkt.w0.e0[] r0 = r12.f44816q
            int r0 = r0.length
            r1 = 0
        L4:
            if (r1 >= r0) goto L4d
            com.smartdigimkt.w0.e0[] r2 = r12.f44816q
            r2 = r2[r1]
            boolean[] r3 = r12.f44789B
            boolean r3 = r3[r1]
            com.smartdigimkt.w0.b0 r4 = r2.f44759c
            monitor-enter(r4)
            int r5 = r4.f44741i     // Catch: java.lang.Throwable -> L2e
            r10 = -1
            if (r5 == 0) goto L22
            long[] r6 = r4.f44738f     // Catch: java.lang.Throwable -> L2e
            r7 = r5
            int r5 = r4.f44743k     // Catch: java.lang.Throwable -> L2e
            r8 = r6[r5]     // Catch: java.lang.Throwable -> L2e
            int r6 = (r13 > r8 ? 1 : (r13 == r8 ? 0 : -1))
            if (r6 >= 0) goto L24
        L22:
            r7 = r13
            goto L43
        L24:
            if (r3 == 0) goto L31
            int r3 = r4.f44744l     // Catch: java.lang.Throwable -> L2e
            if (r3 == r7) goto L31
            int r3 = r3 + 1
            r6 = r3
            goto L32
        L2e:
            r0 = move-exception
            r13 = r0
            goto L4b
        L31:
            r6 = r7
        L32:
            r9 = 0
            r7 = r13
            int r13 = r4.a(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L2e
            r14 = -1
            if (r13 != r14) goto L3d
            monitor-exit(r4)
            goto L44
        L3d:
            long r10 = r4.a(r13)     // Catch: java.lang.Throwable -> L2e
            monitor-exit(r4)
            goto L44
        L43:
            monitor-exit(r4)
        L44:
            r2.a(r10)
            int r1 = r1 + 1
            r13 = r7
            goto L4
        L4b:
            monitor-exit(r4)
            throw r13
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.i.b(long):void");
    }

    @Override // com.smartdigimkt.w0.l
    public final boolean c(long j2) {
        boolean z2 = false;
        if (this.f44798K || this.f44796I || (this.f44819t && this.f44824y == 0)) {
            return false;
        }
        com.smartdigimkt.a1.d dVar = this.f44810k;
        synchronized (dVar) {
            if (!dVar.f39268a) {
                dVar.f39268a = true;
                dVar.notifyAll();
                z2 = true;
            }
        }
        if (this.f44808i.f45352b != null) {
            return z2;
        }
        g();
        return true;
    }

    @Override // com.smartdigimkt.w0.l
    public final void d(long j2) {
    }

    @Override // com.smartdigimkt.w0.l
    public final void e() throws IOException {
        com.smartdigimkt.z0.a0 a0Var = this.f44808i;
        int i2 = this.f44820u;
        IOException iOException = a0Var.f45353c;
        if (iOException != null) {
            throw iOException;
        }
        com.smartdigimkt.z0.w wVar = a0Var.f45352b;
        if (wVar != null) {
            if (i2 == Integer.MIN_VALUE) {
                i2 = wVar.f45419a;
            }
            IOException iOException2 = wVar.f45423e;
            if (iOException2 != null && wVar.f45424f > i2) {
                throw iOException2;
            }
        }
    }

    public final int f() {
        int i2 = 0;
        for (e0 e0Var : this.f44816q) {
            b0 b0Var = e0Var.f44759c;
            i2 += b0Var.f44742j + b0Var.f44741i;
        }
        return i2;
    }

    public final void g() {
        f fVar = new f(this, this.f44800a, this.f44801b, this.f44809j, this.f44810k);
        if (this.f44819t) {
            long j2 = this.f44795H;
            if (j2 == -9223372036854775807L) {
                throw new IllegalStateException();
            }
            long j3 = this.f44788A;
            if (j3 != -9223372036854775807L && j2 >= j3) {
                this.f44798K = true;
                this.f44795H = -9223372036854775807L;
                return;
            }
            long j4 = this.f44815p.a(j2).f42200a.f42206b;
            long j5 = this.f44795H;
            fVar.f44772e.f42199a = j4;
            fVar.f44775h = j5;
            fVar.f44774g = true;
            this.f44795H = -9223372036854775807L;
        }
        this.f44797J = f();
        com.smartdigimkt.z0.a0 a0Var = this.f44808i;
        int i2 = this.f44820u;
        a0Var.getClass();
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            throw new IllegalStateException();
        }
        a0Var.f45353c = null;
        com.smartdigimkt.z0.w wVar = new com.smartdigimkt.z0.w(a0Var, looperMyLooper, fVar, this, i2, SystemClock.elapsedRealtime());
        if (a0Var.f45352b != null) {
            throw new IllegalStateException();
        }
        a0Var.f45352b = wVar;
        wVar.f45423e = null;
        a0Var.f45351a.execute(wVar);
        x xVar = this.f44803d;
        long j6 = fVar.f44775h;
        long j7 = this.f44788A;
        y yVar = new y();
        xVar.a(j6);
        xVar.a(j7);
        z zVar = new z();
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar2 = (w) it.next();
            x.a(wVar2.f44867a, new q(xVar, wVar2.f44868b, yVar, zVar));
        }
    }

    @Override // com.smartdigimkt.w0.l
    public final long d() {
        long jMin;
        if (this.f44798K) {
            return Long.MIN_VALUE;
        }
        long j2 = this.f44795H;
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        int i2 = 0;
        if (this.f44792E) {
            int length = this.f44816q.length;
            jMin = LocationRequestCompat.PASSIVE_INTERVAL;
            while (i2 < length) {
                if (this.f44790C[i2]) {
                    jMin = Math.min(jMin, this.f44816q[i2].b());
                }
                i2++;
            }
        } else {
            e0[] e0VarArr = this.f44816q;
            int length2 = e0VarArr.length;
            long jMax = Long.MIN_VALUE;
            while (i2 < length2) {
                jMax = Math.max(jMax, e0VarArr[i2].b());
                i2++;
            }
            jMin = jMax;
        }
        return jMin == Long.MIN_VALUE ? this.f44794G : jMin;
    }

    @Override // com.smartdigimkt.w0.l
    public final k0 a() {
        return this.f44825z;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00a7  */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.smartdigimkt.y0.h[] r9, boolean[] r10, com.smartdigimkt.w0.f0[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.i.a(com.smartdigimkt.y0.h[], boolean[], com.smartdigimkt.w0.f0[], boolean[], long):long");
    }

    @Override // com.smartdigimkt.w0.l
    public final long c() {
        if (!this.f44823x) {
            x xVar = this.f44803d;
            if (xVar.f44870b != null) {
                Iterator it = xVar.f44871c.iterator();
                while (it.hasNext()) {
                    w wVar = (w) it.next();
                    x.a(wVar.f44867a, new u(xVar, wVar.f44868b));
                }
                this.f44823x = true;
            } else {
                throw new IllegalStateException();
            }
        }
        if (!this.f44822w) {
            return -9223372036854775807L;
        }
        if (!this.f44798K && f() <= this.f44797J) {
            return -9223372036854775807L;
        }
        this.f44822w = false;
        return this.f44794G;
    }

    @Override // com.smartdigimkt.w0.l
    public final long b() {
        if (this.f44824y == 0) {
            return Long.MIN_VALUE;
        }
        return d();
    }

    public final void b(int i2) {
        if (this.f44796I && this.f44790C[i2] && !this.f44816q[i2].f44759c.a()) {
            this.f44795H = 0L;
            this.f44796I = false;
            this.f44822w = true;
            this.f44794G = 0L;
            this.f44797J = 0;
            for (e0 e0Var : this.f44816q) {
                e0Var.d();
            }
            this.f44814o.b(this);
        }
    }

    public final e0 c(int i2) {
        int length = this.f44816q.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.f44817r[i3] == i2) {
                return this.f44816q[i3];
            }
        }
        e0 e0Var = new e0(this.f44805f);
        e0Var.f44767k = this;
        int i4 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.f44817r, i4);
        this.f44817r = iArrCopyOf;
        iArrCopyOf[length] = i2;
        e0[] e0VarArr = (e0[]) Arrays.copyOf(this.f44816q, i4);
        this.f44816q = e0VarArr;
        e0VarArr[length] = e0Var;
        return e0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r6) {
        /*
            r5 = this;
            com.smartdigimkt.o0.k r0 = r5.f44815p
            boolean r0 = r0.a()
            if (r0 == 0) goto L9
            goto Lb
        L9:
            r6 = 0
        Lb:
            r5.f44794G = r6
            r0 = 0
            r5.f44822w = r0
            long r1 = r5.f44795H
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L1c
            goto L46
        L1c:
            com.smartdigimkt.w0.e0[] r1 = r5.f44816q
            int r1 = r1.length
            r2 = r0
        L20:
            if (r2 >= r1) goto L66
            com.smartdigimkt.w0.e0[] r3 = r5.f44816q
            r3 = r3[r2]
            com.smartdigimkt.w0.b0 r4 = r3.f44759c
            monitor-enter(r4)
            r4.f44744l = r0     // Catch: java.lang.Throwable -> L63
            monitor-exit(r4)
            com.smartdigimkt.w0.c0 r4 = r3.f44762f
            r3.f44763g = r4
            int r3 = r3.a(r6, r0)
            r4 = -1
            if (r3 == r4) goto L38
            goto L43
        L38:
            boolean[] r3 = r5.f44790C
            boolean r3 = r3[r2]
            if (r3 != 0) goto L46
            boolean r3 = r5.f44792E
            if (r3 != 0) goto L43
            goto L46
        L43:
            int r2 = r2 + 1
            goto L20
        L46:
            r5.f44796I = r0
            r5.f44795H = r6
            r5.f44798K = r0
            com.smartdigimkt.z0.a0 r1 = r5.f44808i
            com.smartdigimkt.z0.w r1 = r1.f45352b
            if (r1 == 0) goto L56
            r1.a(r0)
            return r6
        L56:
            com.smartdigimkt.w0.e0[] r1 = r5.f44816q
            int r2 = r1.length
        L59:
            if (r0 >= r2) goto L66
            r3 = r1[r0]
            r3.d()
            int r0 = r0 + 1
            goto L59
        L63:
            r6 = move-exception
            monitor-exit(r4)
            throw r6
        L66:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.i.a(long):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[RETURN] */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r18, com.smartdigimkt.j0.g0 r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r3 = r20
            com.smartdigimkt.o0.k r4 = r0.f44815p
            boolean r4 = r4.a()
            r5 = 0
            if (r4 != 0) goto L11
            return r5
        L11:
            com.smartdigimkt.o0.k r4 = r0.f44815p
            com.smartdigimkt.o0.i r4 = r4.a(r1)
            com.smartdigimkt.o0.l r7 = r4.f42200a
            long r7 = r7.f42205a
            com.smartdigimkt.o0.l r4 = r4.f42201b
            long r9 = r4.f42205a
            int r4 = com.smartdigimkt.a1.t.f39303a
            com.smartdigimkt.j0.g0 r4 = com.smartdigimkt.j0.g0.f40882c
            boolean r4 = r4.equals(r3)
            if (r4 == 0) goto L2a
            return r1
        L2a:
            long r11 = r3.f40884a
            long r13 = r1 - r11
            long r11 = r11 ^ r1
            long r15 = r1 ^ r13
            long r11 = r11 & r15
            int r4 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r4 >= 0) goto L38
            r13 = -9223372036854775808
        L38:
            long r3 = r3.f40885b
            long r11 = r1 + r3
            long r15 = r1 ^ r11
            long r3 = r3 ^ r11
            long r3 = r3 & r15
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 >= 0) goto L49
            r11 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L49:
            int r3 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            r4 = 0
            r5 = 1
            if (r3 > 0) goto L55
            int r3 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r3 > 0) goto L55
            r3 = r5
            goto L56
        L55:
            r3 = r4
        L56:
            int r6 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1))
            if (r6 > 0) goto L5f
            int r6 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r6 > 0) goto L5f
            r4 = r5
        L5f:
            if (r3 == 0) goto L74
            if (r4 == 0) goto L74
            long r3 = r7 - r1
            long r3 = java.lang.Math.abs(r3)
            long r1 = r9 - r1
            long r1 = java.lang.Math.abs(r1)
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 > 0) goto L79
            goto L76
        L74:
            if (r3 == 0) goto L77
        L76:
            return r7
        L77:
            if (r4 == 0) goto L7a
        L79:
            return r9
        L7a:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.i.a(long, com.smartdigimkt.j0.g0):long");
    }

    public final void a(int i2) {
        if (this.f44791D[i2]) {
            return;
        }
        com.smartdigimkt.j0.s sVar = this.f44825z.f44845b[i2].f44827b[0];
        x xVar = this.f44803d;
        String str = sVar.f40991f;
        ArrayList arrayList = com.smartdigimkt.a1.h.f39276a;
        if (!TextUtils.isEmpty(str) && !MediaFormat.KEY_AUDIO.equals(com.smartdigimkt.a1.h.b(str)) && !"video".equals(com.smartdigimkt.a1.h.b(str)) && !com.baidu.mobads.sdk.internal.a.f10878b.equals(com.smartdigimkt.a1.h.b(str)) && !"application/cea-608".equals(str) && !"application/cea-708".equals(str) && !"application/x-mp4-cea-608".equals(str) && !"application/x-subrip".equals(str) && !"application/ttml+xml".equals(str) && !"application/x-quicktime-tx3g".equals(str) && !"application/x-mp4-vtt".equals(str) && !"application/x-rawcc".equals(str) && !"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str) && !"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str) && !"application/x-camera-motion".equals(str)) {
            ArrayList arrayList2 = com.smartdigimkt.a1.h.f39276a;
            if (arrayList2.size() > 0) {
                arrayList2.get(0).getClass();
                throw new ClassCastException();
            }
        }
        xVar.a(this.f44794G);
        z zVar = new z();
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            x.a(wVar.f44867a, new v(xVar, wVar.f44868b, zVar));
        }
        this.f44791D[i2] = true;
    }

    public final void a(f fVar, long j2, long j3) {
        if (this.f44788A == -9223372036854775807L) {
            int i2 = 0;
            long jMax = Long.MIN_VALUE;
            for (e0 e0Var : this.f44816q) {
                jMax = Math.max(jMax, e0Var.b());
            }
            long j4 = jMax == Long.MIN_VALUE ? 0L : 10000 + jMax;
            this.f44788A = j4;
            j jVar = this.f44804e;
            boolean zA = this.f44815p.a();
            if (j4 == -9223372036854775807L) {
                j4 = jVar.f44841m;
            }
            if (jVar.f44841m != j4 || jVar.f44842n != zA) {
                jVar.f44841m = j4;
                jVar.f44842n = zA;
                g0 g0Var = new g0(j4, zA, jVar.f44840l);
                jVar.f44832d = g0Var;
                jVar.f44833e = null;
                ArrayList arrayList = jVar.f44829a;
                int size = arrayList.size();
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((com.smartdigimkt.j0.p) ((n) obj)).f40963f.f39298a.obtainMessage(8, new com.smartdigimkt.j0.m(jVar, g0Var, null)).sendToTarget();
                }
            }
        }
        x xVar = this.f44803d;
        com.smartdigimkt.z0.k kVar = fVar.f44776i;
        long j5 = fVar.f44775h;
        long j6 = this.f44788A;
        y yVar = new y();
        xVar.a(j5);
        xVar.a(j6);
        z zVar = new z();
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            x.a(wVar.f44867a, new r(xVar, wVar.f44868b, yVar, zVar));
        }
        if (this.f44793F == -1) {
            this.f44793F = fVar.f44777j;
        }
        this.f44798K = true;
        this.f44814o.b(this);
    }

    public final void a(f fVar, long j2, long j3, boolean z2) {
        x xVar = this.f44803d;
        com.smartdigimkt.z0.k kVar = fVar.f44776i;
        long j4 = fVar.f44775h;
        long j5 = this.f44788A;
        y yVar = new y();
        xVar.a(j4);
        xVar.a(j5);
        z zVar = new z();
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            w wVar = (w) it.next();
            x.a(wVar.f44867a, new s(xVar, wVar.f44868b, yVar, zVar));
        }
        if (z2) {
            return;
        }
        if (this.f44793F == -1) {
            this.f44793F = fVar.f44777j;
        }
        for (e0 e0Var : this.f44816q) {
            e0Var.d();
        }
        if (this.f44824y > 0) {
            this.f44814o.b(this);
        }
    }
}
