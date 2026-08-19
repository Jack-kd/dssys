package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class mw implements com.kwad.sdk.core.d<AdMatrixInfo.StyleInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.StyleInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.StyleInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.StyleInfo styleInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        styleInfo.title = jSONObject.optString(g.a.f3271h);
        if (JSONObject.NULL.toString().equals(styleInfo.title)) {
            styleInfo.title = "";
        }
    }

    private static JSONObject b(AdMatrixInfo.StyleInfo styleInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = styleInfo.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, styleInfo.title);
        }
        return jSONObject;
    }
}
