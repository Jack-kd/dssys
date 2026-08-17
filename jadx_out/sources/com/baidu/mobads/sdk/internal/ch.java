package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.an;

/* loaded from: classes2.dex */
class ch implements an.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ double f11315a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cb f11316b;

    public ch(cb cbVar, double d2) {
        this.f11316b = cbVar;
        this.f11315a = d2;
    }

    @Override // com.baidu.mobads.sdk.internal.an.b
    public void a(String str, String str2) {
        this.f11316b.f11304w = new bz(str);
        double dB = co.b();
        float f2 = this.f11316b.m().getFloat(cb.f11280c, 0.0f);
        boolean z2 = ((float) this.f11316b.f11304w.b()) == f2;
        Boolean boolValueOf = Boolean.valueOf(z2);
        boolean z3 = dB <= this.f11316b.f11304w.b() && Math.floor(dB) == Math.floor(this.f11316b.f11304w.b());
        Boolean boolValueOf2 = Boolean.valueOf(z3);
        this.f11316b.f11306z.a(cb.f11278a, "try to download apk badVer=" + f2 + ", isBad=" + boolValueOf + ", compatible=" + boolValueOf2);
        if (this.f11315a < this.f11316b.f11304w.b() && this.f11316b.f11304w != null && this.f11316b.f11304w.a().booleanValue() && z3 && !z2) {
            cb cbVar = this.f11316b;
            cbVar.a(cbVar.f11304w);
        } else if (this.f11316b.f11299A) {
            this.f11316b.f11299A = false;
            this.f11316b.a(false, "Refused to download remote for version...");
        }
    }

    @Override // com.baidu.mobads.sdk.internal.an.b
    public void a(String str, int i2) {
        if (this.f11316b.f11299A) {
            this.f11316b.f11299A = false;
            this.f11316b.a(false, "remote update Network access failed");
        }
    }
}
