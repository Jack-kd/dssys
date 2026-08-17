package com.smartdigimkt.j0;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class k implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Object f40911a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.y0.l f40912b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.y0.m f40913c;

    /* renamed from: d, reason: collision with root package name */
    public final i f40914d;

    /* renamed from: e, reason: collision with root package name */
    public final p f40915e;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f40916f;

    /* renamed from: g, reason: collision with root package name */
    public final CopyOnWriteArraySet f40917g;

    /* renamed from: h, reason: collision with root package name */
    public final m0 f40918h;

    /* renamed from: i, reason: collision with root package name */
    public final l0 f40919i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayDeque f40920j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f40921k;

    /* renamed from: l, reason: collision with root package name */
    public int f40922l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f40923m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f40924n;

    /* renamed from: o, reason: collision with root package name */
    public a0 f40925o;

    /* renamed from: p, reason: collision with root package name */
    public z f40926p;

    /* renamed from: q, reason: collision with root package name */
    public int f40927q;

    /* renamed from: r, reason: collision with root package name */
    public int f40928r;

    /* renamed from: s, reason: collision with root package name */
    public long f40929s;

    public k(a[] aVarArr, com.smartdigimkt.y0.g gVar, c cVar) {
        Integer.toHexString(System.identityHashCode(this));
        int i2 = com.smartdigimkt.a1.t.f39303a;
        if (aVarArr.length <= 0) {
            throw new IllegalStateException();
        }
        this.f40912b = gVar;
        this.f40921k = false;
        this.f40917g = new CopyOnWriteArraySet();
        com.smartdigimkt.y0.m mVar = new com.smartdigimkt.y0.m(new f0[aVarArr.length], new com.smartdigimkt.y0.h[aVarArr.length], null);
        this.f40913c = mVar;
        this.f40918h = new m0();
        this.f40919i = new l0();
        this.f40925o = a0.f40850e;
        i iVar = new i(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f40914d = iVar;
        com.smartdigimkt.w0.k0 k0Var = com.smartdigimkt.w0.k0.f44843d;
        this.f40926p = new z(0L, mVar);
        this.f40920j = new ArrayDeque();
        p pVar = new p(aVarArr, gVar, mVar, cVar, this.f40921k, iVar, this);
        this.f40915e = pVar;
        this.f40916f = new Handler(pVar.f40964g.getLooper());
    }

    public final void a(long j2) {
        int iC = c();
        n0 n0Var = this.f40926p.f41047a;
        if (iC < 0 || (!n0Var.c() && iC >= n0Var.b())) {
            throw new u();
        }
        this.f40924n = true;
        this.f40922l++;
        if (i()) {
            this.f40914d.obtainMessage(0, 1, -1, this.f40926p).sendToTarget();
            return;
        }
        this.f40927q = iC;
        if (n0Var.c()) {
            this.f40929s = j2 != -9223372036854775807L ? j2 : 0L;
            this.f40928r = 0;
        } else {
            long jA = j2 == -9223372036854775807L ? n0Var.a(iC, this.f40918h, 0L).f40944e : b.a(j2);
            Pair pairA = n0Var.a(this.f40918h, this.f40919i, iC, jA, 0L);
            this.f40929s = b.b(jA);
            this.f40928r = ((Integer) pairA.first).intValue();
        }
        this.f40915e.f40963f.f39298a.obtainMessage(3, new o(n0Var, iC, b.a(j2))).sendToTarget();
        Iterator it = this.f40917g.iterator();
        while (it.hasNext()) {
            ((c0) it.next()).e();
        }
    }

    @Override // com.smartdigimkt.j0.h
    public final long b() {
        if (!i()) {
            return f();
        }
        z zVar = this.f40926p;
        zVar.f41047a.a(zVar.f41049c.f44847a, this.f40919i, false);
        return b.b(this.f40926p.f41051e) + b.b(this.f40919i.f40935d);
    }

    @Override // com.smartdigimkt.j0.h
    public final int c() {
        if (j()) {
            return this.f40927q;
        }
        z zVar = this.f40926p;
        return zVar.f41047a.a(zVar.f41049c.f44847a, this.f40919i, false).f40933b;
    }

    @Override // com.smartdigimkt.j0.h
    public final long d() {
        if (j()) {
            return this.f40929s;
        }
        long jB = b.b(this.f40926p.f41057k);
        if (this.f40926p.f41049c.a()) {
            return jB;
        }
        z zVar = this.f40926p;
        zVar.f41047a.a(zVar.f41049c.f44847a, this.f40919i, false);
        return b.b(this.f40919i.f40935d) + jB;
    }

    @Override // com.smartdigimkt.j0.h
    public final n0 e() {
        return this.f40926p.f41047a;
    }

    @Override // com.smartdigimkt.j0.h
    public final long f() {
        if (j()) {
            return this.f40929s;
        }
        long jB = b.b(this.f40926p.f41056j);
        if (this.f40926p.f41049c.a()) {
            return jB;
        }
        z zVar = this.f40926p;
        zVar.f41047a.a(zVar.f41049c.f44847a, this.f40919i, false);
        return b.b(this.f40919i.f40935d) + jB;
    }

    @Override // com.smartdigimkt.j0.h
    public final int g() {
        if (i()) {
            return this.f40926p.f41049c.f44848b;
        }
        return -1;
    }

    public final long h() {
        n0 n0Var = this.f40926p.f41047a;
        if (n0Var.c()) {
            return -9223372036854775807L;
        }
        if (!i()) {
            return b.b(n0Var.a(c(), this.f40918h, 0L).f40945f);
        }
        com.smartdigimkt.w0.m mVar = this.f40926p.f41049c;
        n0Var.a(mVar.f44847a, this.f40919i, false);
        l0 l0Var = this.f40919i;
        l0Var.f40936e.f45057c[mVar.f44848b].getClass();
        return b.b(-9223372036854775807L);
    }

    public final boolean i() {
        return !j() && this.f40926p.f41049c.a();
    }

    public final boolean j() {
        return this.f40926p.f41047a.c() || this.f40922l > 0;
    }

    @Override // com.smartdigimkt.j0.h
    public final int a() {
        if (i()) {
            return this.f40926p.f41049c.f44849c;
        }
        return -1;
    }

    public final z a(boolean z2, boolean z3, int i2) {
        int i3;
        if (z2) {
            this.f40927q = 0;
            this.f40928r = 0;
            this.f40929s = 0L;
        } else {
            this.f40927q = c();
            if (j()) {
                i3 = this.f40928r;
            } else {
                i3 = this.f40926p.f41049c.f44847a;
            }
            this.f40928r = i3;
            this.f40929s = f();
        }
        n0 n0Var = z3 ? n0.f40951a : this.f40926p.f41047a;
        Object obj = z3 ? null : this.f40926p.f41048b;
        z zVar = this.f40926p;
        return new z(n0Var, obj, zVar.f41049c, zVar.f41050d, zVar.f41051e, i2, false, z3 ? com.smartdigimkt.w0.k0.f44843d : zVar.f41054h, z3 ? this.f40913c : zVar.f41055i);
    }

    public final void a(z zVar, boolean z2, int i2, int i3, boolean z3, boolean z4) {
        try {
            synchronized (this.f40911a) {
                try {
                    boolean zIsEmpty = this.f40920j.isEmpty();
                    this.f40920j.addLast(new j(zVar, this.f40926p, this.f40917g, this.f40912b, z2, i2, i3, z3, this.f40921k, z4));
                    this.f40926p = zVar;
                    if (zIsEmpty) {
                        while (!this.f40920j.isEmpty()) {
                            ((j) this.f40920j.peekFirst()).a();
                            this.f40920j.removeFirst();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }
}
