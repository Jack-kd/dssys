package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;

/* loaded from: classes4.dex */
public final class at implements com.kwad.sdk.core.webview.c.a {
    private com.kwad.sdk.core.webview.c.c apx;
    private a arl = new a();

    @KsJson
    public class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
        public int id;
        public int status;

        public a() {
        }
    }

    private void v(int i2, int i3) {
        com.kwad.sdk.core.webview.c.c cVar = this.apx;
        if (cVar != null) {
            a aVar = this.arl;
            aVar.id = i2;
            aVar.status = 2;
            cVar.b(aVar);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.apx = cVar;
    }

    public final void ce(int i2) {
        v(1, 2);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerAnimationListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.apx = null;
    }
}
