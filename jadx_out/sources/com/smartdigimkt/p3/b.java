package com.smartdigimkt.p3;

import android.text.TextUtils;
import com.anythink.core.common.f.s;
import com.anythink.core.common.k;
import com.byazt.rx.BaseConstants;
import com.smartdigimkt.c5.o;
import com.smartdigimkt.m3.e;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b extends e {

    /* renamed from: Z1, reason: collision with root package name */
    public int f42609Z1;

    public static b t(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        b bVar = new b();
        try {
            JSONObject jSONObject = new JSONObject(str);
            bVar.f41915a = jSONObject.optInt("f_t");
            bVar.f41918b = jSONObject.optInt("v_c");
            bVar.f41921c = jSONObject.optInt("s_b_t");
            bVar.f41927e = jSONObject.optInt("e_c_a");
            bVar.f41930f = jSONObject.optInt("v_m");
            bVar.f41933g = jSONObject.optInt("s_c_t");
            bVar.f41960p = jSONObject.optInt("m_t");
            bVar.f41963q = jSONObject.optLong("o_c_t", 86400000L);
            bVar.f41936h = jSONObject.optInt("ak_cfm");
            bVar.f41948l = jSONObject.optLong("ctdown_time");
            bVar.f41945k = jSONObject.optInt("sk_able");
            bVar.f41951m = jSONObject.optInt("orient");
            bVar.f41954n = jSONObject.optString("size");
            bVar.f41957o = jSONObject.optInt("cl_btn");
            bVar.f41972t = jSONObject.optInt("ec_r");
            bVar.f41975u = jSONObject.optInt("ec_s_t");
            bVar.f41978v = jSONObject.optInt("ec_l_t");
            bVar.f41981w = jSONObject.optString(k.aG);
            bVar.f42609Z1 = jSONObject.optInt("spl_type");
            bVar.f41984x = jSONObject.optLong("or_t");
            bVar.f41987y = jSONObject.optInt("rv_fail_reward");
            bVar.f41990z = jSONObject.optInt("cl_sz");
            bVar.f41838A = jSONObject.optInt("si_fit");
            if (jSONObject.has("at_cl_sw")) {
                jSONObject.optInt("at_cl_sw");
            }
            if (jSONObject.has("at_ct_ti")) {
                jSONObject.optInt("at_ct_ti");
            }
            if (jSONObject.has("int_cl_sw")) {
                bVar.f41841B = jSONObject.optInt("int_cl_sw");
            }
            if (jSONObject.has("int_cl_ti")) {
                bVar.f41844C = jSONObject.optInt("int_cl_ti");
            }
            if (jSONObject.has("sh_ec")) {
                bVar.f41847D = jSONObject.optInt("sh_ec");
            }
            if (jSONObject.has("ipua")) {
                bVar.f41850E = jSONObject.optInt("ipua");
            }
            if (jSONObject.has("clua")) {
                bVar.f41853F = jSONObject.optInt("clua");
            }
            if (jSONObject.has("ap_arpt")) {
                bVar.f41856G = jSONObject.optInt("ap_arpt");
            }
            if (jSONObject.has("ap_pasbl")) {
                bVar.f41859H = jSONObject.optInt("ap_pasbl");
            }
            if (jSONObject.has("shk_sw")) {
                bVar.f41868K = jSONObject.optInt("shk_sw");
            }
            if (jSONObject.has("shk_strength_and")) {
                bVar.f41871L = jSONObject.optInt("shk_strength_and");
            }
            if (jSONObject.has("shk_time")) {
                bVar.f41874M = jSONObject.optLong("shk_time");
            }
            if (jSONObject.has("click_cache_time")) {
                bVar.f41880O = jSONObject.optInt("click_cache_time");
            } else {
                bVar.f41880O = BaseConstants.Time.HOUR;
            }
            if (jSONObject.has("click_nt_sw")) {
                bVar.f41883P = jSONObject.optInt("click_nt_sw");
            } else {
                bVar.f41883P = 1;
            }
            if (jSONObject.has("ft_cl_sz")) {
                bVar.f41886Q = jSONObject.optInt("ft_cl_sz");
            } else {
                bVar.f41886Q = 1;
            }
            if (jSONObject.has("sh_cl_itp")) {
                bVar.f41889R = jSONObject.optInt("sh_cl_itp");
            } else {
                bVar.f41889R = 2;
            }
            bVar.f41892S = jSONObject.optInt("shm_t", -1);
            if (jSONObject.has(s.a.f3402d)) {
                bVar.f41895T = jSONObject.optInt(s.a.f3402d);
            } else {
                bVar.f41895T = 100;
            }
            if (jSONObject.has("rsdl_rate")) {
                bVar.f41898U = jSONObject.optInt("rsdl_rate");
            } else {
                bVar.f41898U = 0;
            }
            if (jSONObject.has("video_ctn_type")) {
                bVar.f41901V = jSONObject.optInt("video_ctn_type");
            } else {
                bVar.f41901V = 2;
            }
            bVar.f41925d0 = jSONObject.optInt("at_cl_img", 2) == 1;
            bVar.f41928e0 = jSONObject.optInt("at_cl_video", 2) == 1;
            bVar.f41931f0 = jSONObject.optInt("at_cl_ec", 2) == 1;
            bVar.f41934g0 = jSONObject.optLong("at_cl_pt", 5000L);
            bVar.f41937h0 = jSONObject.optLong("at_cl_pct", 5000L);
            bVar.f41940i0 = jSONObject.optLong("at_cl_ec_pt", 5000L);
            bVar.f41943j0 = jSONObject.optLong("at_cl_ec_pct", 5000L);
            bVar.f41851E0 = jSONObject.optLong("sub_splash_time", 0L);
            bVar.f41854F0 = jSONObject.optLong("s_b_t_top", 2000L);
            bVar.f41857G0 = jSONObject.optLong("s_b_d_top", 5000L);
            bVar.f41991z0 = jSONObject.optInt(o.f39795a, 1);
            bVar.f41839A0 = jSONObject.optInt(o.f39796b, 2);
            bVar.f41842B0 = jSONObject.optInt(o.f39797c, 1);
            bVar.f41848D0 = jSONObject.optInt("click_close", 2);
            bVar.f41845C0 = jSONObject.optInt("cta_type", 1);
            bVar.f41860H0 = jSONObject.optInt("cd_play_sw", 2);
            bVar.f41882O1 = 2;
            int i2 = bVar.f41871L;
            if (i2 <= 0) {
                i2 = 10;
            }
            bVar.f41891R1 = i2;
            bVar.f41885P1 = 800;
            ArrayList arrayList = new ArrayList();
            arrayList.add(Double.valueOf(15.0d));
            arrayList.add(Double.valueOf(10.0d));
            bVar.f41888Q1 = arrayList;
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return bVar;
    }
}
