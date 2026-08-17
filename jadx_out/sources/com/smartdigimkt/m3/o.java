package com.smartdigimkt.m3;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class o {
    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str != null && str.trim().isEmpty();
    }

    public static int b(d dVar) {
        if (dVar != null && h.a(dVar)) {
            String strA = dVar.a();
            if (TextUtils.isEmpty(strA)) {
                return 0;
            }
            try {
                int iA = a("b_a_s", new JSONObject(strA));
                if (iA != Integer.MIN_VALUE && iA >= 1) {
                    return Math.min(600, iA);
                }
                return 0;
            } catch (JSONException e2) {
                e2.getMessage();
            }
        }
        return 0;
    }

    public static int c(d dVar) {
        if (dVar != null && h.a(dVar)) {
            String strA = dVar.a();
            if (a(strA)) {
                return (h.a(3, dVar) || h.a(4, dVar)) ? 5 : 0;
            }
            try {
                int iA = a("t_t_s", new JSONObject(strA.trim()));
                if (iA != Integer.MIN_VALUE && iA >= 1) {
                    return Math.min(15, iA);
                }
                return 0;
            } catch (JSONException e2) {
                e2.getMessage();
            }
        }
        return 0;
    }

    public static n a(d dVar) {
        n nVar = new n();
        if (dVar == null) {
            return nVar;
        }
        String strA = dVar.a();
        if (!a(strA)) {
            nVar.f42134b = h.a(3, dVar) ? 1 : 2;
            try {
                JSONObject jSONObject = new JSONObject(strA.trim());
                int iOptInt = jSONObject.optInt("t_c_s", 3);
                nVar.f42133a = iOptInt;
                if (iOptInt < 0) {
                    nVar.f42133a = 3;
                }
                int iA = a("a_e_c", jSONObject);
                if (iA != Integer.MIN_VALUE) {
                    nVar.f42134b = iA;
                }
                nVar.f42135c = jSONObject.optInt("s_p_b", 1);
                nVar.f42136d = jSONObject.optString("s_m_c", "");
                nVar.f42137e = jSONObject.optString("s_r_c", "");
                nVar.f42138f = jSONObject.optString("s_a_c", "");
                return nVar;
            } catch (JSONException e2) {
                e2.getMessage();
                return nVar;
            }
        }
        if (p.f42139a) {
            if (h.a(3, dVar)) {
                n nVar2 = new n();
                nVar2.f42133a = 3;
                nVar2.f42134b = 2;
                nVar2.f42135c = 1;
                nVar2.f42136d = "您将关闭整个激励视频广告，与双倍奖励彻底无缘";
                nVar2.f42137e = "去意已决";
                nVar2.f42138f = "我要奖励";
                return nVar2;
            }
            if (h.a(4, dVar)) {
                n nVar3 = new n();
                nVar3.f42133a = 3;
                nVar3.f42134b = 1;
                nVar3.f42135c = 1;
                nVar3.f42136d = "您将错失获得双倍奖励的机会";
                nVar3.f42137e = "去意已决";
                nVar3.f42138f = "我要奖励";
                return nVar3;
            }
        }
        nVar.f42134b = h.a(3, dVar) ? 1 : 2;
        return nVar;
    }

    public static int a(String str, JSONObject jSONObject) {
        if (!jSONObject.has(str)) {
            return Integer.MIN_VALUE;
        }
        try {
            Object objOpt = jSONObject.opt(str);
            if (objOpt != null && objOpt != JSONObject.NULL) {
                if (objOpt instanceof Number) {
                    return ((Number) objOpt).intValue();
                }
                if (objOpt instanceof String) {
                    String strTrim = ((String) objOpt).trim();
                    if (strTrim.isEmpty()) {
                        return Integer.MIN_VALUE;
                    }
                    return Integer.parseInt(strTrim);
                }
            }
            return Integer.MIN_VALUE;
        } catch (Exception e2) {
            e2.getMessage();
            return Integer.MIN_VALUE;
        }
    }
}
