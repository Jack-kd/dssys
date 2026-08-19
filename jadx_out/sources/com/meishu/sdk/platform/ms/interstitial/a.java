package com.meishu.sdk.platform.ms.interstitial;

import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.meishu_ad.interstitial.c;
import com.meishu.sdk.platform.ms.d;

/* loaded from: classes4.dex */
public class a implements com.meishu.sdk.meishu_ad.interstitial.a {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.ad.interstitial.b f32889a;

    /* renamed from: b, reason: collision with root package name */
    public b f32890b;

    public a(b bVar, com.meishu.sdk.core.ad.interstitial.b bVar2) {
        this.f32890b = bVar;
        this.f32889a = bVar2;
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADLoaded(c cVar) {
        c cVar2 = cVar;
        com.meishu.sdk.core.ad.interstitial.b bVar = this.f32889a;
        if (bVar != null) {
            MeishuInterstitialAdAdapter meishuInterstitialAdAdapter = new MeishuInterstitialAdAdapter(cVar2, bVar);
            meishuInterstitialAdAdapter.setAdView(cVar2.getAdView());
            this.f32889a.onAdReady(meishuInterstitialAdAdapter);
        }
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        if (((com.meishu.sdk.meishu_ad.interstitial.b) this.f32890b.f32888a).getErrorUrl() != null) {
            a0.a(((com.meishu.sdk.meishu_ad.interstitial.b) this.f32890b.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
        }
        com.meishu.sdk.core.ad.interstitial.b bVar = this.f32889a;
        if (bVar != null) {
            bVar.onAdPlatformError(new d(str, Integer.valueOf(i2)));
            this.f32889a.onAdRenderFail(str, i2);
        }
    }
}
