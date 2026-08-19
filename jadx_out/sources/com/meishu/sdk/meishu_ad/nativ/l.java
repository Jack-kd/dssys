package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;

/* loaded from: classes4.dex */
public class l extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32421a;

    public l(NormalMediaView normalMediaView) {
        this.f32421a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        this.f32421a.j();
    }
}
