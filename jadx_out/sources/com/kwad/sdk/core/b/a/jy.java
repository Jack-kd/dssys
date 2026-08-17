package com.kwad.sdk.core.b.a;

import com.kwad.sdk.m.a.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jy implements com.kwad.sdk.core.d<b.a> {
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
        aVar.bnl = jSONObject.optString("typeStr");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.bnl)) {
            aVar.bnl = "";
        }
        aVar.bnm = jSONObject.optString("valueStr");
        if (obj.toString().equals(aVar.bnm)) {
            aVar.bnm = "";
        }
        aVar.bnn = jSONObject.optString("listValueType");
        if (obj.toString().equals(aVar.bnn)) {
            aVar.bnn = "";
        }
        aVar.bno = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("valueStrList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                aVar.bno.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
        aVar.fieldName = jSONObject.optString("fieldName");
        Object obj2 = JSONObject.NULL;
        if (obj2.toString().equals(aVar.fieldName)) {
            aVar.fieldName = "";
        }
        aVar.className = jSONObject.optString("className");
        if (obj2.toString().equals(aVar.className)) {
            aVar.className = "";
        }
        aVar.bnp = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("childParamList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                b.a aVar2 = new b.a();
                aVar2.parseJson(jSONArrayOptJSONArray2.optJSONObject(i3));
                aVar.bnp.add(aVar2);
            }
        }
    }

    private static JSONObject b(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.bnl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "typeStr", aVar.bnl);
        }
        String str2 = aVar.bnm;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "valueStr", aVar.bnm);
        }
        String str3 = aVar.bnn;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "listValueType", aVar.bnn);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "valueStrList", aVar.bno);
        String str4 = aVar.fieldName;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fieldName", aVar.fieldName);
        }
        String str5 = aVar.className;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "className", aVar.className);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "childParamList", aVar.bnp);
        return jSONObject;
    }
}
