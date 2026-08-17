package com.smartdigimkt.r1;

import com.smartdigimkt.k2.s;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.z.w;

/* loaded from: classes5.dex */
public final class i implements w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f42957a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f42958b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f42959c;

    public i(m mVar, int i2, int i3) {
        this.f42959c = mVar;
        this.f42957a = i2;
        this.f42958b = i3;
    }

    @Override // com.smartdigimkt.z.w
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        return false;
    }

    @Override // com.smartdigimkt.z.w
    public final void b() {
    }

    @Override // com.smartdigimkt.z.w
    public final void c() {
        s sVarA = s.a();
        synchronized (sVarA.f41341b) {
            sVarA.f41343d = true;
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void a() {
        com.smartdigimkt.p1.a aVar = this.f42959c.f42963g;
        if (aVar != null) {
            u uVar = new u();
            int i2 = this.f42957a;
            int i3 = this.f42958b;
            uVar.f42577a = i2;
            uVar.f42578b = i3;
            aVar.onAdClick(uVar);
        }
    }

    @Override // com.smartdigimkt.z.w
    public final void a(boolean z2) {
        com.smartdigimkt.p1.a aVar = this.f42959c.f42963g;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z2);
        }
    }
}
