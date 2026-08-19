package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;

/* loaded from: classes4.dex */
public class j extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32419a;

    public j(NormalMediaView normalMediaView) {
        this.f32419a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32419a.f32340b.b()) {
            return;
        }
        this.f32419a.resume();
    }
}
