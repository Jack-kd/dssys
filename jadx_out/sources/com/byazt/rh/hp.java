package com.byazt.rh;

import com.byazt.pc.w;
import com.byazt.xci.s;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1677, 28})
/* loaded from: classes3.dex */
public abstract class hp extends l {
    public final AtomicBoolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f25195j;
    public final AtomicBoolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f25196l;

    public hp(w wVar, s.jx jxVar) {
        super(wVar);
        this.hp = new AtomicBoolean(false);
        this.f25196l = new AtomicBoolean(false);
        this.jx = new AtomicBoolean(false);
        this.f25195j = new AtomicBoolean(false);
        this.f25206w = jxVar;
    }

    public abstract void hp();

    @Override // com.byazt.rh.l
    public void hp(int i2, String str) {
        this.f25204q = i2;
        this.f25203e = str;
        this.f25195j.set(true);
        l();
    }

    @Override // com.byazt.rh.l
    public void jx() {
        this.f25195j.set(true);
        l();
    }

    public void l() {
        com.byazt.pc.jx jxVar;
        if (this.jx.get() && (jxVar = this.eb) != null) {
            hp(jxVar, 2);
            return;
        }
        if (this.f25195j.get()) {
            com.byazt.pc.jx jxVar2 = this.f25202a;
            if (jxVar2 != null) {
                hp(jxVar2, 1);
            } else {
                hp((com.byazt.pc.jx) null, 3);
            }
        }
    }

    private void hp(com.byazt.pc.jx jxVar, int i2) {
        if (this.hp.compareAndSet(false, true)) {
            if (i2 != 3) {
                if (jxVar != null) {
                    jxVar.hp();
                }
            } else {
                w wVar = this.f25205s;
                if (wVar != null) {
                    wVar.hp(this.f25204q, this.f25203e);
                }
            }
        }
    }

    @Override // com.byazt.rh.l
    public void hp(boolean z2) {
        if (z2) {
            this.jx.set(true);
            l();
        } else {
            this.f25196l.set(true);
            hp();
        }
    }
}
