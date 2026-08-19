package com.smartdigimkt.sdk.api.format;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.p1.u;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class k implements com.smartdigimkt.p1.a {
    final /* synthetic */ SDMSplashAd this$0;
    final /* synthetic */ WeakReference val$finalCacheSplash;

    public k(SDMSplashAd sDMSplashAd, WeakReference weakReference) {
        this.this$0 = sDMSplashAd;
        this.val$finalCacheSplash = weakReference;
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClick(u uVar) {
        this.this$0.printAdStatusLog("click", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClick();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // com.smartdigimkt.p1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAdClosed() {
        /*
            r4 = this;
            com.smartdigimkt.sdk.api.format.SDMSplashAd r0 = r4.this$0
            java.lang.String r1 = "success"
            java.lang.String r2 = ""
            java.lang.String r3 = "close"
            com.smartdigimkt.sdk.api.format.SDMSplashAd.access$1100(r0, r3, r1, r2)
            java.lang.ref.WeakReference r0 = r4.val$finalCacheSplash
            if (r0 == 0) goto L43
            java.lang.Object r0 = r0.get()
            com.smartdigimkt.j1.l r0 = (com.smartdigimkt.j1.l) r0
            if (r0 == 0) goto L43
            java.util.Map r0 = r0.f41072h
            if (r0 == 0) goto L43
            java.lang.String r1 = "close_scene"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = com.smartdigimkt.c5.k.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L43
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L43
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L43
            r1 = 3
            r2 = 2
            if (r0 == r2) goto L44
            if (r0 == r1) goto L40
            r1 = 5
            if (r0 == r1) goto L40
            r1 = 6
            if (r0 == r1) goto L3e
            r1 = 10
            if (r0 == r1) goto L40
            r1 = r2
            goto L44
        L3e:
            r1 = 4
            goto L44
        L40:
            r1 = 99
            goto L44
        L43:
            r1 = 0
        L44:
            com.smartdigimkt.sdk.api.format.SDMSplashAd r0 = r4.this$0
            com.smartdigimkt.sdk.api.format.SDMSplashListener r0 = com.smartdigimkt.sdk.api.format.SDMSplashAd.access$000(r0)
            if (r0 == 0) goto L5a
            com.smartdigimkt.sdk.api.format.SDMSplashAd r0 = r4.this$0
            com.smartdigimkt.sdk.api.format.SDMSplashListener r0 = com.smartdigimkt.sdk.api.format.SDMSplashAd.access$000(r0)
            com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo r2 = new com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo
            r2.<init>(r1)
            r0.onAdClose(r2)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.api.format.k.onAdClosed():void");
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdShow(u uVar) {
        this.this$0.printAdStatusLog("impression", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShow();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onDeeplinkCallback(boolean z2) {
        this.this$0.printAdStatusLog("deeplink", z2 ? cb.f11292o : "fail", "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        this.this$0.printAdStatusLog("show_failed", "fail", fVar != null ? fVar.a() : "", new com.smartdigimkt.k4.a(fVar != null ? fVar.f40651a : "", str));
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", str));
        }
    }
}
