package com.byazt.vu;

@com.byazt.kj.hp(hp = {0, 1, 874, 54})
/* loaded from: classes3.dex */
public class a extends hp {

    /* renamed from: a, reason: collision with root package name */
    public long f26668a;
    public long eb;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.xci.hp f26669j;

    /* renamed from: q, reason: collision with root package name */
    public long f26670q;

    /* renamed from: s, reason: collision with root package name */
    public long f26671s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f26672w;

    public a(com.byazt.xci.hp hpVar, boolean z2) {
        this.f26669j = hpVar;
        if (hpVar != null && hpVar.l() != null && !this.f26669j.l().isEmpty()) {
            this.f26679l = this.f26669j.l().get(0);
        }
        this.f26672w = z2;
    }

    public long a() {
        return this.f26668a;
    }

    public long eb() {
        return this.eb;
    }

    public com.byazt.xci.hp j() {
        return this.f26669j;
    }

    public void jx(long j2) {
        this.eb = j2;
    }

    public void l(long j2) {
        this.f26668a = j2;
    }

    public long q() {
        return this.f26670q;
    }

    public long s() {
        return this.f26671s;
    }

    public boolean w() {
        return this.f26672w;
    }

    public void j(long j2) {
        this.f26671s = j2;
    }

    public void w(long j2) {
        this.f26670q = j2;
    }
}
