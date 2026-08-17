package com.kwad.components.core.innerEc.live.a;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.ac;
import java.util.Map;

/* loaded from: classes4.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    @KsJson
    /* renamed from: com.kwad.components.core.innerEc.live.a.a$a, reason: collision with other inner class name */
    public static final class C0534a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
        public String TB;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        try {
            Map<String, String> mapRj = com.kwad.components.core.innerEc.f.rj();
            C0534a c0534a = new C0534a();
            if (mapRj == null) {
                c0534a.TB = "";
            } else {
                c0534a.TB = ac.parseMap2JSON(mapRj).toString();
            }
            cVar.b(c0534a);
        } catch (Exception e2) {
            cVar.onError(-1, e2.getMessage());
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getMerchantCookie";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
