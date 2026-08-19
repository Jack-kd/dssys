package com.meishu.sdk.meishu_ad;

import java.util.List;

/* loaded from: classes4.dex */
public class c implements com.meishu.sdk.meishu_ad.nativ.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f32199a;

    public c(e eVar) {
        this.f32199a = eVar;
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADExposure() {
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public /* bridge */ /* synthetic */ void onADLoaded(List<com.meishu.sdk.meishu_ad.nativ.b> list) {
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        e eVar = this.f32199a;
        eVar.f32219f.a(eVar.f32214a, str, Integer.valueOf(i2));
    }
}
