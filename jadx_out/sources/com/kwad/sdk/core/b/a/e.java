package com.kwad.sdk.core.b.a;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class e implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aqY = jSONObject.optBoolean("clickActionButton");
        aVar.ara = jSONObject.optInt("area");
        aVar.nm = jSONObject.optInt("itemClickType");
        aVar.bdg = jSONObject.optInt("convertPageType", new Integer("-1").intValue());
        com.kwad.sdk.core.webview.d.b.d dVar = new com.kwad.sdk.core.webview.d.b.d();
        aVar.arb = dVar;
        dVar.parseJson(jSONObject.optJSONObject("logParam"));
        aVar.needReport = jSONObject.optBoolean("needReport", new Boolean("true").booleanValue());
        aVar.creativeId = jSONObject.optLong("creativeId", new Long("-1").longValue());
        aVar.Rk = jSONObject.optString("liveItemId");
        if (JSONObject.NULL.toString().equals(aVar.Rk)) {
            aVar.Rk = "";
        }
        aVar.bdh = jSONObject.optInt("sceneType");
        aVar.adStyle = jSONObject.optInt("adStyle", new Integer("-1").intValue());
        aVar.bdi = jSONObject.optBoolean("isCallbackOnly");
        aVar.bdj = jSONObject.optBoolean("disableCallback");
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.a aVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = aVar.aqY;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickActionButton", z2);
        }
        int i2 = aVar.ara;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "area", i2);
        }
        int i3 = aVar.nm;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemClickType", i3);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "convertPageType", aVar.bdg);
        com.kwad.sdk.utils.ac.a(jSONObject, "logParam", aVar.arb);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "needReport", aVar.needReport);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", aVar.creativeId);
        String str = aVar.Rk;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "liveItemId", aVar.Rk);
        }
        int i4 = aVar.bdh;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sceneType", i4);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", aVar.adStyle);
        boolean z3 = aVar.bdi;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isCallbackOnly", z3);
        }
        boolean z4 = aVar.bdj;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "disableCallback", z4);
        }
        return jSONObject;
    }
}
