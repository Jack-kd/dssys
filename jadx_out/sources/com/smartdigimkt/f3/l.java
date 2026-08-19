package com.smartdigimkt.f3;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.f.g;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class l {
    public static com.smartdigimkt.m3.b a(String str, JSONObject jSONObject, String str2, int i2, boolean z2) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject != null) {
                jSONObject = jSONObjectOptJSONObject;
            } else if (!jSONObject.has("seatbid")) {
                return null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONArray("seatbid").optJSONObject(0);
            com.smartdigimkt.m3.b bVar = new com.smartdigimkt.m3.b();
            if (TextUtils.isEmpty(str2)) {
                bVar.f41811c0 = jSONObject.toString();
            } else {
                bVar.f41811c0 = str2;
            }
            bVar.f41806a = jSONObjectOptJSONObject2.optString(com.anythink.core.common.k.ai);
            bVar.f41808b = jSONObjectOptJSONObject2.optString("c_id");
            bVar.f41822m = jSONObjectOptJSONObject2.optString("pkg");
            bVar.f41810c = jSONObjectOptJSONObject2.optString(g.a.f3271h);
            bVar.f41812d = jSONObjectOptJSONObject2.optString("desc");
            jSONObjectOptJSONObject2.optInt("rating");
            bVar.f41814e = jSONObjectOptJSONObject2.optString("icon_u");
            bVar.f41815f = jSONObjectOptJSONObject2.optString("full_u");
            bVar.f41823n = jSONObjectOptJSONObject2.optInt("unit_type");
            bVar.f41816g = jSONObjectOptJSONObject2.optString("tp_logo_u");
            bVar.f41817h = jSONObjectOptJSONObject2.optString("cta");
            bVar.f41818i = jSONObjectOptJSONObject2.optString("video_u");
            bVar.f42044e0 = jSONObjectOptJSONObject2.optInt("video_l");
            jSONObjectOptJSONObject2.optString("video_r");
            bVar.f42045f0 = jSONObjectOptJSONObject2.optString("ec_u");
            bVar.f41819j = jSONObjectOptJSONObject2.optString("store_u");
            bVar.f41824o = jSONObjectOptJSONObject2.optInt("link_type");
            bVar.f41821l = jSONObjectOptJSONObject2.optString("click_u");
            bVar.f41820k = jSONObjectOptJSONObject2.optString("deeplink");
            bVar.f42046g0 = jSONObjectOptJSONObject2.optInt("crt_type", 1);
            bVar.f42047h0 = jSONObjectOptJSONObject2.optString("img_list");
            jSONObjectOptJSONObject2.optString("banner_xhtml");
            bVar.f41825p = jSONObjectOptJSONObject2.optInt("offer_firm_id");
            bVar.f41826q = jSONObjectOptJSONObject2.optString("jump_url");
            try {
                String strOptString = jSONObjectOptJSONObject2.optString("sdk_resp");
                if (!TextUtils.isEmpty(strOptString)) {
                    bVar.f41777v0 = new JSONObject(strOptString).optString("data");
                }
            } catch (Throwable unused) {
            }
            bVar.f42049j0 = jSONObjectOptJSONObject2.optString("app_name");
            bVar.f41827r = jSONObjectOptJSONObject2.optString("publisher");
            bVar.f41828s = jSONObjectOptJSONObject2.optString("app_version");
            bVar.f41829t = jSONObjectOptJSONObject2.optString("privacy");
            bVar.f41830u = jSONObjectOptJSONObject2.optString("permission");
            bVar.f41831v = jSONObjectOptJSONObject2.optString(g.a.f3262N);
            jSONObjectOptJSONObject2.optString("mtr_ver");
            bVar.f42050k0 = jSONObjectOptJSONObject2.optInt("o_im_cap_sw", 2);
            bVar.f42051l0 = jSONObjectOptJSONObject2.optInt("o_cl_cap_sw", 2);
            bVar.f42052m0 = jSONObjectOptJSONObject2.optInt("c_im_cap_sw", 2);
            bVar.f42053n0 = jSONObjectOptJSONObject2.optInt("c_cl_cap_sw", 2);
            if (i2 == 67) {
                bVar.f41778w0 = 2;
            } else {
                bVar.f41778w0 = 1;
            }
            bVar.f41832w = com.smartdigimkt.m3.l.a(jSONObjectOptJSONObject2.optJSONObject("ctrl"));
            bVar.f42048i0 = com.smartdigimkt.m3.m.a(jSONObjectOptJSONObject2.optJSONObject("tk"));
            try {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("nw_info");
                if (jSONObjectOptJSONObject3 != null) {
                    jSONObjectOptJSONObject3.optString("app_id");
                    jSONObjectOptJSONObject3.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
                    jSONObjectOptJSONObject3.optString("unit_id");
                }
            } catch (Throwable unused2) {
            }
            bVar.f42054o0 = jSONObjectOptJSONObject2.optString("dsp_id", "");
            bVar.f42055p0 = jSONObjectOptJSONObject2.optString("dsp_oid", "");
            bVar.f42056q0 = jSONObjectOptJSONObject2.optInt("fca", -1);
            bVar.f42057r0 = jSONObjectOptJSONObject2.optInt(com.smartdigimkt.c5.o.f39798d, -1);
            bVar.f41834y = jSONObjectOptJSONObject2.optString("wv_ctrl");
            bVar.f41835z = jSONObjectOptJSONObject2.optInt("adp_type");
            bVar.f41780A = jSONObjectOptJSONObject2.optString("offer_html");
            bVar.f41781B = jSONObjectOptJSONObject2.optString("offer_url");
            bVar.f41782C = jSONObjectOptJSONObject2.optString("wx_username");
            bVar.f41783D = jSONObjectOptJSONObject2.optString("wx_path");
            bVar.f41784E = jSONObjectOptJSONObject2.optInt("o_w");
            bVar.f41785F = jSONObjectOptJSONObject2.optInt("o_h");
            if (z2) {
                jSONObjectOptJSONObject2.put(com.anythink.core.common.h.r.f4359c, 1);
            }
            bVar.f41779x0 = jSONObjectOptJSONObject2.optInt(com.anythink.core.common.h.r.f4359c);
            bVar.f41795P = jSONObjectOptJSONObject2.optString("mraid_u");
            if (i2 == 66 && !TextUtils.isEmpty(bVar.f41820k)) {
                String strOptString2 = jSONObjectOptJSONObject2.optString("dp_package", "");
                bVar.f41794O = strOptString2;
                if (TextUtils.isEmpty(strOptString2)) {
                    bVar.f41793N = 3;
                } else {
                    bVar.f41793N = com.smartdigimkt.c5.k.c(SDKContext.getInstance().d(), strOptString2) ? 1 : 2;
                }
            }
            bVar.f41796Q = jSONObjectOptJSONObject2.optString("adm");
            jSONObjectOptJSONObject2.optInt("cr_m", 1);
            int iOptInt = jSONObjectOptJSONObject2.optInt("img_w", 0);
            synchronized (bVar) {
                bVar.f41788I = iOptInt;
            }
            bVar.a(jSONObjectOptJSONObject2.optInt("img_h", 0));
            bVar.f41790K = jSONObjectOptJSONObject2.optInt("video_w", 0);
            bVar.f41791L = jSONObjectOptJSONObject2.optInt("video_h", 0);
            bVar.f41800U = jSONObjectOptJSONObject2.optString("a_info", "");
            bVar.f41801V = jSONObjectOptJSONObject2.optString("a_privacy", "");
            bVar.f41799T = jSONObjectOptJSONObject2.optString("a_info_url", "");
            bVar.f41805Z = jSONObjectOptJSONObject2.optString("fast_u", "");
            bVar.f41804Y = jSONObjectOptJSONObject2.optString("market_u", "");
            bVar.f41807a0 = jSONObjectOptJSONObject2.optString("d_c_u", "");
            bVar.f41809b0 = jSONObjectOptJSONObject2.optString("om_ids", "");
            bVar.f41813d0 = jSONObjectOptJSONObject2.optString("p_pkg", "");
            return bVar;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
