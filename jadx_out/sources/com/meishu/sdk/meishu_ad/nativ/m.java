package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;

/* loaded from: classes4.dex */
public class m extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32422a;

    public m(NormalMediaView normalMediaView) {
        this.f32422a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        this.f32422a.g();
    }
}
