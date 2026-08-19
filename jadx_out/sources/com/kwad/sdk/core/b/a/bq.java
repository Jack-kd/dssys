package com.kwad.sdk.core.b.a;

import com.kwad.components.core.request.model.b;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bq implements com.kwad.sdk.core.d<b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((b.a) bVar, jSONObject);
    }

    private static void a(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.streamType = jSONObject.optInt("streamType");
        aVar.ako = jSONObject.optInt("maxVolume");
        aVar.akp = jSONObject.optInt("minVolume");
        aVar.akq = jSONObject.optInt("currentVolume");
    }

    private static JSONObject b(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.streamType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "streamType", i2);
        }
        int i3 = aVar.ako;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "maxVolume", i3);
        }
        int i4 = aVar.akp;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "minVolume", i4);
        }
        int i5 = aVar.akq;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentVolume", i5);
        }
        return jSONObject;
    }
}
