package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;

/* loaded from: classes4.dex */
public class i extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32418a;

    public i(NormalMediaView normalMediaView) {
        this.f32418a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        NormalMediaView normalMediaView = this.f32418a;
        if (normalMediaView.f32354p == 2) {
            normalMediaView.resume();
        } else {
            normalMediaView.replay();
        }
    }
}
