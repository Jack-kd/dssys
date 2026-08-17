package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.adlog.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cn implements com.kwad.sdk.core.d<a.C0601a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0601a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0601a) bVar, jSONObject);
    }

    private static void a(a.C0601a c0601a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0601a.aLf = jSONObject.optInt("ad_retry_type");
        c0601a.templateId = jSONObject.optString("template_id");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0601a.templateId)) {
            c0601a.templateId = "";
        }
        c0601a.aLg = jSONObject.optString("template_sub_id");
        if (obj.toString().equals(c0601a.aLg)) {
            c0601a.aLg = "";
        }
        c0601a.aLh = jSONObject.optString("default_type");
        if (obj.toString().equals(c0601a.aLh)) {
            c0601a.aLh = "";
        }
        c0601a.aLi = jSONObject.optString("tk_template_id");
        if (obj.toString().equals(c0601a.aLi)) {
            c0601a.aLi = "";
        }
        c0601a.aLj = jSONObject.optString("tk_template_version");
        if (obj.toString().equals(c0601a.aLj)) {
            c0601a.aLj = "";
        }
        c0601a.tkPublishType = jSONObject.optInt("tk_publish_type", new Integer("0").intValue());
        c0601a.aLl = jSONObject.optString("template_show_type");
        if (obj.toString().equals(c0601a.aLl)) {
            c0601a.aLl = "";
        }
        c0601a.aLm = jSONObject.optInt("network_download_status", new Integer("3").intValue());
        c0601a.aLn = jSONObject.optInt("award_task_name");
        c0601a.aLo = jSONObject.optInt("jumps_liveroom_type");
        c0601a.aLp = jSONObject.optInt("universe_feature_freg");
        c0601a.aLq = jSONObject.optInt("replace_url_succ");
        c0601a.aLr = jSONObject.optBoolean("is_dp_opt");
        c0601a.aLs = jSONObject.optString("component_module");
        if (obj.toString().equals(c0601a.aLs)) {
            c0601a.aLs = "";
        }
        c0601a.aLu = jSONObject.optInt("is_carousel");
        c0601a.aLv = jSONObject.optInt("is_special_preload");
        c0601a.aLw = jSONObject.optInt("card_type");
        c0601a.aLx = jSONObject.optInt("is_closure");
        c0601a.aLy = jSONObject.optInt("is_click_invoked");
        c0601a.aLz = jSONObject.optString("authorization_status");
        if (obj.toString().equals(c0601a.aLz)) {
            c0601a.aLz = "";
        }
        c0601a.aLA = jSONObject.optString("login_source");
        if (obj.toString().equals(c0601a.aLA)) {
            c0601a.aLA = "";
        }
        c0601a.aLB = jSONObject.optInt("is_login");
        c0601a.aLC = jSONObject.optInt("interception_time");
        c0601a.aLD = jSONObject.optInt("interception_reason");
        c0601a.aLE = jSONObject.optInt("coupon_receive_status");
        c0601a.aLG = jSONObject.optInt("deeplink_evocation_source");
    }

    private static JSONObject b(a.C0601a c0601a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = c0601a.aLf;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_retry_type", i2);
        }
        String str = c0601a.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", c0601a.templateId);
        }
        String str2 = c0601a.aLg;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_sub_id", c0601a.aLg);
        }
        String str3 = c0601a.aLh;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "default_type", c0601a.aLh);
        }
        String str4 = c0601a.aLi;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_template_id", c0601a.aLi);
        }
        String str5 = c0601a.aLj;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_template_version", c0601a.aLj);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_publish_type", c0601a.tkPublishType);
        String str6 = c0601a.aLl;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_show_type", c0601a.aLl);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "network_download_status", c0601a.aLm);
        int i3 = c0601a.aLn;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "award_task_name", i3);
        }
        int i4 = c0601a.aLo;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jumps_liveroom_type", i4);
        }
        int i5 = c0601a.aLp;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "universe_feature_freg", i5);
        }
        int i6 = c0601a.aLq;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "replace_url_succ", i6);
        }
        boolean z2 = c0601a.aLr;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_dp_opt", z2);
        }
        String str7 = c0601a.aLs;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "component_module", c0601a.aLs);
        }
        int i7 = c0601a.aLu;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_carousel", i7);
        }
        int i8 = c0601a.aLv;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_special_preload", i8);
        }
        int i9 = c0601a.aLw;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "card_type", i9);
        }
        int i10 = c0601a.aLx;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_closure", i10);
        }
        int i11 = c0601a.aLy;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_click_invoked", i11);
        }
        String str8 = c0601a.aLz;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "authorization_status", c0601a.aLz);
        }
        String str9 = c0601a.aLA;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "login_source", c0601a.aLA);
        }
        int i12 = c0601a.aLB;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_login", i12);
        }
        int i13 = c0601a.aLC;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interception_time", i13);
        }
        int i14 = c0601a.aLD;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interception_reason", i14);
        }
        int i15 = c0601a.aLE;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "coupon_receive_status", i15);
        }
        int i16 = c0601a.aLG;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplink_evocation_source", i16);
        }
        return jSONObject;
    }
}
