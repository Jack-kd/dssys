package com.byazt.jwq;

import android.app.Activity;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 740, 28})
/* loaded from: classes.dex */
public abstract class hp extends l {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21728a;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21729j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21730l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21731w;

    public hp(Activity activity, mp mpVar) {
        super(activity, mpVar);
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void j(boolean z2) {
        this.f21731w = z2;
    }

    public void jx(boolean z2) {
        this.f21728a = z2;
    }

    public void l(int i2) {
        this.f21730l = i2;
    }

    public hp(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    public void l(boolean z2) {
        this.f21729j = z2;
    }

    @Override // com.byazt.jwq.l
    public l.hp l(e eVar) {
        zy zyVar = new zy(this.f21736s, this.eb);
        zyVar.l(this.f21729j);
        zyVar.hp(this.jx);
        zyVar.hp(this.hp);
        zyVar.l(this.f21730l);
        zyVar.j(this.gu);
        zyVar.jx(this.jl);
        zyVar.hp(this.f21737u);
        zyVar.l(this.f21738v);
        zyVar.jx(this.f21728a);
        zyVar.j(this.f21731w);
        return zyVar.l(eVar);
    }
}
