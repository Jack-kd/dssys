package com.kwad.components.core.webview.tachikoma.b;

import androidx.annotation.NonNull;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.webview.c.a {
    protected final com.kwad.sdk.core.webview.b apJ;
    private AdTemplate mAdTemplate;

    public b(@NonNull com.kwad.sdk.core.webview.b bVar, @NonNull AdTemplate adTemplate) {
        this.apJ = bVar;
        this.mAdTemplate = adTemplate;
    }

    private void bk(AdTemplate adTemplate) {
        adTemplate.mIsForceJumpLandingPage = true;
        com.kwad.components.core.e.d.a.a(new a.C0529a(this.apJ.adW.getContext()).aJ(adTemplate).aN(1).ar(true).ap(true).au(false));
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            AdTemplate adTemplate = new AdTemplate();
            if (jSONObject.has("adTemplate")) {
                adTemplate.parseJson(new JSONObject(jSONObject.getString("adTemplate")));
            }
            if (adTemplate.adInfoList.size() != 0) {
                bk(adTemplate);
            } else {
                bk(this.mAdTemplate);
            }
            cVar.b(null);
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "activityMiddlePageConvert";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
