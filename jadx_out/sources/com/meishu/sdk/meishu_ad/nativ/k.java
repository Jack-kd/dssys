package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;

/* loaded from: classes4.dex */
public class k extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32420a;

    public k(NormalMediaView normalMediaView) {
        this.f32420a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32420a.f32340b.b()) {
            this.f32420a.pause();
        }
    }
}
