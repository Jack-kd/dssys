package com.kwad.components.core.webview.tachikoma.b;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class v implements com.kwad.sdk.core.webview.c.a {
    private a atW;

    public interface a {
        void b(com.kwad.components.core.webview.tachikoma.c.n nVar);
    }

    public final void a(a aVar) {
        this.atW = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "updateVideoMuteState";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.atW = null;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        if (this.atW != null) {
            com.kwad.components.core.webview.tachikoma.c.n nVar = new com.kwad.components.core.webview.tachikoma.c.n();
            try {
                nVar.parseJson(new JSONObject(str));
                this.atW.b(nVar);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
