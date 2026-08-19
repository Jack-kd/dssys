package com.bytedance.sdk.openadsdk.mediation.ad;

import android.view.View;
import androidx.annotation.Nullable;
import com.byazt.kj.hp;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1441})
/* loaded from: classes3.dex */
public class MediationNativeToBannerListener implements IMediationNativeToBannerListener {
    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeToBannerListener
    @Nullable
    public View getMediationBannerViewFromNativeAd(IMediationNativeAdInfo iMediationNativeAdInfo) {
        return null;
    }
}
