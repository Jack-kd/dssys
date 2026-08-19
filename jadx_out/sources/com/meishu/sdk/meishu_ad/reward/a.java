package com.meishu.sdk.meishu_ad.reward;

import android.view.View;
import com.meishu.sdk.core.safe.o;

/* loaded from: classes4.dex */
public class a extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32474a;

    public a(FullScreenMediaView fullScreenMediaView) {
        this.f32474a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32474a.f32456a.b()) {
            return;
        }
        this.f32474a.start();
    }
}
