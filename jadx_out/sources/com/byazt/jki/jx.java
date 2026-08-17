package com.byazt.jki;

import com.byazt.jz.sz;
import com.byazt.td.a;
import com.byazt.xci.mp;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 1972, 30})
/* loaded from: classes.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public final a f21597a;
    public final com.byazt.vsq.hp eb;

    /* renamed from: j, reason: collision with root package name */
    public final int f21598j;

    /* renamed from: w, reason: collision with root package name */
    public int f21600w;
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f21599l = 0;
    public int jx = 1000;

    public jx(boolean z2, mp mpVar, a aVar, com.byazt.vsq.hp hpVar) {
        this.f21597a = aVar;
        this.eb = hpVar;
        this.f21598j = z2 ? sz.l().j(ky.zy(mpVar)) : sz.l().w(ky.zy(mpVar));
    }

    public int a() {
        return this.f21599l;
    }

    public void eb() {
        this.hp++;
    }

    public long hp() {
        return this.f21597a.hq();
    }

    public int j() {
        return this.eb.xh();
    }

    public int jx() {
        return this.f21598j;
    }

    public int l() {
        return this.f21600w;
    }

    public int q() {
        return this.jx;
    }

    public void s() {
        this.f21599l++;
    }

    public int w() {
        return this.hp;
    }

    public void hp(int i2) {
        this.f21600w += i2;
    }

    public void jx(int i2) {
        this.jx = i2;
    }

    public void l(int i2) {
        this.f21599l = i2;
    }
}
