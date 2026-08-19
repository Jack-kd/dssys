package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class aq implements com.kwad.sdk.core.webview.c.a {
    private a ari;

    public interface a {
        void a(com.kwad.components.core.webview.a.b bVar);
    }

    public aq(a aVar) {
        this.ari = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        com.kwad.components.core.webview.a.b bVar = new com.kwad.components.core.webview.a.b();
        try {
            bVar.parseJson(new JSONObject(str));
            a aVar = this.ari;
            if (aVar != null) {
                aVar.a(bVar);
            }
        } catch (Exception e2) {
            cVar.onError(-1, "");
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "openNewPage";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.ari = null;
    }
}
