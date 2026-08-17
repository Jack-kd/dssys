package com.kwad.components.core.webview.tachikoma.b;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;

/* loaded from: classes4.dex */
public final class h extends w {
    private a atL;

    public interface a {
        void a(h hVar);
    }

    @KsJson
    public static class b extends com.kwad.sdk.core.response.a.a {
        public int atM;
    }

    public final void a(a aVar) {
        this.atL = aVar;
    }

    public final void bn(boolean z2) {
        int i2 = z2 ? 1 : 2;
        b bVar = new b();
        bVar.atM = i2;
        a(bVar);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getPlayEndType";
    }

    @Override // com.kwad.components.core.webview.tachikoma.b.w, com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        super.onDestroy();
        this.atL = null;
    }

    @Override // com.kwad.components.core.webview.tachikoma.b.w, com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        super.a(str, cVar);
        a aVar = this.atL;
        if (aVar != null) {
            aVar.a(this);
        }
    }
}
