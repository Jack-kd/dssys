package com.byazt.go;

import android.content.Context;
import android.view.View;
import com.byazt.xci.e;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 1971, 34})
/* loaded from: classes2.dex */
public class l extends j {
    public final mp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20523j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f20524l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.pf.jx f20525w;

    public l(Context context, mp mpVar, String str, int i2) {
        super(context);
        this.f20523j = 1;
        this.hp = mpVar;
        this.f20524l = str;
        this.jx = i2;
        w();
    }

    private void w() {
        com.byazt.pf.jx jxVarHp = this.f20519s.hp(this.hp, this.f20518a, this, hp());
        this.f20525w = jxVarHp;
        jxVarHp.hp(this.eb);
        ((com.byazt.ey.hp) hp(com.byazt.ey.hp.class)).hp(this.f20524l);
        ((com.byazt.sw.hp) hp(com.byazt.sw.hp.class)).hp(this.f20524l);
        ((com.byazt.sw.hp) hp(com.byazt.sw.hp.class)).hp(this.jx);
        if (hp()) {
            ((com.byazt.sw.hp) hp(com.byazt.sw.hp.class)).j(true);
        }
    }

    public boolean hp() {
        return false;
    }

    public void j(int i2) {
        this.eb.l(i2);
    }

    public void jx(int i2) {
        this.eb.jx(i2);
    }

    public e l() {
        return this.eb;
    }

    public void hp(int i2) {
        this.f20523j = i2;
        e eVar = this.eb;
        if (eVar != null) {
            eVar.hp(i2);
        }
    }

    public void l(View view) {
        this.eb.hp(view);
    }

    public void l(int i2) {
        this.eb.j(i2);
    }

    public void hp(e eVar) {
        this.eb = eVar;
    }

    public void hp(View view) {
        this.eb.l(view);
    }

    @Override // com.byazt.go.j
    public void hp(View view, e eVar) {
        if (mp.a(this.hp)) {
            return;
        }
        ((com.byazt.sw.hp) hp(com.byazt.sw.hp.class)).hp(((com.byazt.ey.hp) hp(com.byazt.ey.hp.class)).w());
        this.f20525w.hp(view);
        if (eVar == null) {
            eVar = new e();
        }
        this.f20525w.hp(eVar);
        this.f20525w.l();
        mp.eb(this.hp);
    }
}
