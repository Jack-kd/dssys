package com.smartdigimkt.j2;

import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewSplashATView;
import com.smartdigimkt.v1.d2;
import com.smartdigimkt.x.n;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.x2.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebViewSplashATView f41102a;

    public f(WTWebViewSplashATView wTWebViewSplashATView) {
        this.f41102a = wTWebViewSplashATView;
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(int i2, int i3) {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41102a;
        int i4 = WTWebViewSplashATView.f43968n0;
        wTWebViewSplashATView.a(i2, i3);
    }

    @Override // com.smartdigimkt.x2.a
    public final void b(int i2) {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41102a;
        int i3 = WTWebViewSplashATView.f43968n0;
        wTWebViewSplashATView.a(i2, true);
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(String str, String str2) {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41102a;
        String str3 = str + "," + str2;
        int i2 = WTWebViewSplashATView.f43968n0;
        wTWebViewSplashATView.getClass();
        wTWebViewSplashATView.b(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, str3));
    }

    @Override // com.smartdigimkt.x2.a
    public final void b() {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41102a;
        int i2 = WTWebViewSplashATView.f43968n0;
        wTWebViewSplashATView.a(111);
        if (wTWebViewSplashATView.f43341Q == null) {
            wTWebViewSplashATView.f43341Q = new n();
        }
        wTWebViewSplashATView.f43341Q.a(wTWebViewSplashATView.getContext(), wTWebViewSplashATView.f43217c, wTWebViewSplashATView.f43216b, new d2(wTWebViewSplashATView));
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(int i2) {
        if (i2 == 1) {
            this.f41102a.a(303);
        } else {
            this.f41102a.a(304);
        }
    }

    @Override // com.smartdigimkt.x2.a
    public final void a() {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41102a;
        int i2 = WTWebViewSplashATView.f43968n0;
        BasePlayerView basePlayerView = wTWebViewSplashATView.f43229o.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setVisibility(0);
        }
        this.f41102a.s();
    }
}
