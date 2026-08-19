package com.kwad.sdk.core.b.a;

import com.kwad.sdk.wrapper.l;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class on implements com.kwad.sdk.core.d<l.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((l.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((l.a) bVar, jSONObject);
    }

    private static void a(l.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bue = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("c_cns");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                aVar.bue.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
        aVar.bug = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("s_cns");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                l.a.C0640a c0640a = new l.a.C0640a();
                c0640a.parseJson(jSONArrayOptJSONArray2.optJSONObject(i3));
                aVar.bug.add(c0640a);
            }
        }
    }

    private static JSONObject b(l.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "c_cns", aVar.bue);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "s_cns", aVar.bug);
        return jSONObject;
    }
}
