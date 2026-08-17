package com.smartdigimkt.j2;

import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewSplashATView;
import com.smartdigimkt.w2.k;

/* loaded from: classes5.dex */
public final class e implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebViewSplashATView f41101a;

    public e(WTWebViewSplashATView wTWebViewSplashATView) {
        this.f41101a = wTWebViewSplashATView;
    }

    @Override // com.smartdigimkt.w2.k
    public final void a() {
        this.f41101a.a(302);
        WTWebViewSplashATView wTWebViewSplashATView = this.f41101a;
        int i2 = wTWebViewSplashATView.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        wTWebViewSplashATView.a(i2, new d(this));
    }

    @Override // com.smartdigimkt.w2.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        WTWebViewSplashATView wTWebViewSplashATView = this.f41101a;
        int i2 = WTWebViewSplashATView.f43968n0;
        wTWebViewSplashATView.b(fVar);
    }
}
