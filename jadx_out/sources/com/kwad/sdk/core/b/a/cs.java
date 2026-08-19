package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.kwad.components.ad.reward.h;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cs implements com.kwad.sdk.core.d<h.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((h.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((h.c) bVar, jSONObject);
    }

    private static void a(h.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.style = jSONObject.optInt("style");
        cVar.title = jSONObject.optString(g.a.f3271h);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(cVar.title)) {
            cVar.title = "";
        }
        cVar.tP = jSONObject.optString("closeBtnText");
        if (obj.toString().equals(cVar.tP)) {
            cVar.tP = "";
        }
        cVar.tQ = jSONObject.optString("continueBtnText");
        if (obj.toString().equals(cVar.tQ)) {
            cVar.tQ = "";
        }
        cVar.tR = jSONObject.optString("viewDetailText");
        if (obj.toString().equals(cVar.tR)) {
            cVar.tR = "";
        }
        cVar.tS = jSONObject.optString("unWatchedVideoTime");
        if (obj.toString().equals(cVar.tS)) {
            cVar.tS = "";
        }
        cVar.tT = jSONObject.optString("iconUrl");
        if (obj.toString().equals(cVar.tT)) {
            cVar.tT = "";
        }
        cVar.tU = jSONObject.optString("desc");
        if (obj.toString().equals(cVar.tU)) {
            cVar.tU = "";
        }
        cVar.tV = jSONObject.optString("descTxt");
        if (obj.toString().equals(cVar.tV)) {
            cVar.tV = "";
        }
        cVar.tW = jSONObject.optString("currentPlayTime");
        if (obj.toString().equals(cVar.tW)) {
            cVar.tW = "";
        }
    }

    private static JSONObject b(h.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = cVar.style;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "style", i2);
        }
        String str = cVar.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, cVar.title);
        }
        String str2 = cVar.tP;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeBtnText", cVar.tP);
        }
        String str3 = cVar.tQ;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "continueBtnText", cVar.tQ);
        }
        String str4 = cVar.tR;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "viewDetailText", cVar.tR);
        }
        String str5 = cVar.tS;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "unWatchedVideoTime", cVar.tS);
        }
        String str6 = cVar.tT;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "iconUrl", cVar.tT);
        }
        String str7 = cVar.tU;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "desc", cVar.tU);
        }
        String str8 = cVar.tV;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "descTxt", cVar.tV);
        }
        String str9 = cVar.tW;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentPlayTime", cVar.tW);
        }
        return jSONObject;
    }
}
