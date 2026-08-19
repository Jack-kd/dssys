package com.smartdigimkt.j0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class p implements Handler.Callback, com.smartdigimkt.w0.k, com.smartdigimkt.w0.n, d, d0 {

    /* renamed from: A, reason: collision with root package name */
    public o f40955A;

    /* renamed from: B, reason: collision with root package name */
    public long f40956B;

    /* renamed from: C, reason: collision with root package name */
    public int f40957C;

    /* renamed from: a, reason: collision with root package name */
    public final a[] f40958a;

    /* renamed from: b, reason: collision with root package name */
    public final a[] f40959b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.y0.l f40960c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.y0.m f40961d;

    /* renamed from: e, reason: collision with root package name */
    public final c f40962e;

    /* renamed from: f, reason: collision with root package name */
    public final com.smartdigimkt.a1.p f40963f;

    /* renamed from: g, reason: collision with root package name */
    public final HandlerThread f40964g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f40965h;

    /* renamed from: i, reason: collision with root package name */
    public final h f40966i;

    /* renamed from: j, reason: collision with root package name */
    public final m0 f40967j;

    /* renamed from: k, reason: collision with root package name */
    public final l0 f40968k;

    /* renamed from: l, reason: collision with root package name */
    public final e f40969l;

    /* renamed from: m, reason: collision with root package name */
    public final n f40970m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f40971n;

    /* renamed from: o, reason: collision with root package name */
    public final com.smartdigimkt.a1.b f40972o;

    /* renamed from: p, reason: collision with root package name */
    public final x f40973p;

    /* renamed from: q, reason: collision with root package name */
    public g0 f40974q;

    /* renamed from: r, reason: collision with root package name */
    public z f40975r;

    /* renamed from: s, reason: collision with root package name */
    public com.smartdigimkt.w0.j f40976s;

    /* renamed from: t, reason: collision with root package name */
    public a[] f40977t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f40978u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f40979v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f40980w;

    /* renamed from: x, reason: collision with root package name */
    public int f40981x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f40982y;

    /* renamed from: z, reason: collision with root package name */
    public int f40983z;

    public p(a[] aVarArr, com.smartdigimkt.y0.g gVar, com.smartdigimkt.y0.m mVar, c cVar, boolean z2, i iVar, h hVar) {
        com.smartdigimkt.a1.o oVar = com.smartdigimkt.a1.b.f39264a;
        this.f40958a = aVarArr;
        this.f40960c = gVar;
        this.f40961d = mVar;
        this.f40962e = cVar;
        this.f40979v = z2;
        this.f40981x = 0;
        this.f40982y = false;
        this.f40965h = iVar;
        this.f40966i = hVar;
        this.f40972o = oVar;
        this.f40973p = new x();
        this.f40974q = g0.f40883d;
        com.smartdigimkt.w0.k0 k0Var = com.smartdigimkt.w0.k0.f44843d;
        this.f40975r = new z(-9223372036854775807L, mVar);
        this.f40970m = new n();
        this.f40959b = new a[aVarArr.length];
        for (int i2 = 0; i2 < aVarArr.length; i2++) {
            a aVar = aVarArr[i2];
            aVar.getClass();
            this.f40959b[i2] = aVar;
        }
        this.f40969l = new e(this);
        this.f40971n = new ArrayList();
        this.f40977t = new a[0];
        this.f40967j = new m0();
        this.f40968k = new l0();
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f40964g = handlerThread;
        handlerThread.start();
        this.f40963f = oVar.a(handlerThread.getLooper(), this);
    }

    @Override // com.smartdigimkt.w0.k
    public final void a(com.smartdigimkt.w0.l lVar) {
        this.f40963f.f39298a.obtainMessage(9, lVar).sendToTarget();
    }

    @Override // com.smartdigimkt.w0.k
    public final void b(com.smartdigimkt.w0.l lVar) {
        this.f40963f.f39298a.obtainMessage(10, lVar).sendToTarget();
    }

    public final void c(boolean z2) {
        this.f40980w = false;
        this.f40979v = z2;
        if (!z2) {
            j();
            k();
            return;
        }
        int i2 = this.f40975r.f41052f;
        if (i2 == 3) {
            i();
            this.f40963f.f39298a.sendEmptyMessage(2);
        } else if (i2 == 2) {
            this.f40963f.f39298a.sendEmptyMessage(2);
        }
    }

    public final void d() {
        n nVar = this.f40970m;
        z zVar = this.f40975r;
        if (zVar != nVar.f40947a || nVar.f40948b > 0 || nVar.f40949c) {
            this.f40965h.obtainMessage(0, nVar.f40948b, nVar.f40949c ? nVar.f40950d : -1, zVar).sendToTarget();
            n nVar2 = this.f40970m;
            nVar2.f40947a = this.f40975r;
            nVar2.f40948b = 0;
            nVar2.f40949c = false;
        }
    }

    public final void e() {
        x xVar = this.f40973p;
        v vVar = xVar.f41043i;
        v vVar2 = xVar.f41042h;
        if (vVar == null || vVar.f41018f) {
            return;
        }
        if (vVar2 == null || vVar2.f41021i == vVar) {
            for (a aVar : this.f40977t) {
                if (!aVar.f40848g) {
                    return;
                }
            }
            vVar.f41013a.e();
        }
    }

    public final synchronized void f() {
        if (!this.f40978u && this.f40964g.isAlive()) {
            this.f40963f.f39298a.sendEmptyMessage(7);
            ((com.smartdigimkt.a1.o) this.f40972o).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime() + 500;
            boolean z2 = false;
            for (long jElapsedRealtime2 = 500; !this.f40978u && jElapsedRealtime2 > 0; jElapsedRealtime2 = jElapsedRealtime - SystemClock.elapsedRealtime()) {
                try {
                    wait(jElapsedRealtime2);
                } catch (InterruptedException unused) {
                    z2 = true;
                }
                ((com.smartdigimkt.a1.o) this.f40972o).getClass();
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public final void g() {
        a(true, true, true);
        this.f40962e.a(true);
        b(1);
        this.f40964g.quitSafely();
        synchronized (this) {
            this.f40978u = true;
            notifyAll();
        }
    }

    public final void h() throws g {
        if (this.f40973p.c()) {
            float f2 = this.f40969l.a().f40851a;
            x xVar = this.f40973p;
            v vVar = xVar.f41042h;
            boolean z2 = true;
            for (v vVar2 = xVar.f41041g; vVar2 != null && vVar2.f41018f; vVar2 = vVar2.f41021i) {
                if (vVar2.b()) {
                    if (z2) {
                        x xVar2 = this.f40973p;
                        v vVar3 = xVar2.f41041g;
                        boolean zA = xVar2.a(vVar3);
                        boolean[] zArr = new boolean[this.f40958a.length];
                        long jA = vVar3.a(this.f40975r.f41056j, zA, zArr);
                        a(vVar3.f41023k);
                        z zVar = this.f40975r;
                        if (zVar.f41052f != 4 && jA != zVar.f41056j) {
                            z zVar2 = this.f40975r;
                            this.f40975r = zVar2.a(zVar2.f41049c, jA, zVar2.f41051e);
                            this.f40970m.a(4);
                            a(jA);
                        }
                        boolean[] zArr2 = new boolean[this.f40958a.length];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            a[] aVarArr = this.f40958a;
                            if (i2 >= aVarArr.length) {
                                break;
                            }
                            a aVar = aVarArr[i2];
                            boolean z3 = aVar.f40844c != 0;
                            zArr2[i2] = z3;
                            com.smartdigimkt.w0.f0 f0Var = vVar3.f41015c[i2];
                            if (f0Var != null) {
                                i3++;
                            }
                            if (z3) {
                                if (f0Var != aVar.f40845d) {
                                    a(aVar);
                                } else if (zArr[i2]) {
                                    long j2 = this.f40956B;
                                    aVar.f40849h = false;
                                    aVar.f40848g = false;
                                    aVar.a(j2, false);
                                }
                            }
                            i2++;
                        }
                        z zVar3 = this.f40975r;
                        z zVar4 = new z(zVar3.f41047a, zVar3.f41048b, zVar3.f41049c, zVar3.f41050d, zVar3.f41051e, zVar3.f41052f, zVar3.f41053g, vVar3.f41022j, vVar3.f41023k);
                        zVar4.f41056j = zVar3.f41056j;
                        zVar4.f41057k = zVar3.f41057k;
                        this.f40975r = zVar4;
                        a(zArr2, i3);
                    } else {
                        this.f40973p.a(vVar2);
                        if (vVar2.f41018f) {
                            vVar2.a(Math.max(vVar2.f41020h.f41029b, this.f40956B - vVar2.f41017e), false, new boolean[vVar2.f41024l.length]);
                            a(vVar2.f41023k);
                        }
                    }
                    if (this.f40975r.f41052f != 4) {
                        c();
                        k();
                        this.f40963f.f39298a.sendEmptyMessage(2);
                        return;
                    }
                    return;
                }
                if (vVar2 == vVar) {
                    z2 = false;
                }
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 0:
                    a((com.smartdigimkt.w0.j) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    c(message.arg1 != 0);
                    break;
                case 2:
                    a();
                    break;
                case 3:
                    a((o) message.obj);
                    break;
                case 4:
                    this.f40969l.a((a0) message.obj);
                    break;
                case 5:
                    this.f40974q = (g0) message.obj;
                    break;
                case 6:
                    a(message.arg1 != 0, true);
                    break;
                case 7:
                    g();
                    return true;
                case 8:
                    a((m) message.obj);
                    break;
                case 9:
                    d((com.smartdigimkt.w0.l) message.obj);
                    break;
                case 10:
                    c((com.smartdigimkt.w0.l) message.obj);
                    break;
                case 11:
                    h();
                    break;
                case 12:
                    a(message.arg1);
                    break;
                case 13:
                    d(message.arg1 != 0);
                    break;
                case 14:
                    e0 e0Var = (e0) message.obj;
                    e0Var.getClass();
                    if (e0Var.f40874e.getLooper() != this.f40963f.f39298a.getLooper()) {
                        this.f40963f.f39298a.obtainMessage(15, e0Var).sendToTarget();
                        break;
                    } else {
                        a(e0Var);
                        int i2 = this.f40975r.f41052f;
                        if (i2 == 3 || i2 == 2) {
                            this.f40963f.f39298a.sendEmptyMessage(2);
                            break;
                        }
                    }
                case 15:
                    e0 e0Var2 = (e0) message.obj;
                    e0Var2.f40874e.post(new l(this, e0Var2));
                    break;
                default:
                    return false;
            }
            d();
        } catch (g e2) {
            Log.e("ExoPlayerImplInternal", "Playback error.", e2);
            a(false, false);
            this.f40965h.obtainMessage(2, e2).sendToTarget();
            d();
        } catch (IOException e3) {
            Log.e("ExoPlayerImplInternal", "Source error.", e3);
            a(false, false);
            this.f40965h.obtainMessage(2, new g(0, e3)).sendToTarget();
            d();
        } catch (RuntimeException e4) {
            Log.e("ExoPlayerImplInternal", "Internal runtime error.", e4);
            a(false, false);
            this.f40965h.obtainMessage(2, new g(2, e4)).sendToTarget();
            d();
        }
        return true;
    }

    public final void i() {
        this.f40980w = false;
        com.smartdigimkt.a1.n nVar = this.f40969l.f40866a;
        if (!nVar.f39294b) {
            ((com.smartdigimkt.a1.o) nVar.f39293a).getClass();
            nVar.f39296d = SystemClock.elapsedRealtime();
            nVar.f39294b = true;
        }
        for (a aVar : this.f40977t) {
            if (aVar.f40844c != 1) {
                throw new IllegalStateException();
            }
            aVar.f40844c = 2;
            aVar.h();
        }
    }

    public final void j() {
        com.smartdigimkt.a1.n nVar = this.f40969l.f40866a;
        if (nVar.f39294b) {
            nVar.a(nVar.b());
            nVar.f39294b = false;
        }
        for (a aVar : this.f40977t) {
            int i2 = aVar.f40844c;
            if (i2 == 2) {
                if (i2 != 2) {
                    throw new IllegalStateException();
                }
                aVar.f40844c = 1;
                aVar.i();
            }
        }
    }

    public final void k() {
        long jB;
        long jD;
        if (this.f40973p.c()) {
            v vVar = this.f40973p.f41041g;
            long jC = vVar.f41013a.c();
            if (jC != -9223372036854775807L) {
                a(jC);
                if (jC != this.f40975r.f41056j) {
                    z zVar = this.f40975r;
                    this.f40975r = zVar.a(zVar.f41049c, jC, zVar.f41051e);
                    this.f40970m.a(4);
                }
            } else {
                e eVar = this.f40969l;
                a aVar = eVar.f40868c;
                if (aVar == null || aVar.d() || (!eVar.f40868c.e() && eVar.f40868c.f40848g)) {
                    jB = eVar.f40866a.b();
                } else {
                    eVar.f40866a.a(eVar.f40869d.b());
                    a0 a0VarA = eVar.f40869d.a();
                    if (!a0VarA.equals(eVar.f40866a.f39297e)) {
                        eVar.f40866a.a(a0VarA);
                        ((p) eVar.f40867b).a(a0VarA);
                    }
                    jB = eVar.f40869d.b();
                }
                this.f40956B = jB;
                long j2 = jB - vVar.f41017e;
                long j3 = this.f40975r.f41056j;
                if (!this.f40971n.isEmpty() && !this.f40975r.f41049c.a()) {
                    z zVar2 = this.f40975r;
                    long j4 = zVar2.f41050d;
                    int i2 = zVar2.f41049c.f44847a;
                    int i3 = this.f40957C;
                    if (i3 > 0 && this.f40971n.get(i3 - 1) != null) {
                        throw new ClassCastException();
                    }
                    if (this.f40957C < this.f40971n.size() && this.f40971n.get(this.f40957C) != null) {
                        throw new ClassCastException();
                    }
                }
                this.f40975r.f41056j = j2;
            }
            z zVar3 = this.f40975r;
            if (this.f40977t.length == 0) {
                jD = vVar.f41020h.f41032e;
            } else if (vVar.f41018f) {
                jD = vVar.f41013a.d();
                if (jD == Long.MIN_VALUE) {
                    jD = vVar.f41020h.f41032e;
                }
            } else {
                jD = vVar.f41020h.f41029b;
            }
            zVar3.f41057k = jD;
        }
    }

    public final void b(int i2) {
        z zVar = this.f40975r;
        if (zVar.f41052f != i2) {
            z zVar2 = new z(zVar.f41047a, zVar.f41048b, zVar.f41049c, zVar.f41050d, zVar.f41051e, i2, zVar.f41053g, zVar.f41054h, zVar.f41055i);
            zVar2.f41056j = zVar.f41056j;
            zVar2.f41057k = zVar.f41057k;
            this.f40975r = zVar2;
        }
    }

    public final void a(a0 a0Var) {
        this.f40965h.obtainMessage(1, a0Var).sendToTarget();
        float f2 = a0Var.f40851a;
        for (v vVarB = this.f40973p.b(); vVarB != null; vVarB = vVarB.f41021i) {
            com.smartdigimkt.y0.m mVar = vVarB.f41023k;
            if (mVar != null) {
                for (com.smartdigimkt.y0.h hVar : (com.smartdigimkt.y0.h[]) mVar.f45165c.f45161b.clone()) {
                }
            }
        }
    }

    public final void b(boolean z2) {
        z zVar = this.f40975r;
        if (zVar.f41053g != z2) {
            z zVar2 = new z(zVar.f41047a, zVar.f41048b, zVar.f41049c, zVar.f41050d, zVar.f41051e, zVar.f41052f, z2, zVar.f41054h, zVar.f41055i);
            zVar2.f41056j = zVar.f41056j;
            zVar2.f41057k = zVar.f41057k;
            this.f40975r = zVar2;
        }
    }

    public final void c(com.smartdigimkt.w0.l lVar) {
        com.smartdigimkt.w0.l lVar2;
        v vVar = this.f40973p.f41043i;
        if (vVar == null || (lVar2 = vVar.f41013a) != lVar) {
            return;
        }
        long j2 = this.f40956B;
        if (vVar.f41018f) {
            lVar2.d(j2 - vVar.f41017e);
        }
        c();
    }

    public final void a(com.smartdigimkt.w0.j jVar, boolean z2, boolean z3) {
        this.f40983z++;
        a(true, z2, z3);
        int i2 = 0;
        this.f40962e.a(false);
        this.f40976s = jVar;
        b(2);
        h hVar = this.f40966i;
        h hVar2 = jVar.f44831c;
        if (hVar2 != null && hVar2 != hVar) {
            throw new IllegalArgumentException();
        }
        jVar.f44829a.add(this);
        if (jVar.f44831c == null) {
            jVar.f44831c = hVar;
            long j2 = jVar.f44841m;
            jVar.f44841m = j2;
            jVar.f44842n = false;
            com.smartdigimkt.w0.g0 g0Var = new com.smartdigimkt.w0.g0(j2, false, jVar.f44840l);
            jVar.f44832d = g0Var;
            jVar.f44833e = null;
            ArrayList arrayList = jVar.f44829a;
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((p) ((com.smartdigimkt.w0.n) obj)).f40963f.f39298a.obtainMessage(8, new m(jVar, g0Var, null)).sendToTarget();
            }
        } else {
            n0 n0Var = jVar.f44832d;
            if (n0Var != null) {
                Object obj2 = jVar.f44833e;
                this.f40963f.f39298a.obtainMessage(8, new m(jVar, n0Var, obj2)).sendToTarget();
            }
        }
        this.f40963f.f39298a.sendEmptyMessage(2);
    }

    public final void d(boolean z2) throws g {
        this.f40982y = z2;
        x xVar = this.f40973p;
        xVar.f41040f = z2;
        if (xVar.d()) {
            return;
        }
        a(true);
    }

    public final boolean b() {
        v vVar = this.f40973p.f41041g;
        long j2 = vVar.f41020h.f41032e;
        if (j2 == -9223372036854775807L || this.f40975r.f41056j < j2) {
            return true;
        }
        v vVar2 = vVar.f41021i;
        if (vVar2 != null) {
            return vVar2.f41018f || vVar2.f41020h.f41028a.a();
        }
        return false;
    }

    public final void d(com.smartdigimkt.w0.l lVar) throws g {
        v vVar = this.f40973p.f41043i;
        if (vVar == null || vVar.f41013a != lVar) {
            return;
        }
        float f2 = this.f40969l.a().f40851a;
        vVar.f41018f = true;
        vVar.f41022j = vVar.f41013a.a();
        vVar.b();
        long jA = vVar.a(vVar.f41020h.f41029b, false, new boolean[vVar.f41024l.length]);
        long j2 = vVar.f41017e;
        w wVar = vVar.f41020h;
        vVar.f41017e = (wVar.f41029b - jA) + j2;
        vVar.f41020h = new w(wVar.f41028a, jA, wVar.f41030c, wVar.f41031d, wVar.f41032e, wVar.f41033f, wVar.f41034g);
        a(vVar.f41023k);
        if (!this.f40973p.c()) {
            a(this.f40973p.a().f41020h.f41029b);
            a((v) null);
        }
        c();
    }

    public final void c() {
        int i2;
        v vVar = this.f40973p.f41043i;
        long jB = !vVar.f41018f ? 0L : vVar.f41013a.b();
        if (jB == Long.MIN_VALUE) {
            b(false);
            return;
        }
        long j2 = jB - (this.f40956B - vVar.f41017e);
        c cVar = this.f40962e;
        float f2 = this.f40969l.a().f40851a;
        com.smartdigimkt.z0.l lVar = cVar.f40857a;
        synchronized (lVar) {
            i2 = lVar.f45380c * 65536;
        }
        boolean z2 = i2 >= cVar.f40864h;
        long jMin = cVar.f40858b;
        if (f2 > 1.0f) {
            int i3 = com.smartdigimkt.a1.t.f39303a;
            if (f2 != 1.0f) {
                jMin = Math.round(jMin * f2);
            }
            jMin = Math.min(jMin, cVar.f40859c);
        }
        if (j2 < jMin) {
            cVar.f40865i = cVar.f40863g || !z2;
        } else if (j2 > cVar.f40859c || z2) {
            cVar.f40865i = false;
        }
        boolean z3 = cVar.f40865i;
        b(z3);
        if (z3) {
            vVar.f41013a.c(this.f40956B - vVar.f41017e);
        }
    }

    public final void a(int i2) throws g {
        this.f40981x = i2;
        x xVar = this.f40973p;
        xVar.f41039e = i2;
        if (xVar.d()) {
            return;
        }
        a(true);
    }

    public final void a(boolean z2) throws g {
        com.smartdigimkt.w0.m mVar = this.f40973p.f41041g.f41020h.f41028a;
        long jA = a(mVar, this.f40975r.f41056j, true);
        if (jA != this.f40975r.f41056j) {
            z zVar = this.f40975r;
            this.f40975r = zVar.a(mVar, jA, zVar.f41051e);
            if (z2) {
                this.f40970m.a(4);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() throws com.smartdigimkt.j0.g {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.j0.p.a():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.j0.o r21) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.j0.p.a(com.smartdigimkt.j0.o):void");
    }

    public final long a(com.smartdigimkt.w0.m mVar, long j2, boolean z2) throws g {
        j();
        this.f40980w = false;
        b(2);
        v vVar = this.f40973p.f41041g;
        v vVarA = vVar;
        while (vVarA != null) {
            if (mVar.equals(vVarA.f41020h.f41028a) && vVarA.f41018f) {
                this.f40975r.f41047a.a(vVarA.f41020h.f41028a.f44847a, this.f40968k, false);
                int iA = this.f40968k.a(j2);
                if (iA == -1 || this.f40968k.f40936e.f45056b[iA] == vVarA.f41020h.f41030c) {
                    this.f40973p.a(vVarA);
                    break;
                }
            }
            vVarA = this.f40973p.a();
        }
        if (vVar != vVarA || z2) {
            for (a aVar : this.f40977t) {
                a(aVar);
            }
            this.f40977t = new a[0];
            vVar = null;
        }
        if (vVarA != null) {
            a(vVar);
            if (vVarA.f41019g) {
                j2 = vVarA.f41013a.a(j2);
                vVarA.f41013a.b(j2);
            }
            a(j2);
            c();
        } else {
            this.f40973p.a(true);
            a(j2);
        }
        this.f40963f.f39298a.sendEmptyMessage(2);
        return j2;
    }

    public final void a(long j2) {
        if (this.f40973p.c()) {
            j2 += this.f40973p.f41041g.f41017e;
        }
        this.f40956B = j2;
        this.f40969l.f40866a.a(j2);
        for (a aVar : this.f40977t) {
            long j3 = this.f40956B;
            aVar.f40849h = false;
            aVar.f40848g = false;
            aVar.a(j3, false);
        }
    }

    public final void a(boolean z2, boolean z3) {
        a(true, z2, z2);
        this.f40970m.f40948b += this.f40983z + (z3 ? 1 : 0);
        this.f40983z = 0;
        this.f40962e.a(true);
        b(1);
    }

    public final void a(boolean z2, boolean z3, boolean z4) {
        com.smartdigimkt.w0.m mVar;
        com.smartdigimkt.w0.j jVar;
        this.f40963f.f39298a.removeMessages(2);
        this.f40980w = false;
        com.smartdigimkt.a1.n nVar = this.f40969l.f40866a;
        if (nVar.f39294b) {
            nVar.a(nVar.b());
            nVar.f39294b = false;
        }
        this.f40956B = 0L;
        for (a aVar : this.f40977t) {
            try {
                a(aVar);
            } catch (g | RuntimeException e2) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e2);
            }
        }
        this.f40977t = new a[0];
        this.f40973p.a(!z3);
        b(false);
        if (z3) {
            this.f40955A = null;
        }
        if (z4) {
            this.f40973p.f41038d = n0.f40951a;
            Iterator it = this.f40971n.iterator();
            if (!it.hasNext()) {
                this.f40971n.clear();
                this.f40957C = 0;
            } else {
                com.smartdigimkt.a.a.a(it.next());
                throw null;
            }
        }
        n0 n0Var = z4 ? n0.f40951a : this.f40975r.f41047a;
        Object obj = z4 ? null : this.f40975r.f41048b;
        if (z3) {
            n0 n0Var2 = this.f40975r.f41047a;
            if (!n0Var2.c()) {
                i = n0Var2.a(n0Var2.c() ? -1 : 0, this.f40967j, 0L).f40942c;
            }
            mVar = new com.smartdigimkt.w0.m(i);
        } else {
            mVar = this.f40975r.f41049c;
        }
        long j2 = z3 ? -9223372036854775807L : this.f40975r.f41056j;
        long j3 = z3 ? -9223372036854775807L : this.f40975r.f41051e;
        z zVar = this.f40975r;
        this.f40975r = new z(n0Var, obj, mVar, j2, j3, zVar.f41052f, false, z4 ? com.smartdigimkt.w0.k0.f44843d : zVar.f41054h, z4 ? this.f40961d : zVar.f41055i);
        if (!z2 || (jVar = this.f40976s) == null) {
            return;
        }
        jVar.f44829a.remove(this);
        if (jVar.f44829a.isEmpty()) {
            jVar.f44831c = null;
            jVar.f44832d = null;
            jVar.f44833e = null;
        }
        this.f40976s = null;
    }

    public static void a(e0 e0Var) {
        synchronized (e0Var) {
        }
        try {
            e0Var.f40870a.a(e0Var.f40872c, e0Var.f40873d);
        } finally {
            e0Var.a(true);
        }
    }

    public final void a(a aVar) {
        e eVar = this.f40969l;
        if (aVar == eVar.f40868c) {
            eVar.f40869d = null;
            eVar.f40868c = null;
        }
        int i2 = aVar.f40844c;
        if (i2 == 2) {
            if (i2 == 2) {
                aVar.f40844c = 1;
                aVar.i();
            } else {
                throw new IllegalStateException();
            }
        }
        if (aVar.f40844c == 1) {
            aVar.f40844c = 0;
            aVar.f40845d = null;
            aVar.f40846e = null;
            aVar.f40849h = false;
            aVar.f();
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(com.smartdigimkt.y0.m mVar) {
        int i2;
        c cVar = this.f40962e;
        a[] aVarArr = this.f40958a;
        com.smartdigimkt.y0.k kVar = mVar.f45165c;
        int i3 = cVar.f40862f;
        if (i3 == -1) {
            int i4 = 0;
            for (int i5 = 0; i5 < aVarArr.length; i5++) {
                if (kVar.f45161b[i5] != null) {
                    int i6 = aVarArr[i5].f40842a;
                    int i7 = com.smartdigimkt.a1.t.f39303a;
                    if (i6 == 0) {
                        i2 = 16777216;
                    } else if (i6 == 1) {
                        i2 = 3538944;
                    } else if (i6 == 2) {
                        i2 = 13107200;
                    } else {
                        if (i6 != 3 && i6 != 4) {
                            throw new IllegalStateException();
                        }
                        i2 = 131072;
                    }
                    i4 += i2;
                }
            }
            i3 = i4;
        }
        cVar.f40864h = i3;
        cVar.f40857a.a(i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:140:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.j0.m r31) throws com.smartdigimkt.j0.g {
        /*
            Method dump skipped, instructions count: 835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.j0.p.a(com.smartdigimkt.j0.m):void");
    }

    public final int a(int i2, n0 n0Var, n0 n0Var2) {
        int iA = n0Var.a();
        int i3 = 0;
        int iA2 = i2;
        int iA3 = -1;
        while (i3 < iA && iA3 == -1) {
            n0 n0Var3 = n0Var;
            iA2 = n0Var3.a(iA2, this.f40968k, this.f40967j, this.f40981x, this.f40982y);
            if (iA2 == -1) {
                break;
            }
            iA3 = n0Var2.a(n0Var3.a(iA2, this.f40968k, true).f40932a);
            i3++;
            n0Var = n0Var3;
        }
        return iA3;
    }

    public final Pair a(o oVar, boolean z2) {
        int iA;
        n0 n0Var = this.f40975r.f41047a;
        n0 n0Var2 = oVar.f40952a;
        if (n0Var.c()) {
            return null;
        }
        n0 n0Var3 = n0Var2.c() ? n0Var : n0Var2;
        try {
            Pair pairA = n0Var3.a(this.f40967j, this.f40968k, oVar.f40953b, oVar.f40954c, 0L);
            if (n0Var == n0Var3) {
                return pairA;
            }
            int iA2 = n0Var.a(n0Var3.a(((Integer) pairA.first).intValue(), this.f40968k, true).f40932a);
            if (iA2 != -1) {
                return Pair.create(Integer.valueOf(iA2), (Long) pairA.second);
            }
            if (!z2 || (iA = a(((Integer) pairA.first).intValue(), n0Var3, n0Var)) == -1) {
                return null;
            }
            return n0Var.a(this.f40967j, this.f40968k, n0Var.a(iA, this.f40968k, false).f40933b, -9223372036854775807L, 0L);
        } catch (IndexOutOfBoundsException unused) {
            throw new u();
        }
    }

    public final void a(v vVar) throws g {
        v vVar2 = this.f40973p.f41041g;
        if (vVar2 == null || vVar == vVar2) {
            return;
        }
        boolean[] zArr = new boolean[this.f40958a.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            a[] aVarArr = this.f40958a;
            if (i2 < aVarArr.length) {
                a aVar = aVarArr[i2];
                zArr[i2] = aVar.f40844c != 0;
                if (vVar2.f41023k.a(i2)) {
                    i3++;
                }
                if (zArr[i2] && (!vVar2.f41023k.a(i2) || (aVar.f40849h && aVar.f40845d == vVar.f41015c[i2]))) {
                    a(aVar);
                }
                i2++;
            } else {
                z zVar = this.f40975r;
                z zVar2 = new z(zVar.f41047a, zVar.f41048b, zVar.f41049c, zVar.f41050d, zVar.f41051e, zVar.f41052f, zVar.f41053g, vVar2.f41022j, vVar2.f41023k);
                zVar2.f41056j = zVar.f41056j;
                zVar2.f41057k = zVar.f41057k;
                this.f40975r = zVar2;
                a(zArr, i3);
                return;
            }
        }
    }

    public final void a(boolean[] zArr, int i2) throws g {
        int i3;
        com.smartdigimkt.a1.g gVar;
        this.f40977t = new a[i2];
        v vVar = this.f40973p.f41041g;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.f40958a.length) {
            if (vVar.f41023k.a(i4)) {
                boolean z2 = zArr[i4];
                int i6 = i5 + 1;
                v vVar2 = this.f40973p.f41041g;
                a aVar = this.f40958a[i4];
                this.f40977t[i5] = aVar;
                if (aVar.f40844c == 0) {
                    com.smartdigimkt.y0.m mVar = vVar2.f41023k;
                    f0 f0Var = mVar.f45164b[i4];
                    com.smartdigimkt.y0.h hVar = mVar.f45165c.f45161b[i4];
                    int length = hVar != null ? hVar.f45154b.length : 0;
                    s[] sVarArr = new s[length];
                    for (int i7 = 0; i7 < length; i7++) {
                        sVarArr[i7] = hVar.f45155c[i7];
                    }
                    boolean z3 = this.f40979v && this.f40975r.f41052f == 3;
                    boolean z4 = !z2 && z3;
                    com.smartdigimkt.w0.f0 f0Var2 = vVar2.f41015c[i4];
                    long j2 = this.f40956B;
                    i3 = i4;
                    long j3 = vVar2.f41017e;
                    if (aVar.f40844c == 0) {
                        aVar.f40843b = f0Var;
                        aVar.f40844c = 1;
                        aVar.g();
                        if (!aVar.f40849h) {
                            aVar.f40845d = f0Var2;
                            aVar.f40848g = false;
                            aVar.f40846e = sVarArr;
                            aVar.f40847f = j3;
                            aVar.a(sVarArr, j3);
                            aVar.a(j2, z4);
                            e eVar = this.f40969l;
                            eVar.getClass();
                            com.smartdigimkt.a1.g gVarC = aVar.c();
                            if (gVarC != null && gVarC != (gVar = eVar.f40869d)) {
                                if (gVar == null) {
                                    eVar.f40869d = gVarC;
                                    eVar.f40868c = aVar;
                                    ((com.smartdigimkt.l0.a0) ((com.smartdigimkt.l0.d0) gVarC).f41462T).a(eVar.f40866a.f39297e);
                                    eVar.f40866a.a(eVar.f40869d.b());
                                    a0 a0VarA = eVar.f40869d.a();
                                    if (!a0VarA.equals(eVar.f40866a.f39297e)) {
                                        eVar.f40866a.a(a0VarA);
                                        ((p) eVar.f40867b).a(a0VarA);
                                    }
                                } else {
                                    throw new g(2, new IllegalStateException("Multiple renderer media clocks enabled."));
                                }
                            }
                            if (z3) {
                                if (aVar.f40844c == 1) {
                                    aVar.f40844c = 2;
                                    aVar.h();
                                } else {
                                    throw new IllegalStateException();
                                }
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    i3 = i4;
                }
                i5 = i6;
            } else {
                i3 = i4;
            }
            i4 = i3 + 1;
        }
    }
}
