package com.anythink.core.common.a;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f.g;
import com.anythink.core.common.h.bm;
import com.anythink.core.common.h.bn;
import com.anythink.core.common.h.r;
import com.anythink.core.common.h.y;
import com.anythink.core.common.v.p;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d {
    private static r a(String str, JSONObject jSONObject, int i2) {
        return b(str, jSONObject, i2);
    }

    private static r b(String str, JSONObject jSONObject, int i2) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(i.e.f2620e);
            if (jSONObjectOptJSONObject != null) {
                jSONObject = jSONObjectOptJSONObject;
            } else if (!jSONObject.has("seatbid")) {
                return null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONArray("seatbid").optJSONObject(0);
            r rVar = new r();
            rVar.I(jSONObjectOptJSONObject2.toString());
            rVar.Q(jSONObject.toString());
            rVar.b(str);
            rVar.j(jSONObjectOptJSONObject2.optString(com.anythink.core.common.k.ai));
            rVar.k(jSONObjectOptJSONObject2.optString("c_id"));
            rVar.w(jSONObjectOptJSONObject2.optString("pkg"));
            rVar.l(jSONObjectOptJSONObject2.optString(g.a.f3271h));
            rVar.m(jSONObjectOptJSONObject2.optString("desc"));
            rVar.i(jSONObjectOptJSONObject2.optInt("rating"));
            rVar.n(jSONObjectOptJSONObject2.optString("icon_u"));
            rVar.p(jSONObjectOptJSONObject2.optString("full_u"));
            rVar.g(jSONObjectOptJSONObject2.optInt("unit_type"));
            rVar.q(jSONObjectOptJSONObject2.optString("tp_logo_u"));
            rVar.r(jSONObjectOptJSONObject2.optString("cta"));
            rVar.s(jSONObjectOptJSONObject2.optString("video_u"));
            rVar.a(jSONObjectOptJSONObject2.optInt("video_l"));
            rVar.X(jSONObjectOptJSONObject2.optString("video_r"));
            rVar.Y(jSONObjectOptJSONObject2.optString("ec_u"));
            rVar.t(jSONObjectOptJSONObject2.optString("store_u"));
            rVar.h(jSONObjectOptJSONObject2.optInt("link_type"));
            rVar.v(jSONObjectOptJSONObject2.optString("click_u"));
            rVar.u(jSONObjectOptJSONObject2.optString("deeplink"));
            rVar.s(jSONObjectOptJSONObject2.optInt("crt_type", 1));
            rVar.Z(jSONObjectOptJSONObject2.optString("img_list"));
            rVar.aa(jSONObjectOptJSONObject2.optString("banner_xhtml"));
            rVar.f(jSONObjectOptJSONObject2.optInt("offer_firm_id"));
            rVar.i(jSONObjectOptJSONObject2.optString("jump_url"));
            try {
                String strOptString = jSONObjectOptJSONObject2.optString("sdk_resp");
                if (!TextUtils.isEmpty(strOptString)) {
                    rVar.a(new JSONObject(strOptString).optString("data"));
                }
            } catch (Throwable unused) {
            }
            rVar.ab(jSONObjectOptJSONObject2.optString("app_name"));
            rVar.x(jSONObjectOptJSONObject2.optString("publisher"));
            rVar.y(jSONObjectOptJSONObject2.optString("app_version"));
            rVar.z(jSONObjectOptJSONObject2.optString("privacy"));
            rVar.A(jSONObjectOptJSONObject2.optString("permission"));
            rVar.c(jSONObjectOptJSONObject2.optString(g.a.f3262N));
            rVar.h(jSONObjectOptJSONObject2.optString("mtr_ver"));
            int i3 = 2;
            rVar.t(jSONObjectOptJSONObject2.optInt("o_im_cap_sw", 2));
            rVar.u(jSONObjectOptJSONObject2.optInt("o_cl_cap_sw", 2));
            rVar.v(jSONObjectOptJSONObject2.optInt("c_im_cap_sw", 2));
            rVar.w(jSONObjectOptJSONObject2.optInt("c_cl_cap_sw", 2));
            if (i2 == 67) {
                rVar.a(2);
            } else {
                rVar.a(1);
            }
            rVar.a((y) bm.u(jSONObjectOptJSONObject2.optString("ctrl")));
            rVar.a(bn.a(jSONObjectOptJSONObject2.optString("tk")));
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject2.optString("nw_info"));
                rVar.S(jSONObject2.optString("app_id"));
                rVar.T(jSONObject2.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY));
                rVar.U(jSONObject2.optString("unit_id"));
            } catch (Throwable unused2) {
            }
            rVar.V(jSONObjectOptJSONObject2.optString("dsp_id", ""));
            rVar.W(jSONObjectOptJSONObject2.optString("dsp_oid", ""));
            rVar.q(jSONObjectOptJSONObject2.optInt("fca", -1));
            rVar.r(jSONObjectOptJSONObject2.optInt("install_sw", -1));
            rVar.F(jSONObjectOptJSONObject2.optString("wv_ctrl"));
            rVar.e(jSONObjectOptJSONObject2.optInt("adp_type"));
            rVar.f(jSONObjectOptJSONObject2.optString("offer_html"));
            rVar.g(jSONObjectOptJSONObject2.optString("offer_url"));
            rVar.d(jSONObjectOptJSONObject2.optString("wx_username"));
            rVar.e(jSONObjectOptJSONObject2.optString("wx_path"));
            rVar.c(jSONObjectOptJSONObject2.optInt("o_w"));
            rVar.d(jSONObjectOptJSONObject2.optInt("o_h"));
            rVar.b(jSONObjectOptJSONObject2.optInt(r.f4359c));
            rVar.G(jSONObjectOptJSONObject2.optString("mraid_u"));
            if (i2 == 66 && !TextUtils.isEmpty(rVar.r())) {
                String strOptString2 = jSONObjectOptJSONObject2.optString("dp_package", "");
                rVar.B(strOptString2);
                if (TextUtils.isEmpty(strOptString2)) {
                    i3 = 3;
                } else if (p.b(s.b().g(), strOptString2)) {
                    i3 = 1;
                }
                rVar.j(i3);
            }
            rVar.H(jSONObjectOptJSONObject2.optString("adm"));
            rVar.o(jSONObjectOptJSONObject2.optInt("cr_m", 1));
            rVar.p(jSONObjectOptJSONObject2.optInt("scr_m", 1));
            rVar.m(jSONObjectOptJSONObject2.optInt("img_w", 0));
            rVar.n(jSONObjectOptJSONObject2.optInt("img_h", 0));
            rVar.k(jSONObjectOptJSONObject2.optInt("video_w", 0));
            rVar.l(jSONObjectOptJSONObject2.optInt("video_h", 0));
            rVar.K(jSONObjectOptJSONObject2.optString("a_info", ""));
            rVar.L(jSONObjectOptJSONObject2.optString("a_privacy", ""));
            rVar.J(jSONObjectOptJSONObject2.optString("a_info_url", ""));
            rVar.N(jSONObjectOptJSONObject2.optString("fast_u", ""));
            rVar.M(jSONObjectOptJSONObject2.optString("market_u", ""));
            rVar.O(jSONObjectOptJSONObject2.optString("d_c_u", ""));
            rVar.P(jSONObjectOptJSONObject2.optString("om_ids", ""));
            rVar.R(jSONObjectOptJSONObject2.optString("p_pkg", ""));
            return rVar;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
