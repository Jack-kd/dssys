package com.smartdigimkt.z;

/* loaded from: classes5.dex */
public final class u implements com.smartdigimkt.s3.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f45331a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f45332b;

    public u(x xVar, int i2) {
        this.f45332b = xVar;
        this.f45331a = i2;
    }

    @Override // com.smartdigimkt.s3.a
    public final void a(boolean z2) {
        if (z2) {
            com.smartdigimkt.b4.e.a().c(new t(this));
            return;
        }
        com.smartdigimkt.a0.e eVar = this.f45332b.f45338f;
        if (eVar != null) {
            eVar.c();
        }
    }
}
