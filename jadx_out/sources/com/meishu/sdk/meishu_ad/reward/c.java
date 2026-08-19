package com.meishu.sdk.meishu_ad.reward;

import android.view.View;
import com.meishu.sdk.core.safe.o;

/* loaded from: classes4.dex */
public class c extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenMediaView f32476a;

    public c(FullScreenMediaView fullScreenMediaView) {
        this.f32476a = fullScreenMediaView;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (this.f32476a.f32456a.b()) {
            FullScreenMediaView fullScreenMediaView = this.f32476a;
            fullScreenMediaView.f32456a.c();
            fullScreenMediaView.d();
            com.meishu.sdk.meishu_ad.nativ.e eVar = fullScreenMediaView.f32462g;
            if (eVar != null) {
                eVar.onVideoPause();
            }
        }
    }
}
