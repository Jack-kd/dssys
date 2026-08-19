package com.meishu.sdk.meishu_ad.splash;

import com.meishu.sdk.core.ad.BaseAdSlot;

/* loaded from: classes4.dex */
public class d extends com.meishu.sdk.meishu_ad.nativ.f {

    /* renamed from: E, reason: collision with root package name */
    public int f32524E = 3;

    /* renamed from: F, reason: collision with root package name */
    public int f32525F;

    /* renamed from: G, reason: collision with root package name */
    public int f32526G;

    /* renamed from: H, reason: collision with root package name */
    public int f32527H;

    public class a extends BaseAdSlot.Builder<a, d> {
        public a() {
            super();
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot build() {
            return d.this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder returnThis() {
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setPowerIndex(int i2) {
            d.this.f32525F = i2;
            return this;
        }
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public int getClk_type() {
        return this.f32524E;
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public int getPower_index() {
        return this.f32525F;
    }
}
