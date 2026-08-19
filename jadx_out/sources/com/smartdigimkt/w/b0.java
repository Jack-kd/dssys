package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class b0 implements com.smartdigimkt.p1.a {
    final /* synthetic */ SDMMyOfferSplashAd this$0;
    final /* synthetic */ WeakReference val$finalCacheSplash;

    public b0(SDMMyOfferSplashAd sDMMyOfferSplashAd, WeakReference weakReference) {
        this.this$0 = sDMMyOfferSplashAd;
        this.val$finalCacheSplash = weakReference;
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClick(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClick();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    @Override // com.smartdigimkt.p1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAdClosed() {
        /*
            r3 = this;
            java.lang.ref.WeakReference r0 = r3.val$finalCacheSplash
            if (r0 == 0) goto L38
            java.lang.Object r0 = r0.get()
            com.smartdigimkt.r1.q r0 = (com.smartdigimkt.r1.q) r0
            if (r0 == 0) goto L38
            java.util.Map r0 = r0.f42950f
            if (r0 == 0) goto L38
            java.lang.String r1 = "close_scene"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = com.smartdigimkt.c5.k.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L38
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L38
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L38
            r1 = 3
            r2 = 2
            if (r0 == r2) goto L39
            if (r0 == r1) goto L35
            r1 = 5
            if (r0 == r1) goto L35
            r1 = 6
            if (r0 == r1) goto L33
            r1 = 10
            if (r0 == r1) goto L35
            r1 = r2
            goto L39
        L33:
            r1 = 4
            goto L39
        L35:
            r1 = 99
            goto L39
        L38:
            r1 = 0
        L39:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd r0 = r3.this$0
            com.smartdigimkt.sdk.api.format.SDMSplashListener r0 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd.access$000(r0)
            if (r0 == 0) goto L4f
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd r0 = r3.this$0
            com.smartdigimkt.sdk.api.format.SDMSplashListener r0 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd.access$000(r0)
            com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo r2 = new com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo
            r2.<init>(r1)
            r0.onAdClose(r2)
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w.b0.onAdClosed():void");
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdShow(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShow();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onDeeplinkCallback(boolean z2) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", str));
        }
    }
}
