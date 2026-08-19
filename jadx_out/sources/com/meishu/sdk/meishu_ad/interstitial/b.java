package com.meishu.sdk.meishu_ad.interstitial;

import com.meishu.sdk.core.ad.BaseAdSlot;

/* loaded from: classes4.dex */
public class b extends BaseAdSlot {

    /* renamed from: a, reason: collision with root package name */
    public String f32245a;

    public class a extends BaseAdSlot.Builder<a, b> {
        public a() {
            super();
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot build() {
            return b.this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder returnThis() {
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setTitle(String str) {
            b.this.f32245a = str;
            return this;
        }
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public String getTitle() {
        return this.f32245a;
    }
}
