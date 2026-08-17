package com.byazt.mh;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1216, 54})
/* loaded from: classes3.dex */
public class a extends w {
    public static final int hp = w.hp("fcTL");

    /* renamed from: e, reason: collision with root package name */
    public int f23014e;
    public short gu;
    public short jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public byte f23015k;

    /* renamed from: l, reason: collision with root package name */
    public int f23016l;

    /* renamed from: q, reason: collision with root package name */
    public int f23017q;

    /* renamed from: s, reason: collision with root package name */
    public int f23018s;
    public byte zy;

    @Override // com.byazt.mh.w
    public void hp(com.byazt.dk.hp hpVar) throws IOException {
        this.f23016l = hpVar.l();
        this.jx = hpVar.l();
        this.f23018s = hpVar.l();
        this.f23017q = hpVar.l();
        this.f23014e = hpVar.l();
        this.gu = hpVar.a_();
        this.jl = hpVar.a_();
        this.zy = hpVar.c_();
        this.f23015k = hpVar.c_();
    }
}
