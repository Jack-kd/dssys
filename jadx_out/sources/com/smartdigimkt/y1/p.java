package com.smartdigimkt.y1;

import android.content.Context;
import android.view.animation.TranslateAnimation;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f45184a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebLandpagePlayerView f45185b;

    public p(WebLandpagePlayerView webLandpagePlayerView, Context context) {
        this.f45185b = webLandpagePlayerView;
        this.f45184a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebLandpagePlayerView webLandpagePlayerView = this.f45185b;
        Context context = this.f45184a;
        int i2 = WebLandpagePlayerView.f43715S;
        webLandpagePlayerView.getClass();
        try {
            webLandpagePlayerView.f43720F = new BaseWebView(context);
            webLandpagePlayerView.f43724J = new com.smartdigimkt.s2.d(webLandpagePlayerView.f43705p);
            webLandpagePlayerView.f43720F.setBackgroundColor(-1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, webLandpagePlayerView.getMeasuredHeight());
            webLandpagePlayerView.f43720F.setVisibility(8);
            webLandpagePlayerView.addView(webLandpagePlayerView.f43720F, layoutParams);
            y.a(context);
            y.a((WebView) webLandpagePlayerView.f43720F, (com.smartdigimkt.s2.b) webLandpagePlayerView, false);
            webLandpagePlayerView.f43720F.setDownloadListener(new r(webLandpagePlayerView, context));
            webLandpagePlayerView.f43728N = true;
        } catch (Throwable unused) {
            webLandpagePlayerView.f43728N = false;
        }
        WebLandpagePlayerView webLandpagePlayerView2 = this.f45185b;
        if (webLandpagePlayerView2.f43718D == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, -webLandpagePlayerView2.getMeasuredHeight());
            webLandpagePlayerView2.f43718D = translateAnimation;
            translateAnimation.setFillAfter(true);
            webLandpagePlayerView2.f43718D.setDuration(1200L);
        }
        if (webLandpagePlayerView2.f43719E == null) {
            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, webLandpagePlayerView2.getMeasuredHeight(), 0.0f);
            webLandpagePlayerView2.f43719E = translateAnimation2;
            translateAnimation2.setFillAfter(true);
            webLandpagePlayerView2.f43719E.setDuration(1200L);
            webLandpagePlayerView2.f43719E.setAnimationListener(new q(webLandpagePlayerView2));
        }
    }
}
