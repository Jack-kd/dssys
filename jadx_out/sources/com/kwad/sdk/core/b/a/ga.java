package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.webview.d.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ga implements com.kwad.sdk.core.d<a.C0620a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0620a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0620a) bVar, jSONObject);
    }

    private static void a(a.C0620a c0620a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0620a.SDKVersion = jSONObject.optString("SDKVersion");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0620a.SDKVersion)) {
            c0620a.SDKVersion = "";
        }
        c0620a.SDKVersionCode = jSONObject.optInt("SDKVersionCode");
        c0620a.aWn = jSONObject.optString("tkVersion");
        if (obj.toString().equals(c0620a.aWn)) {
            c0620a.aWn = "";
        }
        c0620a.sdkApiVersion = jSONObject.optString("sdkApiVersion");
        if (obj.toString().equals(c0620a.sdkApiVersion)) {
            c0620a.sdkApiVersion = "";
        }
        c0620a.sdkApiVersionCode = jSONObject.optInt("sdkApiVersionCode");
        c0620a.sdkType = jSONObject.optInt("sdkType");
        c0620a.appVersion = jSONObject.optString("appVersion");
        if (obj.toString().equals(c0620a.appVersion)) {
            c0620a.appVersion = "";
        }
        c0620a.appName = jSONObject.optString(com.umeng.analytics.pro.cl.f49061p);
        if (obj.toString().equals(c0620a.appName)) {
            c0620a.appName = "";
        }
        c0620a.appId = jSONObject.optString("appId");
        if (obj.toString().equals(c0620a.appId)) {
            c0620a.appId = "";
        }
        c0620a.bda = jSONObject.optString("globalId");
        if (obj.toString().equals(c0620a.bda)) {
            c0620a.bda = "";
        }
        c0620a.aXb = jSONObject.optString("eGid");
        if (obj.toString().equals(c0620a.aXb)) {
            c0620a.aXb = "";
        }
        c0620a.aXa = jSONObject.optString("deviceSig");
        if (obj.toString().equals(c0620a.aXa)) {
            c0620a.aXa = "";
        }
        c0620a.aqu = jSONObject.optString("networkType");
        if (obj.toString().equals(c0620a.aqu)) {
            c0620a.aqu = "";
        }
        c0620a.aqv = jSONObject.optString("manufacturer");
        if (obj.toString().equals(c0620a.aqv)) {
            c0620a.aqv = "";
        }
        c0620a.model = jSONObject.optString("model");
        if (obj.toString().equals(c0620a.model)) {
            c0620a.model = "";
        }
        c0620a.Nq = jSONObject.optString("deviceBrand");
        if (obj.toString().equals(c0620a.Nq)) {
            c0620a.Nq = "";
        }
        c0620a.aqw = jSONObject.optInt("osType");
        c0620a.aqx = jSONObject.optString("systemVersion");
        if (obj.toString().equals(c0620a.aqx)) {
            c0620a.aqx = "";
        }
        c0620a.aqy = jSONObject.optInt("osApi");
        c0620a.aqz = jSONObject.optString("language");
        if (obj.toString().equals(c0620a.aqz)) {
            c0620a.aqz = "";
        }
        c0620a.Un = jSONObject.optString("locale");
        if (obj.toString().equals(c0620a.Un)) {
            c0620a.Un = "";
        }
        c0620a.bdb = jSONObject.optString("uuid");
        if (obj.toString().equals(c0620a.bdb)) {
            c0620a.bdb = "";
        }
        c0620a.bdc = jSONObject.optBoolean("isDynamic");
        c0620a.Sq = jSONObject.optInt("screenWidth");
        c0620a.Sp = jSONObject.optInt("screenHeight");
        c0620a.aQZ = jSONObject.optString("imei");
        if (obj.toString().equals(c0620a.aQZ)) {
            c0620a.aQZ = "";
        }
        c0620a.aRa = jSONObject.optString("oaid");
        if (obj.toString().equals(c0620a.aRa)) {
            c0620a.aRa = "";
        }
        c0620a.aWY = jSONObject.optString("androidId");
        if (obj.toString().equals(c0620a.aWY)) {
            c0620a.aWY = "";
        }
        c0620a.aXo = jSONObject.optString("mac");
        if (obj.toString().equals(c0620a.aXo)) {
            c0620a.aXo = "";
        }
        c0620a.aqA = jSONObject.optInt("statusBarHeight");
        c0620a.aqB = jSONObject.optInt("titleBarHeight");
        c0620a.bdd = jSONObject.optString("bridgeVersion");
        if (obj.toString().equals(c0620a.bdd)) {
            c0620a.bdd = "";
        }
    }

    private static JSONObject b(a.C0620a c0620a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0620a.SDKVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersion", c0620a.SDKVersion);
        }
        int i2 = c0620a.SDKVersionCode;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersionCode", i2);
        }
        String str2 = c0620a.aWn;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tkVersion", c0620a.aWn);
        }
        String str3 = c0620a.sdkApiVersion;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersion", c0620a.sdkApiVersion);
        }
        int i3 = c0620a.sdkApiVersionCode;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersionCode", i3);
        }
        int i4 = c0620a.sdkType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkType", i4);
        }
        String str4 = c0620a.appVersion;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appVersion", c0620a.appVersion);
        }
        String str5 = c0620a.appName;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.cl.f49061p, c0620a.appName);
        }
        String str6 = c0620a.appId;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appId", c0620a.appId);
        }
        String str7 = c0620a.bda;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "globalId", c0620a.bda);
        }
        String str8 = c0620a.aXb;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "eGid", c0620a.aXb);
        }
        String str9 = c0620a.aXa;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceSig", c0620a.aXa);
        }
        String str10 = c0620a.aqu;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "networkType", c0620a.aqu);
        }
        String str11 = c0620a.aqv;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "manufacturer", c0620a.aqv);
        }
        String str12 = c0620a.model;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "model", c0620a.model);
        }
        String str13 = c0620a.Nq;
        if (str13 != null && !str13.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceBrand", c0620a.Nq);
        }
        int i5 = c0620a.aqw;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osType", i5);
        }
        String str14 = c0620a.aqx;
        if (str14 != null && !str14.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "systemVersion", c0620a.aqx);
        }
        int i6 = c0620a.aqy;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osApi", i6);
        }
        String str15 = c0620a.aqz;
        if (str15 != null && !str15.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "language", c0620a.aqz);
        }
        String str16 = c0620a.Un;
        if (str16 != null && !str16.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "locale", c0620a.Un);
        }
        String str17 = c0620a.bdb;
        if (str17 != null && !str17.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "uuid", c0620a.bdb);
        }
        boolean z2 = c0620a.bdc;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isDynamic", z2);
        }
        int i7 = c0620a.Sq;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenWidth", i7);
        }
        int i8 = c0620a.Sp;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHeight", i8);
        }
        String str18 = c0620a.aQZ;
        if (str18 != null && !str18.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "imei", c0620a.aQZ);
        }
        String str19 = c0620a.aRa;
        if (str19 != null && !str19.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "oaid", c0620a.aRa);
        }
        String str20 = c0620a.aWY;
        if (str20 != null && !str20.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "androidId", c0620a.aWY);
        }
        String str21 = c0620a.aXo;
        if (str21 != null && !str21.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mac", c0620a.aXo);
        }
        int i9 = c0620a.aqA;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "statusBarHeight", i9);
        }
        int i10 = c0620a.aqB;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleBarHeight", i10);
        }
        String str22 = c0620a.bdd;
        if (str22 != null && !str22.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bridgeVersion", c0620a.bdd);
        }
        return jSONObject;
    }
}
