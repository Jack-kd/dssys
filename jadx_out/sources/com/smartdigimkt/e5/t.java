package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;

/* loaded from: classes5.dex */
public final class t implements com.smartdigimkt.p1.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDMNativeAdListener f40105a;

    public t(SDMNativeAdListener sDMNativeAdListener) {
        this.f40105a = sDMNativeAdListener;
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdClick(com.smartdigimkt.p1.u uVar) {
        SDMNativeAdListener sDMNativeAdListener = this.f40105a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onAdClick();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdClosed() {
    }

    @Override // com.smartdigimkt.p1.a
    public final void onAdShow(com.smartdigimkt.p1.u uVar) {
        SDMNativeAdListener sDMNativeAdListener = this.f40105a;
        if (sDMNativeAdListener != null) {
            sDMNativeAdListener.onAdShow();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public final void onDeeplinkCallback(boolean z2) {
    }

    @Override // com.smartdigimkt.p1.a
    public final void onShowFailed(com.smartdigimkt.i0.f fVar) {
    }
}
