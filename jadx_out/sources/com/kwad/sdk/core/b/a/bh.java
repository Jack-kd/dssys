package com.kwad.sdk.core.b.a;

import com.kwad.sdk.m.a.b;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bh implements com.kwad.sdk.core.d<com.kwad.sdk.m.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.bnf = jSONObject.optString("nodeClassName");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.bnf)) {
            bVar.bnf = "";
        }
        bVar.bng = jSONObject.optString("childFieldName");
        if (obj.toString().equals(bVar.bng)) {
            bVar.bng = "";
        }
        bVar.bnh = jSONObject.optBoolean("childFieldIsStatic");
        bVar.bni = jSONObject.optString("reportKey");
        if (obj.toString().equals(bVar.bni)) {
            bVar.bni = "";
        }
        b.C0630b c0630b = new b.C0630b();
        bVar.bnj = c0630b;
        c0630b.parseJson(jSONObject.optJSONObject("childMethod"));
        com.kwad.sdk.m.a.b bVar2 = new com.kwad.sdk.m.a.b();
        bVar.bnk = bVar2;
        bVar2.parseJson(jSONObject.optJSONObject("deepNode"));
    }

    private static JSONObject b(com.kwad.sdk.m.a.b bVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.bnf;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "nodeClassName", bVar.bnf);
        }
        String str2 = bVar.bng;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "childFieldName", bVar.bng);
        }
        boolean z2 = bVar.bnh;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "childFieldIsStatic", z2);
        }
        String str3 = bVar.bni;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "reportKey", bVar.bni);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "childMethod", bVar.bnj);
        com.kwad.sdk.utils.ac.a(jSONObject, "deepNode", bVar.bnk);
        return jSONObject;
    }
}
