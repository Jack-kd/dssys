package com.kwad.components.ad.reward.k;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class g implements com.kwad.sdk.core.webview.c.a {
    private int BZ;

    public g(int i2) {
        this.BZ = i2;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        com.kwad.components.core.webview.tachikoma.c.f fVar = new com.kwad.components.core.webview.tachikoma.c.f();
        fVar.aul = this.BZ;
        cVar.b(fVar);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getCloseDelaySeconds";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
