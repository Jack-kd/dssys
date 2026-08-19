package com.kwad.sdk.core.webview.d;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.webview.c.c;
import com.kwad.sdk.core.webview.request.WebCardGetDataResponse;
import com.kwad.sdk.core.webview.request.b;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.webview.c.a {
    private c bde;

    @KsJson
    public static final class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
        public String method;
        public String params;
        public String url;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "requestData";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.bde = null;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull c cVar) {
        this.bde = cVar;
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(str));
            a(aVar);
        } catch (JSONException e2) {
            c cVar2 = this.bde;
            if (cVar2 != null) {
                cVar2.onError(-1, "data parse json error.");
            }
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
        }
    }

    private void a(a aVar) {
        new com.kwad.sdk.core.webview.request.b().a(aVar, new b.a() { // from class: com.kwad.sdk.core.webview.d.b.1
            @Override // com.kwad.sdk.core.webview.request.b.a
            public final void a(@NonNull WebCardGetDataResponse webCardGetDataResponse) {
                if (b.this.bde != null) {
                    b.this.bde.b(webCardGetDataResponse);
                }
            }

            @Override // com.kwad.sdk.core.webview.request.b.a
            public final void onError(int i2, String str) {
                if (b.this.bde != null) {
                    b.this.bde.onError(i2, str);
                }
            }
        });
    }
}
