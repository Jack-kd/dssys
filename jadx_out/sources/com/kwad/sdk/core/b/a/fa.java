package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class fa implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.i> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.i) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.i) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.i iVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        iVar.aun = jSONObject.optInt("motionType");
        iVar.convertType = jSONObject.optInt("convertType");
        iVar.auo = jSONObject.optString("convertSensitivity");
        if (JSONObject.NULL.toString().equals(iVar.auo)) {
            iVar.auo = "";
        }
        AdMatrixInfo.AdInteractionInfo adInteractionInfo = new AdMatrixInfo.AdInteractionInfo();
        iVar.interactionInfo = adInteractionInfo;
        adInteractionInfo.parseJson(jSONObject.optJSONObject("interactionInfo"));
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.i iVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = iVar.aun;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "motionType", i2);
        }
        int i3 = iVar.convertType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertType", i3);
        }
        String str = iVar.auo;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertSensitivity", iVar.auo);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "interactionInfo", iVar.interactionInfo);
        return jSONObject;
    }
}
