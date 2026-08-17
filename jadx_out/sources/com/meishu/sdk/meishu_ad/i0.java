package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.meishu_ad.n0;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import java.util.List;

/* loaded from: classes4.dex */
public class i0 implements n0.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.f f32241a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f32242b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f32243c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.a f32244d;

    public i0(com.meishu.sdk.meishu_ad.nativ.f fVar, boolean z2, List list, com.meishu.sdk.meishu_ad.nativ.a aVar) {
        this.f32241a = fVar;
        this.f32242b = z2;
        this.f32243c = list;
        this.f32244d = aVar;
    }

    @Override // com.meishu.sdk.meishu_ad.n0.c
    public void onLoaded(n0 n0Var) {
        com.meishu.sdk.meishu_ad.nativ.d dVar = new com.meishu.sdk.meishu_ad.nativ.d(this.f32241a);
        com.meishu.sdk.meishu_ad.nativ.f fVar = this.f32241a;
        dVar.f32375e = fVar.title;
        fVar.getCid();
        com.meishu.sdk.meishu_ad.nativ.f fVar2 = this.f32241a;
        dVar.f32376f = fVar2.desc;
        dVar.f32372b = fVar2.getAdPatternType();
        com.meishu.sdk.meishu_ad.nativ.f fVar3 = this.f32241a;
        dVar.f32373c = fVar3.iconUrl;
        dVar.f32374d = fVar3.getImageUrls();
        dVar.f32378h = n0Var;
        dVar.f32377g = this.f32242b;
        this.f32243c.add(dVar);
        ((NormalMediaView) n0Var).setMsAd(dVar);
        com.meishu.sdk.meishu_ad.nativ.a aVar = this.f32244d;
        if (aVar != null) {
            aVar.onADLoaded(this.f32243c);
        }
    }
}
