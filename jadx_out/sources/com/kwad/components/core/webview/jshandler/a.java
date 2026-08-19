package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.by;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {
    private b app;

    @KsJson
    /* renamed from: com.kwad.components.core.webview.jshandler.a$a, reason: collision with other inner class name */
    public static class C0563a extends com.kwad.sdk.core.response.a.a {
        public String PC;
        public String aps;
        public String apt;
    }

    public interface b {
        void c(C0563a c0563a);
    }

    @KsJson
    public static class c extends com.kwad.sdk.core.response.a.a {
        public int apu;
        public long apv;
        public boolean apw;
        public int errorCode;
    }

    public a(b bVar) {
        this.app = bVar;
    }

    private void b(final C0563a c0563a) {
        by.postOnUiThread(new com.kwad.sdk.utils.bi() { // from class: com.kwad.components.core.webview.jshandler.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (a.this.app != null) {
                    a.this.app.c(c0563a);
                }
            }
        });
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "adOutCallback";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        try {
            C0563a c0563a = new C0563a();
            c0563a.parseJson(new JSONObject(str));
            b(c0563a);
        } catch (Throwable unused) {
        }
    }
}
