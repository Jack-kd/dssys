package com.kwad.sdk.core.b.a;

import com.kwad.sdk.kgeo.KGeoInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hm implements com.kwad.sdk.core.d<KGeoInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((KGeoInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((KGeoInfo) bVar, jSONObject);
    }

    private static void a(KGeoInfo kGeoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        kGeoInfo.latitude = jSONObject.optDouble("latitude");
        kGeoInfo.longitude = jSONObject.optDouble("longitude");
        kGeoInfo.range = jSONObject.optInt("range");
        kGeoInfo.rate = jSONObject.optInt("rate");
    }

    private static JSONObject b(KGeoInfo kGeoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d2 = kGeoInfo.latitude;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "latitude", d2);
        }
        double d3 = kGeoInfo.longitude;
        if (d3 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "longitude", d3);
        }
        int i2 = kGeoInfo.range;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "range", i2);
        }
        int i3 = kGeoInfo.rate;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rate", i3);
        }
        return jSONObject;
    }
}
