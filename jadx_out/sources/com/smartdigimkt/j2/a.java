package com.smartdigimkt.j2;

import com.smartdigimkt.sdk.basead.ui.CloseImageView;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewBaseScreenATView;
import com.smartdigimkt.v1.p0;
import com.smartdigimkt.w2.k;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class a implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebViewBaseScreenATView f41097a;

    public a(WTWebViewBaseScreenATView wTWebViewBaseScreenATView) {
        this.f41097a = wTWebViewBaseScreenATView;
    }

    @Override // com.smartdigimkt.w2.k
    public final void a() {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41097a;
        int i2 = WTWebViewBaseScreenATView.f43966D0;
        CloseImageView closeImageView = wTWebViewBaseScreenATView.f43295m0;
        if (closeImageView != null) {
            closeImageView.setVisibility(8);
        }
        this.f41097a.a(302);
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView2 = this.f41097a;
        if (3 != wTWebViewBaseScreenATView2.f43264E || z.h(wTWebViewBaseScreenATView2.f43217c, wTWebViewBaseScreenATView2.f43216b)) {
            return;
        }
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView3 = this.f41097a;
        wTWebViewBaseScreenATView3.a(Math.max(0, wTWebViewBaseScreenATView3.f43216b.f41644r.f41892S), new p0(wTWebViewBaseScreenATView3));
    }

    @Override // com.smartdigimkt.w2.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        WTWebViewBaseScreenATView wTWebViewBaseScreenATView = this.f41097a;
        com.smartdigimkt.i0.f fVar2 = new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, com.anythink.core.common.inner.b.b.af + fVar.a());
        int i2 = WTWebViewBaseScreenATView.f43966D0;
        wTWebViewBaseScreenATView.a(fVar2);
        this.f41097a.c(10);
    }
}
