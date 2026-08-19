package com.meishu.sdk.meishu_ad.reward;

import android.view.View;
import com.meishu.sdk.core.safe.o;

/* loaded from: classes4.dex */
public class e extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32478a;

    public e(FullScreenMediaView fullScreenMediaView) {
        this.f32478a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        FullScreenMediaView fullScreenMediaView = this.f32478a;
        int i2 = FullScreenMediaView.f32455r;
        fullScreenMediaView.b();
    }
}
