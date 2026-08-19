package com.byazt.tt;

import com.byazt.cd.v;
import com.byazt.hq.cx;
import com.byazt.hq.e;
import com.byazt.hq.nu;
import com.byazt.hq.sz;
import com.byazt.hq.u;
import com.byazt.tt.a;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1478, 94})
/* loaded from: classes3.dex */
public final class eb {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ boolean f25978j = true;

    /* renamed from: a, reason: collision with root package name */
    public nu f25979a;

    /* renamed from: e, reason: collision with root package name */
    public int f25980e;
    public final e eb;
    public jx gu;
    public final com.byazt.hq.hp hp;
    public boolean jl;
    public final u jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f25981k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.hq.w f25982l;

    /* renamed from: q, reason: collision with root package name */
    public final a f25983q;

    /* renamed from: s, reason: collision with root package name */
    public final Object f25984s;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.pn.jx f25985v;

    /* renamed from: w, reason: collision with root package name */
    public a.hp f25986w;
    public boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 1478, 131})
    public static final class hp extends WeakReference<eb> {
        public final Object hp;

        public hp(eb ebVar, Object obj) {
            super(ebVar);
            this.hp = obj;
        }
    }

    public eb(e eVar, com.byazt.hq.hp hpVar, com.byazt.hq.w wVar, u uVar, Object obj) throws IOException {
        this.eb = eVar;
        this.hp = hpVar;
        this.f25982l = wVar;
        this.jx = uVar;
        this.f25983q = new a(hpVar, s(), wVar, uVar);
        this.f25984s = obj;
    }

    private Socket eb() {
        if (!f25978j && !Thread.holdsLock(this.eb)) {
            throw new AssertionError();
        }
        jx jxVar = this.gu;
        if (jxVar == null || !jxVar.hp) {
            return null;
        }
        return hp(false, false, true);
    }

    private j s() {
        return com.byazt.ru.hp.hp.hp(this.eb);
    }

    public boolean a() {
        if (this.f25979a != null) {
            return true;
        }
        a.hp hpVar = this.f25986w;
        return (hpVar != null && hpVar.hp()) || this.f25983q.hp();
    }

    public com.byazt.pn.jx hp(cx cxVar, sz.hp hpVar, boolean z2) {
        try {
            com.byazt.pn.jx jxVarHp = hp(hpVar.l(), hpVar.jx(), hpVar.j(), cxVar.vv(), z2).hp(cxVar, hpVar, this);
            synchronized (this.eb) {
                this.f25985v = jxVarHp;
            }
            return jxVarHp;
        } catch (IOException e2) {
            throw new w(e2);
        }
    }

    public void j() throws IOException {
        Socket socketHp;
        synchronized (this.eb) {
            socketHp = hp(true, false, false);
        }
        com.byazt.ru.jx.hp(socketHp);
    }

    public void jx() throws IOException {
        Socket socketHp;
        synchronized (this.eb) {
            socketHp = hp(false, true, false);
        }
        com.byazt.ru.jx.hp(socketHp);
    }

    public synchronized jx l() {
        return this.gu;
    }

    public String toString() {
        jx jxVarL = l();
        return jxVarL != null ? jxVarL.toString() : this.hp.toString();
    }

    public void w() {
        com.byazt.pn.jx jxVar;
        jx jxVar2;
        synchronized (this.eb) {
            this.f25981k = true;
            jxVar = this.f25985v;
            jxVar2 = this.gu;
        }
        if (jxVar != null) {
            jxVar.jx();
        } else if (jxVar2 != null) {
            jxVar2.l();
        }
    }

    private void l(jx jxVar) {
        int size = jxVar.f25988j.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (jxVar.f25988j.get(i2).get() == this) {
                jxVar.f25988j.remove(i2);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private jx hp(int i2, int i3, int i4, boolean z2, boolean z3) throws IOException {
        while (true) {
            jx jxVarHp = hp(i2, i3, i4, z2);
            synchronized (this.eb) {
                try {
                    if (jxVarHp.f25990l == 0) {
                        return jxVarHp;
                    }
                    if (jxVarHp.hp(z3)) {
                        return jxVarHp;
                    }
                    j();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private jx hp(int i2, int i3, int i4, boolean z2) throws IOException {
        Socket socketEb;
        jx jxVar;
        Socket socketHp;
        nu nuVarL;
        boolean z3;
        boolean z4;
        jx jxVar2;
        a.hp hpVar;
        synchronized (this.eb) {
            try {
                if (!this.zy) {
                    if (this.f25985v == null) {
                        if (!this.f25981k) {
                            socketEb = eb();
                            jxVar = this.gu;
                            socketHp = null;
                            if (jxVar == null) {
                                jxVar = null;
                            }
                            if (jxVar == null) {
                                com.byazt.ru.hp.hp.hp(this.eb, this.hp, this, null);
                                jx jxVar3 = this.gu;
                                if (jxVar3 != null) {
                                    z3 = true;
                                    jxVar = jxVar3;
                                    nuVarL = null;
                                } else {
                                    nuVarL = this.f25979a;
                                }
                            } else {
                                nuVarL = null;
                            }
                            z3 = false;
                        } else {
                            throw new IOException("Canceled");
                        }
                    } else {
                        throw new IllegalStateException("codec != null");
                    }
                } else {
                    throw new IllegalStateException("released");
                }
            } finally {
            }
        }
        com.byazt.ru.jx.hp(socketEb);
        if (jxVar != null) {
            return jxVar;
        }
        if (nuVarL != null || ((hpVar = this.f25986w) != null && hpVar.hp())) {
            z4 = false;
        } else {
            this.f25986w = this.f25983q.l();
            z4 = true;
        }
        synchronized (this.eb) {
            try {
                if (this.f25981k) {
                    throw new IOException("Canceled");
                }
                if (z4) {
                    List<nu> listJx = this.f25986w.jx();
                    int size = listJx.size();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size) {
                            break;
                        }
                        nu nuVar = listJx.get(i5);
                        com.byazt.ru.hp.hp.hp(this.eb, this.hp, this, nuVar);
                        jx jxVar4 = this.gu;
                        if (jxVar4 != null) {
                            this.f25979a = nuVar;
                            z3 = true;
                            jxVar = jxVar4;
                            break;
                        }
                        i5++;
                    }
                }
                if (!z3) {
                    if (nuVarL == null) {
                        nuVarL = this.f25986w.l();
                    }
                    this.f25979a = nuVarL;
                    this.f25980e = 0;
                    jxVar = new jx(this.eb, nuVarL);
                    hp(jxVar, false);
                }
                jxVar2 = jxVar;
            } finally {
            }
        }
        if (z3) {
            return jxVar2;
        }
        jxVar2.hp(i2, i3, i4, z2, this.f25982l, this.jx);
        s().l(jxVar2.hp());
        synchronized (this.eb) {
            try {
                this.jl = true;
                com.byazt.ru.hp.hp.l(this.eb, jxVar2);
                if (jxVar2.w()) {
                    socketHp = com.byazt.ru.hp.hp.hp(this.eb, this.hp, this);
                    jxVar2 = this.gu;
                }
            } finally {
            }
        }
        com.byazt.ru.jx.hp(socketHp);
        return jxVar2;
    }

    public void hp(boolean z2, com.byazt.pn.jx jxVar, long j2, IOException iOException) throws IOException {
        Socket socketHp;
        synchronized (this.eb) {
            if (jxVar != null) {
                try {
                    if (jxVar == this.f25985v) {
                        if (!z2) {
                            this.gu.f25990l++;
                        }
                        socketHp = hp(z2, false, true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            throw new IllegalStateException("expected " + this.f25985v + " but was " + jxVar);
        }
        com.byazt.ru.jx.hp(socketHp);
        if (iOException != null) {
            this.jx.hp(this.f25982l, iOException);
        }
    }

    public com.byazt.pn.jx hp() {
        com.byazt.pn.jx jxVar;
        synchronized (this.eb) {
            jxVar = this.f25985v;
        }
        return jxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket hp(boolean r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            boolean r0 = com.byazt.tt.eb.f25978j
            if (r0 != 0) goto L13
            com.byazt.hq.e r0 = r1.eb
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 == 0) goto Ld
            goto L13
        Ld:
            java.lang.AssertionError r2 = new java.lang.AssertionError
            r2.<init>()
            throw r2
        L13:
            r0 = 0
            if (r4 == 0) goto L18
            r1.f25985v = r0
        L18:
            r4 = 1
            if (r3 == 0) goto L1d
            r1.zy = r4
        L1d:
            com.byazt.tt.jx r3 = r1.gu
            if (r3 == 0) goto L5d
            if (r2 == 0) goto L25
            r3.hp = r4
        L25:
            com.byazt.pn.jx r2 = r1.f25985v
            if (r2 != 0) goto L5d
            boolean r2 = r1.zy
            if (r2 != 0) goto L31
            boolean r2 = r3.hp
            if (r2 == 0) goto L5d
        L31:
            r1.l(r3)
            com.byazt.tt.jx r2 = r1.gu
            java.util.List<java.lang.ref.Reference<com.byazt.tt.eb>> r2 = r2.f25988j
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L59
            com.byazt.tt.jx r2 = r1.gu
            long r3 = java.lang.System.nanoTime()
            r2.f25994w = r3
            com.byazt.ru.hp r2 = com.byazt.ru.hp.hp
            com.byazt.hq.e r3 = r1.eb
            com.byazt.tt.jx r4 = r1.gu
            boolean r2 = r2.hp(r3, r4)
            if (r2 == 0) goto L59
            com.byazt.tt.jx r2 = r1.gu
            java.net.Socket r2 = r2.jx()
            goto L5a
        L59:
            r2 = r0
        L5a:
            r1.gu = r0
            return r2
        L5d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tt.eb.hp(boolean, boolean, boolean):java.net.Socket");
    }

    public void hp(IOException iOException) throws IOException {
        boolean z2;
        Socket socketHp;
        synchronized (this.eb) {
            try {
                if (iOException instanceof v) {
                    com.byazt.cd.l lVar = ((v) iOException).hp;
                    com.byazt.cd.l lVar2 = com.byazt.cd.l.REFUSED_STREAM;
                    if (lVar == lVar2) {
                        this.f25980e++;
                    }
                    if (lVar != lVar2 || this.f25980e > 1) {
                        this.f25979a = null;
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    jx jxVar = this.gu;
                    if (jxVar != null && (!jxVar.w() || (iOException instanceof com.byazt.cd.hp))) {
                        if (this.gu.f25990l == 0) {
                            nu nuVar = this.f25979a;
                            if (nuVar != null && iOException != null) {
                                this.f25983q.hp(nuVar, iOException);
                            }
                            this.f25979a = null;
                        }
                        z2 = true;
                    }
                    z2 = false;
                }
                socketHp = hp(z2, false, true);
            } catch (Throwable th) {
                throw th;
            }
        }
        com.byazt.ru.jx.hp(socketHp);
    }

    public void hp(jx jxVar, boolean z2) {
        if (!f25978j && !Thread.holdsLock(this.eb)) {
            throw new AssertionError();
        }
        if (this.gu == null) {
            this.gu = jxVar;
            this.jl = z2;
            jxVar.f25988j.add(new hp(this, this.f25984s));
            return;
        }
        throw new IllegalStateException();
    }

    public Socket hp(jx jxVar) {
        if (!f25978j && !Thread.holdsLock(this.eb)) {
            throw new AssertionError();
        }
        if (this.f25985v == null && this.gu.f25988j.size() == 1) {
            Reference<eb> reference = this.gu.f25988j.get(0);
            Socket socketHp = hp(true, false, false);
            this.gu = jxVar;
            jxVar.f25988j.add(reference);
            return socketHp;
        }
        throw new IllegalStateException();
    }
}
