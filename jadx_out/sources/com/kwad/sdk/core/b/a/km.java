package com.kwad.sdk.core.b.a;

import com.kwad.sdk.m.d;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class km implements com.kwad.sdk.core.d<com.kwad.sdk.m.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.funcSwitch = jSONObject.optLong("funcSwitch");
        dVar.bmQ = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("urlList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                dVar.bmQ.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
        dVar.bmR = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("actConfigList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                d.a aVar = new d.a();
                aVar.parseJson(jSONArrayOptJSONArray2.optJSONObject(i3));
                dVar.bmR.add(aVar);
            }
        }
        dVar.byteCount = jSONObject.optLong("byteCount");
        dVar.sampleRate = jSONObject.optDouble("sampleRate");
        dVar.bmS = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("anchorNodeList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                com.kwad.sdk.m.a.b bVar = new com.kwad.sdk.m.a.b();
                bVar.parseJson(jSONArrayOptJSONArray3.optJSONObject(i4));
                dVar.bmS.add(bVar);
            }
        }
        dVar.bmI = new ArrayList();
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("aggregationCheckConfigList");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                com.kwad.sdk.m.a.a aVar2 = new com.kwad.sdk.m.a.a();
                aVar2.parseJson(jSONArrayOptJSONArray4.optJSONObject(i5));
                dVar.bmI.add(aVar2);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = dVar.funcSwitch;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "funcSwitch", j2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "urlList", dVar.bmQ);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "actConfigList", dVar.bmR);
        long j3 = dVar.byteCount;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "byteCount", j3);
        }
        double d2 = dVar.sampleRate;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sampleRate", d2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "anchorNodeList", dVar.bmS);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregationCheckConfigList", dVar.bmI);
        return jSONObject;
    }
}
