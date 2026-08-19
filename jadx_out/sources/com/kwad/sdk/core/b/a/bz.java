package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bz implements com.kwad.sdk.core.d<com.kwad.components.ad.c.c.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.c.c.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.c.c.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.c.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.materialType = jSONObject.optInt("material_type");
        bVar.materialUrl = jSONObject.optString("material_url");
        if (JSONObject.NULL.toString().equals(bVar.materialUrl)) {
            bVar.materialUrl = "";
        }
        bVar.adNum = jSONObject.optInt("ad_num");
        bVar.loadTime = jSONObject.optLong("load_ad_duration_ms");
        bVar.renderTime = jSONObject.optLong("render_duration_ms");
        bVar.cQ = jSONObject.optLong("request_ad_duration_ms");
        bVar.cR = jSONObject.optInt("is_retry_request");
        bVar.renderType = jSONObject.optInt("render_type");
        bVar.cP = jSONObject.optInt("expect_render_type");
    }

    private static JSONObject b(com.kwad.components.ad.c.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        int i3 = bVar.materialType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i3);
        }
        String str = bVar.materialUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_url", bVar.materialUrl);
        }
        int i4 = bVar.adNum;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_num", i4);
        }
        long j2 = bVar.loadTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_ad_duration_ms", j2);
        }
        long j3 = bVar.renderTime;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_duration_ms", j3);
        }
        long j4 = bVar.cQ;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_ad_duration_ms", j4);
        }
        int i5 = bVar.cR;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_retry_request", i5);
        }
        int i6 = bVar.renderType;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i6);
        }
        int i7 = bVar.cP;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expect_render_type", i7);
        }
        return jSONObject;
    }
}
