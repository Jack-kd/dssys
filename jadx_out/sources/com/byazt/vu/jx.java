package com.byazt.vu;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 874, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: a, reason: collision with root package name */
    public Context f26687a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.jt.l f26688e;
    public String eb;
    public boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public s f26689j;
    public boolean jl;

    /* renamed from: q, reason: collision with root package name */
    public int f26690q;

    /* renamed from: s, reason: collision with root package name */
    public int f26691s = 1;

    /* renamed from: w, reason: collision with root package name */
    public a f26692w;

    public jx(Context context, String str, a aVar, s sVar, com.byazt.jt.l lVar, boolean z2) {
        this.f26687a = context;
        this.eb = str;
        this.f26692w = aVar;
        this.gu = aVar.w();
        this.f26679l = aVar.l();
        this.f26689j = sVar;
        this.f26688e = lVar;
        this.jl = z2;
    }

    public String a() {
        return this.eb;
    }

    public boolean e() {
        return this.jl;
    }

    public com.byazt.jt.l eb() {
        return this.f26688e;
    }

    public Context getContext() {
        return this.f26687a;
    }

    public a j() {
        return this.f26692w;
    }

    public boolean q() {
        return this.gu;
    }

    public int s() {
        return this.f26690q;
    }

    public s w() {
        return this.f26689j;
    }
}
