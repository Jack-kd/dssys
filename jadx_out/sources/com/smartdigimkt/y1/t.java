package com.smartdigimkt.y1;

import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;

/* loaded from: classes5.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandpagePlayerView f45190a;

    public t(WebLandpagePlayerView webLandpagePlayerView) {
        this.f45190a = webLandpagePlayerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebLandpagePlayerView webLandpagePlayerView = this.f45190a;
        if (webLandpagePlayerView.f43720F != null) {
            com.smartdigimkt.m3.q qVarD = com.smartdigimkt.c0.e.d(webLandpagePlayerView.f43727M);
            WebLandpagePlayerView webLandpagePlayerView2 = this.f45190a;
            webLandpagePlayerView2.f43721G = qVarD.f42140a;
            webLandpagePlayerView2.f43720F.loadUrl(qVarD.f42143d);
            WebLandpagePlayerView webLandpagePlayerView3 = this.f45190a;
            webLandpagePlayerView3.recordRedirectUrl(webLandpagePlayerView3.f43720F.getUrl());
            if (this.f45190a.f43716B.getAnimation() != null) {
                this.f45190a.f43716B.getAnimation().cancel();
            }
            WebLandpagePlayerView webLandpagePlayerView4 = this.f45190a;
            webLandpagePlayerView4.f43716B.startAnimation(webLandpagePlayerView4.f43718D);
            WebLandpagePlayerView webLandpagePlayerView5 = this.f45190a;
            webLandpagePlayerView5.f43720F.startAnimation(webLandpagePlayerView5.f43719E);
        }
    }
}
