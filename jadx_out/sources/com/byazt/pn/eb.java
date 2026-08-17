package com.byazt.pn;

import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.u;
import java.io.IOException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 741, 94})
/* loaded from: classes3.dex */
public final class eb implements sz.hp {

    /* renamed from: a, reason: collision with root package name */
    public final o f24449a;

    /* renamed from: e, reason: collision with root package name */
    public final int f24450e;
    public final com.byazt.hq.w eb;
    public final int gu;
    public final List<sz> hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.tt.jx f24451j;
    public int jl;
    public final jx jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.tt.eb f24452l;

    /* renamed from: q, reason: collision with root package name */
    public final int f24453q;

    /* renamed from: s, reason: collision with root package name */
    public final u f24454s;

    /* renamed from: w, reason: collision with root package name */
    public final int f24455w;

    public eb(List<sz> list, com.byazt.tt.eb ebVar, jx jxVar, com.byazt.tt.jx jxVar2, int i2, o oVar, com.byazt.hq.w wVar, u uVar, int i3, int i4, int i5) {
        this.hp = list;
        this.f24451j = jxVar2;
        this.f24452l = ebVar;
        this.jx = jxVar;
        this.f24455w = i2;
        this.f24449a = oVar;
        this.eb = wVar;
        this.f24454s = uVar;
        this.f24453q = i3;
        this.f24450e = i4;
        this.gu = i5;
    }

    public com.byazt.tt.eb a() {
        return this.f24452l;
    }

    @Override // com.byazt.hq.sz.hp
    public com.byazt.hq.w call() {
        return this.eb;
    }

    public jx eb() {
        return this.jx;
    }

    @Override // com.byazt.hq.sz.hp
    public o hp() {
        return this.f24449a;
    }

    @Override // com.byazt.hq.sz.hp
    public int j() {
        return this.gu;
    }

    @Override // com.byazt.hq.sz.hp
    public int jx() {
        return this.f24450e;
    }

    @Override // com.byazt.hq.sz.hp
    public int l() {
        return this.f24453q;
    }

    public u s() {
        return this.f24454s;
    }

    public com.byazt.hq.q w() {
        return this.f24451j;
    }

    @Override // com.byazt.hq.sz.hp
    public hq hp(o oVar) throws IOException {
        return hp(oVar, this.f24452l, this.jx, this.f24451j);
    }

    public hq hp(o oVar, com.byazt.tt.eb ebVar, jx jxVar, com.byazt.tt.jx jxVar2) throws IOException {
        if (this.f24455w < this.hp.size()) {
            this.jl++;
            if (this.jx != null && !this.f24451j.hp(oVar.hp())) {
                throw new IllegalStateException("network interceptor " + this.hp.get(this.f24455w - 1) + " must retain the same host and port");
            }
            if (this.jx != null && this.jl > 1) {
                throw new IllegalStateException("network interceptor " + this.hp.get(this.f24455w - 1) + " must call proceed() exactly once");
            }
            eb ebVar2 = new eb(this.hp, ebVar, jxVar, jxVar2, this.f24455w + 1, oVar, this.eb, this.f24454s, this.f24453q, this.f24450e, this.gu);
            sz szVar = this.hp.get(this.f24455w);
            hq hqVarHp = szVar.hp(ebVar2);
            if (jxVar != null && this.f24455w + 1 < this.hp.size() && ebVar2.jl != 1) {
                throw new IllegalStateException("network interceptor " + szVar + " must call proceed() exactly once");
            }
            if (hqVarHp == null) {
                throw new NullPointerException("interceptor " + szVar + " returned a null response");
            }
            if (hqVarHp.s() != null) {
                return hqVarHp;
            }
            throw new IllegalStateException("interceptor " + szVar + " returned a response with no body");
        }
        throw new AssertionError();
    }
}
