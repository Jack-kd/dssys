package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.h.a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class na implements com.kwad.sdk.core.d<a.C0613a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0613a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0613a) bVar, jSONObject);
    }

    private static void a(a.C0613a c0613a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0613a.aYX = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sdk_version");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                c0613a.aYX.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
        c0613a.aYY = jSONObject.optInt(com.umeng.analytics.pro.bv.f48924y);
        c0613a.aYZ = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("abi");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                c0613a.aYZ.add((String) jSONArrayOptJSONArray2.opt(i3));
            }
        }
        c0613a.aZa = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("brand");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                c0613a.aZa.add((String) jSONArrayOptJSONArray3.opt(i4));
            }
        }
    }

    private static JSONObject b(a.C0613a c0613a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdk_version", c0613a.aYX);
        int i2 = c0613a.aYY;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bv.f48924y, i2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "abi", c0613a.aYZ);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "brand", c0613a.aZa);
        return jSONObject;
    }
}
