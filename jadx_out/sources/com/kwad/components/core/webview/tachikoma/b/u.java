package com.kwad.components.core.webview.tachikoma.b;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class u implements com.kwad.sdk.core.webview.c.a {
    private a atV;

    public interface a {
        void a(b bVar);
    }

    @KsJson
    public static class b extends com.kwad.sdk.core.response.a.a {
        public int errorCode;
        public String errorMsg;
        public int status;
    }

    public final void a(a aVar) {
        this.atV = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "splashShowStatus";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.atV = null;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        if (this.atV != null) {
            b bVar = new b();
            try {
                try {
                    bVar.parseJson(new JSONObject(str));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            } finally {
                this.atV.a(bVar);
            }
        }
    }
}
