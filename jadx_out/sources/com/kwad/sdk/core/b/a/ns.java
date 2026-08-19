package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.aj;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ns implements com.kwad.sdk.core.d<aj.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((aj.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((aj.a) bVar, jSONObject);
    }

    private static void a(aj.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.type = jSONObject.optInt("type");
        aVar.appName = jSONObject.optString(com.umeng.analytics.pro.cl.f49061p);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.appName)) {
            aVar.appName = "";
        }
        aVar.pkgName = jSONObject.optString("pkgName");
        if (obj.toString().equals(aVar.pkgName)) {
            aVar.pkgName = "";
        }
        aVar.version = jSONObject.optString(com.umeng.analytics.pro.cl.f49059n);
        if (obj.toString().equals(aVar.version)) {
            aVar.version = "";
        }
        aVar.versionCode = jSONObject.optInt("versionCode");
        aVar.aqE = jSONObject.optInt("appSize");
        aVar.md5 = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
        if (obj.toString().equals(aVar.md5)) {
            aVar.md5 = "";
        }
        aVar.url = jSONObject.optString("url");
        if (obj.toString().equals(aVar.url)) {
            aVar.url = "";
        }
        aVar.aqF = jSONObject.optString("appLink");
        if (obj.toString().equals(aVar.aqF)) {
            aVar.aqF = "";
        }
        aVar.icon = jSONObject.optString("icon");
        if (obj.toString().equals(aVar.icon)) {
            aVar.icon = "";
        }
        aVar.tU = jSONObject.optString("desc");
        if (obj.toString().equals(aVar.tU)) {
            aVar.tU = "";
        }
        aVar.appId = jSONObject.optString("appId");
        if (obj.toString().equals(aVar.appId)) {
            aVar.appId = "";
        }
        aVar.aqG = jSONObject.optString("marketUri");
        if (obj.toString().equals(aVar.aqG)) {
            aVar.aqG = "";
        }
        aVar.aqH = jSONObject.optBoolean("disableLandingPageDeepLink");
        aVar.aqI = jSONObject.optBoolean("isLandscapeSupported");
        aVar.aqJ = jSONObject.optBoolean("isFromLive");
    }

    private static JSONObject b(aj.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.type;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i2);
        }
        String str = aVar.appName;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.cl.f49061p, aVar.appName);
        }
        String str2 = aVar.pkgName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pkgName", aVar.pkgName);
        }
        String str3 = aVar.version;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.cl.f49059n, aVar.version);
        }
        int i3 = aVar.versionCode;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "versionCode", i3);
        }
        int i4 = aVar.aqE;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appSize", i4);
        }
        String str4 = aVar.md5;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, TKDownloadReason.KSAD_TK_MD5, aVar.md5);
        }
        String str5 = aVar.url;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", aVar.url);
        }
        String str6 = aVar.aqF;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appLink", aVar.aqF);
        }
        String str7 = aVar.icon;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "icon", aVar.icon);
        }
        String str8 = aVar.tU;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "desc", aVar.tU);
        }
        String str9 = aVar.appId;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appId", aVar.appId);
        }
        String str10 = aVar.aqG;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "marketUri", aVar.aqG);
        }
        boolean z2 = aVar.aqH;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "disableLandingPageDeepLink", z2);
        }
        boolean z3 = aVar.aqI;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isLandscapeSupported", z3);
        }
        boolean z4 = aVar.aqJ;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isFromLive", z4);
        }
        return jSONObject;
    }
}
