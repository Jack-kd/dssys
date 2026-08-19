package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class lu implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.f.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.f.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.f.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.f.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.Xv = jSONObject.optString("areaCode");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.Xv)) {
            bVar.Xv = "";
        }
        bVar.Xw = jSONObject.optLong("pendantResourceId");
        bVar.Xx = jSONObject.optString("pendantCode");
        if (obj.toString().equals(bVar.Xx)) {
            bVar.Xx = "";
        }
        bVar.action = jSONObject.optInt(com.umeng.ccg.a.f49772z);
        bVar.Xy = jSONObject.optString("eventData");
        if (obj.toString().equals(bVar.Xy)) {
            bVar.Xy = "";
        }
        bVar.XA = jSONObject.optBoolean("needServerProcess");
        bVar.XB = jSONObject.optBoolean("needBusinessHandle");
        bVar.XC = jSONObject.optString("callbackApi");
        if (obj.toString().equals(bVar.XC)) {
            bVar.XC = "";
        }
        bVar.XD = jSONObject.optBoolean("needRandomCall");
        bVar.XE = jSONObject.optLong("randomRangeMillis");
        bVar.XF = jSONObject.optBoolean("needSignalFallback");
        bVar.XG = jSONObject.optString("callbackPath");
        if (obj.toString().equals(bVar.XG)) {
            bVar.XG = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.f.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.Xv;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "areaCode", bVar.Xv);
        }
        long j2 = bVar.Xw;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pendantResourceId", j2);
        }
        String str2 = bVar.Xx;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pendantCode", bVar.Xx);
        }
        int i2 = bVar.action;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.ccg.a.f49772z, i2);
        }
        String str3 = bVar.Xy;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "eventData", bVar.Xy);
        }
        boolean z2 = bVar.XA;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needServerProcess", z2);
        }
        boolean z3 = bVar.XB;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needBusinessHandle", z3);
        }
        String str4 = bVar.XC;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callbackApi", bVar.XC);
        }
        boolean z4 = bVar.XD;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needRandomCall", z4);
        }
        long j3 = bVar.XE;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "randomRangeMillis", j3);
        }
        boolean z5 = bVar.XF;
        if (z5) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needSignalFallback", z5);
        }
        String str5 = bVar.XG;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callbackPath", bVar.XG);
        }
        return jSONObject;
    }
}
