package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gc implements com.kwad.sdk.core.d<com.kwad.sdk.f.a.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.f.a.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.f.a.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.f.a.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bgw = jSONObject.optInt("apiLevel");
        aVar.bgx = jSONObject.optInt("colorModeSupport");
        aVar.bgy = jSONObject.optInt("screenHdrAvailable");
        aVar.bgz = jSONObject.optInt("hdrSupport");
    }

    private static JSONObject b(com.kwad.sdk.f.a.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.bgw;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apiLevel", i2);
        }
        int i3 = aVar.bgx;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "colorModeSupport", i3);
        }
        int i4 = aVar.bgy;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHdrAvailable", i4);
        }
        int i5 = aVar.bgz;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "hdrSupport", i5);
        }
        return jSONObject;
    }
}
