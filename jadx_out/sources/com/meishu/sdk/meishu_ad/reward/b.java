package com.meishu.sdk.meishu_ad.reward;

import android.view.View;
import com.meishu.sdk.core.safe.o;

/* loaded from: classes4.dex */
public class b extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32475a;

    public b(FullScreenMediaView fullScreenMediaView) {
        this.f32475a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32475a.f32456a.b()) {
            return;
        }
        this.f32475a.start();
    }
}
