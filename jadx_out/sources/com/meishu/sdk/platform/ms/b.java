package com.meishu.sdk.platform.ms;

import com.meishu.sdk.core.ad.AdSlot;

/* loaded from: classes4.dex */
public class b extends com.meishu.sdk.core.ad.a implements c {

    /* renamed from: a, reason: collision with root package name */
    public AdSlot f32849a;

    public b(com.meishu.sdk.meishu_ad.banner.a aVar) {
        super(null, "MS");
        this.f32849a = aVar;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdSlot a() {
        return this.f32849a;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public int getInteractionType() {
        return this.f32849a.getInteractionType();
    }
}
