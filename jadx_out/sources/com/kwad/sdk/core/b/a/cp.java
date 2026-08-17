package com.kwad.sdk.core.b.a;

import com.anythink.network.ks.KSATConst;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cp implements com.kwad.sdk.core.d<com.kwad.sdk.core.report.h> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.report.h) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.report.h) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.report.h hVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        hVar.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        hVar.creativeId = jSONObject.optLong("creative_id");
        hVar.score = jSONObject.optInt("score");
        hVar.aVp = jSONObject.optInt("is_bidding");
        hVar.source = jSONObject.optString(com.sigmob.sdk.base.n.f36449l);
        if (JSONObject.NULL.toString().equals(hVar.source)) {
            hVar.source = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.report.h hVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = hVar.llsid;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j2);
        }
        long j3 = hVar.creativeId;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j3);
        }
        int i2 = hVar.score;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "score", i2);
        }
        int i3 = hVar.aVp;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_bidding", i3);
        }
        String str = hVar.source;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.sigmob.sdk.base.n.f36449l, hVar.source);
        }
        return jSONObject;
    }
}
