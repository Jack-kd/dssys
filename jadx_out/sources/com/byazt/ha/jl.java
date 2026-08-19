package com.byazt.ha;

import android.graphics.PointF;
import com.byazt.dt.u;

@com.byazt.kj.hp(hp = {0, 1, 1209, 19})
/* loaded from: classes2.dex */
public class jl implements com.byazt.mo.jx {

    /* renamed from: a, reason: collision with root package name */
    public final l f20644a;
    public final l eb;
    public final w hp;

    /* renamed from: j, reason: collision with root package name */
    public final l f20645j;
    public final eb jx;

    /* renamed from: l, reason: collision with root package name */
    public final zy<PointF, PointF> f20646l;

    /* renamed from: q, reason: collision with root package name */
    public final l f20647q;

    /* renamed from: s, reason: collision with root package name */
    public final l f20648s;

    /* renamed from: w, reason: collision with root package name */
    public final j f20649w;

    public jl() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public l a() {
        return this.f20648s;
    }

    public u e() {
        return new u(this);
    }

    public l eb() {
        return this.f20647q;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return null;
    }

    public l j() {
        return this.f20645j;
    }

    public eb jx() {
        return this.jx;
    }

    public zy<PointF, PointF> l() {
        return this.f20646l;
    }

    public l q() {
        return this.eb;
    }

    public l s() {
        return this.f20644a;
    }

    public j w() {
        return this.f20649w;
    }

    public jl(w wVar, zy<PointF, PointF> zyVar, eb ebVar, l lVar, j jVar, l lVar2, l lVar3, l lVar4, l lVar5) {
        this.hp = wVar;
        this.f20646l = zyVar;
        this.jx = ebVar;
        this.f20645j = lVar;
        this.f20649w = jVar;
        this.f20648s = lVar2;
        this.f20647q = lVar3;
        this.f20644a = lVar4;
        this.eb = lVar5;
    }

    public w hp() {
        return this.hp;
    }
}
