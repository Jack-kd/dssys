package com.smartdigimkt.e5;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class w implements com.smartdigimkt.p1.s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDMNativeAdListener f40108a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f40109b;

    public w(x xVar, SDMNativeAdListener sDMNativeAdListener) {
        this.f40109b = xVar;
        this.f40108a = sDMNativeAdListener;
    }

    @Override // com.smartdigimkt.p1.s
    public final void a(int i2) {
        com.smartdigimkt.j1.i iVar;
        com.smartdigimkt.m3.b bVar;
        com.smartdigimkt.m3.b bVar2 = this.f40109b.f40111b.f41069e;
        if (bVar2 == null || bVar2.e() != 2 || (bVar = (iVar = this.f40109b.f40111b).f41069e) == null) {
            return;
        }
        com.smartdigimkt.q3.a aVar = iVar.f41076l;
        String str = bVar.f42054o0;
        String str2 = bVar.f41806a;
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004709";
        cVar.a(aVar);
        cVar.f42828l = String.valueOf(aVar.f42737P);
        cVar.f42829m = aVar.f42738Q;
        cVar.f42830n = aVar.f42752c;
        cVar.f42831o = str;
        cVar.f42832p = str2;
        cVar.f42833q = String.valueOf(i2);
        cVar.f42834r = "1";
        com.smartdigimkt.y3.h.a(cVar);
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdClick(com.smartdigimkt.p1.u uVar) {
        this.f40109b.a("click", cb.f11292o, "", null);
        com.smartdigimkt.m1.l lVar = this.f40109b.f40112c;
        if (lVar.f41744b.f41825p == 67) {
            if (lVar.a(true, false)) {
                com.smartdigimkt.g3.c.a(SDKContext.getInstance().d()).a(this.f40109b.f40112c.f41744b.f41806a, 1, 0);
            }
            if (this.f40109b.f40112c.a(false, false)) {
                com.smartdigimkt.g3.b.a(SDKContext.getInstance().d()).a(this.f40109b.f40112c.f41744b.f41806a, 1, 0);
            }
        }
        SDMNativeAdListener sDMNativeAdListener = this.f40108a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onAdClick();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdClosed() {
        this.f40109b.a("close", cb.f11292o, "", null);
        SDMNativeAdListener sDMNativeAdListener = this.f40108a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onAdClosed();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdShow(com.smartdigimkt.p1.u uVar) {
        this.f40109b.a("impression", cb.f11292o, "", null);
        x xVar = this.f40109b;
        if (xVar.f40111b.f41069e.f41825p == 67) {
            if (xVar.f40112c.a(true, true)) {
                com.smartdigimkt.g3.c.a(SDKContext.getInstance().d()).a(this.f40109b.f40112c.f41744b.f41806a, 0, 1);
            }
            if (this.f40109b.f40112c.a(false, true)) {
                com.smartdigimkt.g3.b.a(SDKContext.getInstance().d()).a(this.f40109b.f40112c.f41744b.f41806a, 0, 1);
            }
        }
        SDMNativeAdListener sDMNativeAdListener = this.f40108a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onAdShow();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onDeeplinkCallback(boolean z2) {
        this.f40109b.a("deeplink", z2 ? cb.f11292o : "fail", "", null);
        SDMNativeAdListener sDMNativeAdListener = this.f40108a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        this.f40109b.a("show_failed", "fail", fVar != null ? fVar.a() : "", new com.smartdigimkt.k4.a(fVar != null ? fVar.f40651a : "", str));
        SDMNativeAdListener sDMNativeAdListener = this.f40108a;
        if (sDMNativeAdListener != null) {
            if (fVar != null) {
                sDMNativeAdListener.onShowFailed(com.smartdigimkt.k4.b.a("20002", fVar.f40652b));
            } else {
                sDMNativeAdListener.onShowFailed(com.smartdigimkt.k4.b.a("20002", ""));
            }
        }
    }
}
