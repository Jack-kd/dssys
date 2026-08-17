package com.kwad.components.core.webview.jshandler;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class an implements com.kwad.sdk.core.webview.c.a {
    private final com.kwad.sdk.core.webview.b apJ;

    @Nullable
    private final b aqS;
    private final Handler aqd;

    @KsJson
    public static final class a extends com.kwad.sdk.core.response.a.a {
        public boolean aqY;
        public String aqZ;
        public int ara;
        public com.kwad.sdk.core.webview.d.b.d arb;
    }

    public interface b {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "clickAction";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.aqd.removeCallbacksAndMessages(null);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        final com.kwad.components.core.e.d.d dVar;
        final a aVar = new a();
        final AdTemplate adTemplate = new AdTemplate();
        try {
            aVar.parseJson(new JSONObject(str));
            adTemplate.parseJson(new JSONObject(aVar.aqZ));
        } catch (JSONException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
        if (com.kwad.sdk.core.response.helper.e.eG(adTemplate)) {
            if (this.apJ.bbW != null) {
                dVar = (com.kwad.components.core.e.d.d) this.apJ.bbW.hQ(com.kwad.sdk.core.response.helper.e.eO(adTemplate).downloadId);
            } else {
                dVar = null;
            }
            if (this.apJ.bbX) {
                this.aqd.post(new com.kwad.sdk.utils.bi() { // from class: com.kwad.components.core.webview.jshandler.an.1
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                        com.kwad.components.core.e.d.a.a(new a.C0529a(an.this.apJ.adW.getContext()).aJ(adTemplate).b(dVar).aN(aVar.ara).as(true).aq(aVar.arb.QY).au(true).a(new a.b() { // from class: com.kwad.components.core.webview.jshandler.an.1.1
                            @Override // com.kwad.components.core.e.d.a.b
                            public final void onAdClicked() {
                            }
                        }));
                    }
                });
            } else if (this.aqS != null) {
                this.aqd.post(new com.kwad.sdk.utils.bi() { // from class: com.kwad.components.core.webview.jshandler.an.2
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                    }
                });
            }
            cVar.b(null);
        }
    }
}
