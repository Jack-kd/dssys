package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.j.b;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gy implements com.kwad.sdk.core.d<b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((b.a) bVar, jSONObject);
    }

    private static void a(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.Np = jSONObject.optString("device_model");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.Np)) {
            aVar.Np = "";
        }
        aVar.Nq = jSONObject.optString(com.umeng.analytics.pro.bv.f48879F);
        if (obj.toString().equals(aVar.Nq)) {
            aVar.Nq = "";
        }
        aVar.Nr = jSONObject.optString(com.umeng.analytics.pro.bv.f48924y);
        if (obj.toString().equals(aVar.Nr)) {
            aVar.Nr = "";
        }
        aVar.Ns = jSONObject.optString("rom_name");
        if (obj.toString().equals(aVar.Ns)) {
            aVar.Ns = "";
        }
        aVar.Nt = jSONObject.optString("device_id");
        if (obj.toString().equals(aVar.Nt)) {
            aVar.Nt = "";
        }
        aVar.status = jSONObject.optInt("status");
        aVar.Nu = jSONObject.optString("install_check_record");
        if (obj.toString().equals(aVar.Nu)) {
            aVar.Nu = "";
        }
        aVar.Nv = jSONObject.optString("local_installer_pkgs");
        if (obj.toString().equals(aVar.Nv)) {
            aVar.Nv = "";
        }
    }

    private static JSONObject b(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.Np;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "device_model", aVar.Np);
        }
        String str2 = aVar.Nq;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bv.f48879F, aVar.Nq);
        }
        String str3 = aVar.Nr;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bv.f48924y, aVar.Nr);
        }
        String str4 = aVar.Ns;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rom_name", aVar.Ns);
        }
        String str5 = aVar.Nt;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "device_id", aVar.Nt);
        }
        int i2 = aVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        String str6 = aVar.Nu;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "install_check_record", aVar.Nu);
        }
        String str7 = aVar.Nv;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "local_installer_pkgs", aVar.Nv);
        }
        return jSONObject;
    }
}
