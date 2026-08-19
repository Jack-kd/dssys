package com.anythink.interstitial.a;

import android.content.Context;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATNetworkConfirmInfo;

/* loaded from: classes2.dex */
public class c implements ATCommonImpressionListener {

    /* renamed from: c, reason: collision with root package name */
    f f9103c;

    public c(f fVar) {
        this.f9103c = fVar;
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdClick() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdClicked();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdDismiss() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdClose();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdImpression() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdShow();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdReward() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdReward();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdRewardFailed() {
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdShowFail(String str, String str2) {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdVideoError(str, str2);
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdVideoPlayEnd() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdVideoEnd();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onAdVideoPlayStart() {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onInterstitialAdVideoStart();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onDeeplinkCallback(boolean z2) {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onDeeplinkCallback(z2);
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        f fVar = this.f9103c;
        if (fVar != null) {
            fVar.onDownloadConfirm(context, aTNetworkConfirmInfo);
        }
    }
}
