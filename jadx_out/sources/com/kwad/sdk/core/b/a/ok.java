package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.model.WebViewCommercialMsg;
import com.sigmob.sdk.base.mta.PointParamKey;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ok implements com.kwad.sdk.core.d<WebViewCommercialMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((WebViewCommercialMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((WebViewCommercialMsg) bVar, jSONObject);
    }

    private static void a(WebViewCommercialMsg webViewCommercialMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        webViewCommercialMsg.category = jSONObject.optString(PointParamKey.CATEGORY);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(webViewCommercialMsg.category)) {
            webViewCommercialMsg.category = "";
        }
        webViewCommercialMsg.tag = jSONObject.optString("tag");
        if (obj.toString().equals(webViewCommercialMsg.tag)) {
            webViewCommercialMsg.tag = "";
        }
        webViewCommercialMsg.primaryKey = jSONObject.optString("primaryKey");
        if (obj.toString().equals(webViewCommercialMsg.primaryKey)) {
            webViewCommercialMsg.primaryKey = "";
        }
        webViewCommercialMsg.msg = jSONObject.optJSONObject("msg");
        webViewCommercialMsg.extraParam = jSONObject.optJSONObject("extraParam");
        webViewCommercialMsg.eventId = jSONObject.optString("event_id");
        if (obj.toString().equals(webViewCommercialMsg.eventId)) {
            webViewCommercialMsg.eventId = "";
        }
        webViewCommercialMsg.rate = jSONObject.optDouble("rate");
        webViewCommercialMsg.suffixRatio = jSONObject.optString("suffixRatio");
        if (obj.toString().equals(webViewCommercialMsg.suffixRatio)) {
            webViewCommercialMsg.suffixRatio = "";
        }
    }

    private static JSONObject b(WebViewCommercialMsg webViewCommercialMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = webViewCommercialMsg.category;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, PointParamKey.CATEGORY, webViewCommercialMsg.category);
        }
        String str2 = webViewCommercialMsg.tag;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tag", webViewCommercialMsg.tag);
        }
        String str3 = webViewCommercialMsg.primaryKey;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "primaryKey", webViewCommercialMsg.primaryKey);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "msg", webViewCommercialMsg.msg);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "extraParam", webViewCommercialMsg.extraParam);
        String str4 = webViewCommercialMsg.eventId;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "event_id", webViewCommercialMsg.eventId);
        }
        double d2 = webViewCommercialMsg.rate;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rate", d2);
        }
        String str5 = webViewCommercialMsg.suffixRatio;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "suffixRatio", webViewCommercialMsg.suffixRatio);
        }
        return jSONObject;
    }
}
