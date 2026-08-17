package com.kwad.components.core.innerEc.live.a;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.webview.c.a {
    private final a TC;

    public interface a {
        void aJ(boolean z2);
    }

    public b(a aVar) {
        this.TC = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        boolean zOptBoolean;
        if (this.TC != null) {
            try {
                zOptBoolean = new JSONObject(str).optBoolean("isHide");
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
                zOptBoolean = false;
            }
            this.TC.aJ(zOptBoolean);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "explainCardHide";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
