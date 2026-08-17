package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.j;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class fv implements com.kwad.sdk.core.d<j.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((j.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((j.b) bVar, jSONObject);
    }

    private static void a(j.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.apD = jSONObject.optInt("playableSrc");
        bVar.apE = jSONObject.optInt("isMiddleEnd");
        bVar.aaV = jSONObject.optInt("adType");
        bVar.apF = jSONObject.optString("showTime");
        if (JSONObject.NULL.toString().equals(bVar.apF)) {
            bVar.apF = "";
        }
        bVar.convertCount = jSONObject.optInt("convertCount");
    }

    private static JSONObject b(j.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.apD;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playableSrc", i2);
        }
        int i3 = bVar.apE;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isMiddleEnd", i3);
        }
        int i4 = bVar.aaV;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adType", i4);
        }
        String str = bVar.apF;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", bVar.apF);
        }
        int i5 = bVar.convertCount;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertCount", i5);
        }
        return jSONObject;
    }
}
