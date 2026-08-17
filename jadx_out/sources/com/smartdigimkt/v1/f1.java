package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;

/* loaded from: classes5.dex */
public final class f1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f44468a;

    public f1(BaseSdkSplashATView baseSdkSplashATView) {
        this.f44468a = baseSdkSplashATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseSdkSplashATView baseSdkSplashATView = this.f44468a;
        com.smartdigimkt.c2.d dVar = baseSdkSplashATView.f43229o;
        if (dVar == null || baseSdkSplashATView.f43309e0 == null) {
            return;
        }
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null ? basePlayerView.isMute() : false) {
            this.f44468a.f43309e0.setMute(false);
            this.f44468a.f43229o.b(false);
        } else {
            this.f44468a.f43309e0.setMute(true);
            this.f44468a.f43229o.b(true);
        }
    }
}
