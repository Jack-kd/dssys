package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bk implements com.kwad.sdk.core.d<com.kwad.sdk.commercial.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.commercial.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.commercial.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.commercial.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.url = jSONObject.optString("url");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.url)) {
            bVar.url = "";
        }
        bVar.aJY = jSONObject.optString("url_host");
        if (obj.toString().equals(bVar.aJY)) {
            bVar.aJY = "";
        }
        bVar.downloadId = jSONObject.optString("download_id");
        if (obj.toString().equals(bVar.downloadId)) {
            bVar.downloadId = "";
        }
        bVar.aJZ = jSONObject.optString("apk_package");
        if (obj.toString().equals(bVar.aJZ)) {
            bVar.aJZ = "";
        }
        bVar.aKa = jSONObject.optString("apk_name");
        if (obj.toString().equals(bVar.aKa)) {
            bVar.aKa = "";
        }
        bVar.aKb = jSONObject.optLong("apk_size");
        bVar.downloadTime = jSONObject.optLong("download_time");
        bVar.aKc = jSONObject.optLong("apk_cur_size");
        bVar.aKd = jSONObject.optInt("apk_install_type");
        bVar.aKe = jSONObject.optInt("apk_install_source");
    }

    private static JSONObject b(com.kwad.sdk.commercial.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        String str = bVar.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", bVar.url);
        }
        String str2 = bVar.aJY;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url_host", bVar.aJY);
        }
        String str3 = bVar.downloadId;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "download_id", bVar.downloadId);
        }
        String str4 = bVar.aJZ;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_package", bVar.aJZ);
        }
        String str5 = bVar.aKa;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_name", bVar.aKa);
        }
        long j2 = bVar.aKb;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_size", j2);
        }
        long j3 = bVar.downloadTime;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "download_time", j3);
        }
        long j4 = bVar.aKc;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_cur_size", j4);
        }
        int i3 = bVar.aKd;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_install_type", i3);
        }
        int i4 = bVar.aKe;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_install_source", i4);
        }
        return jSONObject;
    }
}
