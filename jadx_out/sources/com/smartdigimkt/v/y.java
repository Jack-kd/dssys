package com.smartdigimkt.v;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.sdk.api.format.SDMRewardedVideoAd;

/* loaded from: classes5.dex */
public final class y implements com.smartdigimkt.p1.a, com.smartdigimkt.p1.g {
    final /* synthetic */ SDMRewardedVideoAd this$0;

    public y(SDMRewardedVideoAd sDMRewardedVideoAd) {
        this.this$0 = sDMRewardedVideoAd;
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClick(com.smartdigimkt.p1.u uVar) {
        this.this$0.printAdStatusLog("click", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClick();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClosed() {
        this.this$0.printAdStatusLog("close", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClose();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdShow(com.smartdigimkt.p1.u uVar) {
        this.this$0.printAdStatusLog("impression", cb.f11292o, "");
        this.this$0.printAdStatusLog("play_start", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdPlayStart();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onDeeplinkCallback(boolean z2) {
        this.this$0.printAdStatusLog("deeplink", z2 ? cb.f11292o : "fail", "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onRewardTaskFirst() {
        this.this$0.printAdStatusLog("rewarded", cb.f11292o, "taskType=1");
        this.this$0.notifyDoubleReward(1);
    }

    @Override // com.smartdigimkt.p1.g
    public void onRewarded() {
        this.this$0.printAdStatusLog("rewarded", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdReward();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        this.this$0.printAdStatusLog("show_failed", "fail", fVar != null ? fVar.a() : "", new com.smartdigimkt.k4.a(fVar != null ? fVar.f40651a : "", str));
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", str));
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayEnd() {
        this.this$0.printAdStatusLog("play_end", cb.f11292o, "");
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdPlayEnd();
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayStart() {
    }
}
