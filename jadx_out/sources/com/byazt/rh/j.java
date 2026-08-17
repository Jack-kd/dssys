package com.byazt.rh;

import com.byazt.pc.w;
import com.byazt.xci.s;
import com.byazt.ymw.e;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1677, 38})
/* loaded from: classes3.dex */
public class j extends l implements Runnable {
    public final AtomicBoolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f25197j;
    public final AtomicBoolean jl;
    public final AtomicBoolean jx;

    /* renamed from: k, reason: collision with root package name */
    public final String f25198k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f25199l;
    public final int zy;

    public j(w wVar, s.jx jxVar, int i2, String str) {
        super(wVar);
        this.hp = new AtomicBoolean(false);
        this.f25199l = new AtomicBoolean(false);
        this.jx = new AtomicBoolean(false);
        this.f25197j = new AtomicBoolean(false);
        this.jl = new AtomicBoolean(false);
        this.f25206w = jxVar;
        this.zy = i2;
        this.f25198k = str;
    }

    private long w() {
        long jHp = com.byazt.un.l.hp().hp(this.zy, this.f25198k);
        if (jHp > 0) {
            return jHp;
        }
        s.jx jxVar = this.f25206w;
        if (jxVar == null || jxVar.a() <= 0) {
            return 10000L;
        }
        return this.f25206w.a();
    }

    @Override // com.byazt.rh.l
    public void hp(int i2, String str) {
        this.f25204q = i2;
        this.f25203e = str;
        this.jx.set(true);
        this.jl.set(true);
        l();
    }

    @Override // com.byazt.rh.l
    public void jx() {
        this.jl.set(true);
        l();
    }

    public void l() {
        com.byazt.pc.jx jxVar;
        if (!this.jl.get()) {
            if (this.hp.get() && this.f25197j.get()) {
                if (s.hp(this.gu).hp("forbid_realtime_use_cache", new s.l.hp().hp(-666).hp()) || (jxVar = this.eb) == null) {
                    return;
                }
                hp(jxVar, 2);
                return;
            }
            return;
        }
        e.l().removeCallbacks(this);
        com.byazt.pc.jx jxVar2 = this.f25202a;
        if (jxVar2 != null) {
            hp(jxVar2, 1);
            return;
        }
        if (this.f25197j.get()) {
            if (this.jx.get()) {
                if (this.f25206w.hp("forbid_realtime_use_cache", new s.l.hp().hp(this.f25204q).hp())) {
                    hp((com.byazt.pc.jx) null, 3);
                    return;
                }
            }
            com.byazt.pc.jx jxVar3 = this.eb;
            if (jxVar3 != null) {
                hp(jxVar3, 2);
            } else {
                hp((com.byazt.pc.jx) null, 3);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.hp.set(true);
        l();
    }

    public void hp() {
        e.l().postDelayed(this, w());
    }

    private void hp(com.byazt.pc.jx jxVar, int i2) {
        com.byazt.pc.jx jxVar2;
        com.byazt.pc.jx jxVar3;
        if (this.f25199l.compareAndSet(false, true)) {
            this.gu = i2;
            if (i2 == 3) {
                w wVar = this.f25205s;
                if (wVar != null) {
                    wVar.hp(this.f25204q, this.f25203e);
                }
            } else if (jxVar != null) {
                jxVar.hp();
            }
            if (i2 == 1 && (jxVar3 = this.eb) != null) {
                jxVar3.jx();
            }
            if (i2 != 2 || (jxVar2 = this.f25202a) == null) {
                return;
            }
            jxVar2.jx();
            return;
        }
        if (i2 == this.gu || jxVar == null) {
            return;
        }
        jxVar.jx();
    }

    @Override // com.byazt.rh.l
    public void hp(boolean z2) {
        this.f25197j.set(true);
        l();
    }
}
