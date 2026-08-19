package com.kwad.sdk.core.b.a;

import com.kwad.sdk.monitor.b;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ll implements com.kwad.sdk.core.d<b.C0633b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((b.C0633b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((b.C0633b) bVar, jSONObject);
    }

    private static void a(b.C0633b c0633b, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0633b.bjh = jSONObject.optInt("enable_monitor");
        c0633b.bji = jSONObject.optString("c_sc_name");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0633b.bji)) {
            c0633b.bji = "";
        }
        c0633b.bjj = jSONObject.optString("c_pcl_name");
        if (obj.toString().equals(c0633b.bjj)) {
            c0633b.bjj = "";
        }
        c0633b.bjk = jSONObject.optString("m_gam_name");
        if (obj.toString().equals(c0633b.bjk)) {
            c0633b.bjk = "";
        }
        c0633b.bjl = jSONObject.optString("m_gsv_name");
        if (obj.toString().equals(c0633b.bjl)) {
            c0633b.bjl = "";
        }
        c0633b.bjm = jSONObject.optString("m_gpv_name");
        if (obj.toString().equals(c0633b.bjm)) {
            c0633b.bjm = "";
        }
    }

    private static JSONObject b(b.C0633b c0633b, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = c0633b.bjh;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enable_monitor", i2);
        }
        String str = c0633b.bji;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "c_sc_name", c0633b.bji);
        }
        String str2 = c0633b.bjj;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "c_pcl_name", c0633b.bjj);
        }
        String str3 = c0633b.bjk;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gam_name", c0633b.bjk);
        }
        String str4 = c0633b.bjl;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gsv_name", c0633b.bjl);
        }
        String str5 = c0633b.bjm;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gpv_name", c0633b.bjm);
        }
        return jSONObject;
    }
}
