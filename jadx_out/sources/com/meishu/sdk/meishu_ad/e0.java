package com.meishu.sdk.meishu_ad;

/* loaded from: classes4.dex */
public class e0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.interstitial.a f32220a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.interstitial.c f32221b;

    public e0(v vVar, com.meishu.sdk.meishu_ad.interstitial.a aVar, com.meishu.sdk.meishu_ad.interstitial.c cVar) {
        this.f32220a = aVar;
        this.f32221b = cVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        ((com.meishu.sdk.platform.ms.interstitial.a) this.f32220a).onADLoaded(this.f32221b);
    }
}
