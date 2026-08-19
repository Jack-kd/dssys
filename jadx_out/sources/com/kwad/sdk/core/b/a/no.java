package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class no implements com.kwad.sdk.core.d<AdInfo.UnDownloadConf> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.UnDownloadConf) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.UnDownloadConf) bVar, jSONObject);
    }

    private static void a(AdInfo.UnDownloadConf unDownloadConf, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        AdInfo.UnDownloadRegionConf unDownloadRegionConf = new AdInfo.UnDownloadRegionConf();
        unDownloadConf.unDownloadRegionConf = unDownloadRegionConf;
        unDownloadRegionConf.parseJson(jSONObject.optJSONObject("unDownloadRegionConf"));
    }

    private static JSONObject b(AdInfo.UnDownloadConf unDownloadConf, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "unDownloadRegionConf", unDownloadConf.unDownloadRegionConf);
        return jSONObject;
    }
}
