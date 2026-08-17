package com.kwad.components.ad.reward.k.a;

import com.kwad.components.ad.reward.g;

/* loaded from: classes4.dex */
public final class a extends com.kwad.components.core.webview.tachikoma.d.b {
    private g Ch;

    public a(g gVar) {
        this.Ch = gVar;
    }

    public final void b(com.kwad.components.ad.reward.c.b bVar) {
        com.kwad.components.ad.reward.c.a.ih().a(this.mAdTemplate, bVar);
    }

    public final g kO() {
        return this.Ch;
    }

    @Override // com.kwad.components.core.webview.tachikoma.d.b, com.kwad.sdk.mvp.a
    public final void release() {
        super.release();
        this.Ch = null;
    }
}
