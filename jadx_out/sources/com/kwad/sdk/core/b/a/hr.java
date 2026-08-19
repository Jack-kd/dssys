package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hr implements com.kwad.sdk.core.d<com.kwad.components.core.b.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.b.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.b.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.title = jSONObject.optString(g.a.f3271h);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.title)) {
            bVar.title = "";
        }
        bVar.Pc = jSONObject.optString("titleTextColor");
        if (obj.toString().equals(bVar.Pc)) {
            bVar.Pc = "";
        }
        bVar.Pd = jSONObject.optString("titleBackgroundColor");
        if (obj.toString().equals(bVar.Pd)) {
            bVar.Pd = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, bVar.title);
        }
        String str2 = bVar.Pc;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleTextColor", bVar.Pc);
        }
        String str3 = bVar.Pd;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleBackgroundColor", bVar.Pd);
        }
        return jSONObject;
    }
}
