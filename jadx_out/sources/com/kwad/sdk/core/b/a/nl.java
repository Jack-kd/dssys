package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.i.a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nl implements com.kwad.sdk.core.d<a.C0599a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0599a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0599a) bVar, jSONObject);
    }

    private static void a(a.C0599a c0599a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0599a.aKH = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("blackList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                c0599a.aKH.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
    }

    private static JSONObject b(a.C0599a c0599a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "blackList", c0599a.aKH);
        return jSONObject;
    }
}
