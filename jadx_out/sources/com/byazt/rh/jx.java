package com.byazt.rh;

import com.byazt.pc.w;
import com.byazt.xci.s;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1677, 30})
/* loaded from: classes3.dex */
public class jx extends l {
    public final AtomicBoolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f25200j;
    public final AtomicBoolean jl;
    public final AtomicBoolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f25201l;

    public jx(w wVar, s.jx jxVar) {
        super(wVar);
        this.hp = new AtomicBoolean(false);
        this.f25201l = new AtomicBoolean(false);
        this.jx = new AtomicBoolean(false);
        this.f25200j = new AtomicBoolean(false);
        this.jl = new AtomicBoolean(false);
        this.f25206w = jxVar;
    }

    @Override // com.byazt.rh.l
    public void hp(int i2, String str) {
        this.f25204q = i2;
        this.f25203e = str;
        this.f25201l.set(true);
        this.jl.set(true);
        hp();
    }

    @Override // com.byazt.rh.l
    public void jx() {
        this.jl.set(true);
        hp();
    }

    public void hp() {
        com.byazt.pc.jx jxVar;
        if (this.f25200j.get() && this.gu != 2 && (jxVar = this.eb) != null) {
            hp(jxVar, 2);
            return;
        }
        if (this.jl.get()) {
            com.byazt.pc.jx jxVar2 = this.f25202a;
            if (jxVar2 != null) {
                hp(jxVar2, 1);
            } else if (this.jx.get()) {
                hp((com.byazt.pc.jx) null, 3);
            }
        }
    }

    private void hp(com.byazt.pc.jx jxVar, int i2) {
        if (!this.hp.compareAndSet(false, true)) {
            if (jxVar != null) {
                jxVar.jx();
                return;
            }
            return;
        }
        this.gu = i2;
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

    @Override // com.byazt.rh.l
    public void hp(boolean z2) {
        if (z2) {
            this.f25200j.set(true);
            hp();
        } else {
            this.jx.set(true);
            hp();
        }
    }
}
