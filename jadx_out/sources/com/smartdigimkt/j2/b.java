package com.smartdigimkt.j2;

import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewBaseScreenATView;
import com.smartdigimkt.v1.y0;
import com.smartdigimkt.x.n;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.x2.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebViewBaseScreenATView f41098a;

    public b(WTWebViewBaseScreenATView wTWebViewBaseScreenATView) {
        this.f41098a = wTWebViewBaseScreenATView;
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(int i2, int i3) {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41098a;
        int i4 = WTWebViewBaseScreenATView.f43966D0;
        wTWebViewBaseScreenATView.a(i2, i3);
    }

    @Override // com.smartdigimkt.x2.a
    public final void b(int i2) {
        this.f41098a.c(i2);
    }

    @Override // com.smartdigimkt.x2.a
    public final void b() {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41098a;
        int i2 = WTWebViewBaseScreenATView.f43966D0;
        wTWebViewBaseScreenATView.a(111);
        wTWebViewBaseScreenATView.f43281V = false;
        com.smartdigimkt.c2.d dVar = wTWebViewBaseScreenATView.f43229o;
        if (dVar != null) {
            dVar.b();
        }
        if (wTWebViewBaseScreenATView.f43293k0 == null) {
            wTWebViewBaseScreenATView.f43293k0 = new n();
        }
        wTWebViewBaseScreenATView.f43293k0.a(wTWebViewBaseScreenATView.getContext(), wTWebViewBaseScreenATView.f43217c, wTWebViewBaseScreenATView.f43216b, new y0(wTWebViewBaseScreenATView));
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(String str, String str2) {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41098a;
        com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, com.anythink.core.common.inner.b.b.af + str + "," + str2);
        int i2 = WTWebViewBaseScreenATView.f43966D0;
        wTWebViewBaseScreenATView.a(fVar);
        this.f41098a.c(10);
    }

    @Override // com.smartdigimkt.x2.a
    public final void a(int i2) {
        if (i2 == 1) {
            this.f41098a.a(303);
        } else {
            this.f41098a.a(304);
        }
    }

    @Override // com.smartdigimkt.x2.a
    public final void a() {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41098a;
        int i2 = WTWebViewBaseScreenATView.f43966D0;
        BasePlayerView basePlayerView = wTWebViewBaseScreenATView.f43229o.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setVisibility(0);
        }
        com.smartdigimkt.c2.d dVar = this.f41098a.f43229o;
        if (dVar != null) {
            dVar.f39650q = true;
            dVar.c();
        }
    }
}
