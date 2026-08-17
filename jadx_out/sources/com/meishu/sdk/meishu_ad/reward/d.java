package com.meishu.sdk.meishu_ad.reward;

import android.view.View;
import com.meishu.sdk.core.safe.o;

/* loaded from: classes4.dex */
public class d extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32477a;

    public d(FullScreenMediaView fullScreenMediaView) {
        this.f32477a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        FullScreenMediaView fullScreenMediaView = this.f32477a;
        int i2 = FullScreenMediaView.f32455r;
        fullScreenMediaView.c();
    }
}
