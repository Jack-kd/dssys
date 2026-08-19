package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.ah;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kh implements com.kwad.sdk.core.d<ah.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ah.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ah.a) bVar, jSONObject);
    }

    private static void a(ah.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.SDKVersion = jSONObject.optString("SDKVersion");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.SDKVersion)) {
            aVar.SDKVersion = "";
        }
        aVar.SDKVersionCode = jSONObject.optInt("SDKVersionCode");
        aVar.sdkApiVersion = jSONObject.optString("sdkApiVersion");
        if (obj.toString().equals(aVar.sdkApiVersion)) {
            aVar.sdkApiVersion = "";
        }
        aVar.sdkApiVersionCode = jSONObject.optInt("sdkApiVersionCode");
        aVar.sdkType = jSONObject.optInt("sdkType");
        aVar.appVersion = jSONObject.optString("appVersion");
        if (obj.toString().equals(aVar.appVersion)) {
            aVar.appVersion = "";
        }
        aVar.appName = jSONObject.optString(com.umeng.analytics.pro.cl.f49061p);
        if (obj.toString().equals(aVar.appName)) {
            aVar.appName = "";
        }
        aVar.appId = jSONObject.optString("appId");
        if (obj.toString().equals(aVar.appId)) {
            aVar.appId = "";
        }
        aVar.aqu = jSONObject.optString("networkType");
        if (obj.toString().equals(aVar.aqu)) {
            aVar.aqu = "";
        }
        aVar.aqv = jSONObject.optString("manufacturer");
        if (obj.toString().equals(aVar.aqv)) {
            aVar.aqv = "";
        }
        aVar.model = jSONObject.optString("model");
        if (obj.toString().equals(aVar.model)) {
            aVar.model = "";
        }
        aVar.Nq = jSONObject.optString("deviceBrand");
        if (obj.toString().equals(aVar.Nq)) {
            aVar.Nq = "";
        }
        aVar.aqw = jSONObject.optInt("osType");
        aVar.aqx = jSONObject.optString("systemVersion");
        if (obj.toString().equals(aVar.aqx)) {
            aVar.aqx = "";
        }
        aVar.aqy = jSONObject.optInt("osApi");
        aVar.aqz = jSONObject.optString("language");
        if (obj.toString().equals(aVar.aqz)) {
            aVar.aqz = "";
        }
        aVar.Un = jSONObject.optString("locale");
        if (obj.toString().equals(aVar.Un)) {
            aVar.Un = "";
        }
        aVar.Sq = jSONObject.optInt("screenWidth");
        aVar.Sp = jSONObject.optInt("screenHeight");
        aVar.aqA = jSONObject.optInt("statusBarHeight");
        aVar.aqB = jSONObject.optInt("titleBarHeight");
    }

    private static JSONObject b(ah.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.SDKVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersion", aVar.SDKVersion);
        }
        int i2 = aVar.SDKVersionCode;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersionCode", i2);
        }
        String str2 = aVar.sdkApiVersion;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersion", aVar.sdkApiVersion);
        }
        int i3 = aVar.sdkApiVersionCode;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersionCode", i3);
        }
        int i4 = aVar.sdkType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkType", i4);
        }
        String str3 = aVar.appVersion;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appVersion", aVar.appVersion);
        }
        String str4 = aVar.appName;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.cl.f49061p, aVar.appName);
        }
        String str5 = aVar.appId;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appId", aVar.appId);
        }
        String str6 = aVar.aqu;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "networkType", aVar.aqu);
        }
        String str7 = aVar.aqv;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "manufacturer", aVar.aqv);
        }
        String str8 = aVar.model;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "model", aVar.model);
        }
        String str9 = aVar.Nq;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceBrand", aVar.Nq);
        }
        int i5 = aVar.aqw;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osType", i5);
        }
        String str10 = aVar.aqx;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "systemVersion", aVar.aqx);
        }
        int i6 = aVar.aqy;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osApi", i6);
        }
        String str11 = aVar.aqz;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "language", aVar.aqz);
        }
        String str12 = aVar.Un;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "locale", aVar.Un);
        }
        int i7 = aVar.Sq;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenWidth", i7);
        }
        int i8 = aVar.Sp;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHeight", i8);
        }
        int i9 = aVar.aqA;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "statusBarHeight", i9);
        }
        int i10 = aVar.aqB;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleBarHeight", i10);
        }
        return jSONObject;
    }
}
