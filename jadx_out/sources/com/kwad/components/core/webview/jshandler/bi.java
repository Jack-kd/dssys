package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class bi implements com.kwad.sdk.core.webview.c.a {
    private final a arO;
    private com.kwad.sdk.core.webview.c.c re;

    public interface a {
        void uB();
    }

    public bi(a aVar) {
        this.arO = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.re = cVar;
        a aVar = this.arO;
        if (aVar != null) {
            aVar.uB();
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "unregisterBackClickListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.re = null;
    }
}
