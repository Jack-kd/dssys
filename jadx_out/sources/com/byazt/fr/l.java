package com.byazt.fr;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.bki.e;
import com.byazt.jt.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1204, 34})
/* loaded from: classes2.dex */
public class l {
    public static boolean hp(String str) {
        String strJx = jx();
        return (TextUtils.isEmpty(strJx) || TextUtils.isEmpty(str) || strJx.compareTo(str) < 0) ? false : true;
    }

    public static String jx(Map<String, Object> map) {
        if (map == null || map.get("request_id") == null) {
            return null;
        }
        return (String) map.get("request_id");
    }

    public static long l(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get("ad_id") != null) {
                return ((Long) map.get("ad_id")).longValue();
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static JSONArray jx(String str) {
        JSONArray jSONArray;
        try {
            if (TextUtils.isEmpty(str)) {
                jSONArray = new JSONArray();
            } else {
                jSONArray = new JSONArray(str);
            }
        } catch (Exception unused) {
            jSONArray = null;
        }
        return jSONArray == null ? new JSONArray() : jSONArray;
    }

    public static void l(String str) {
        e.l(str);
    }

    public static String hp(String str, String str2, String str3) throws JSONException {
        JSONArray jSONArray;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONArray = new JSONArray(str);
                } catch (JSONException unused) {
                    jSONArray = new JSONArray();
                }
            } else {
                jSONArray = new JSONArray();
            }
            int i2 = 0;
            while (true) {
                if (i2 < jSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && str2.equals(jSONObjectOptJSONObject.getString("name"))) {
                        jSONObjectOptJSONObject.put(f.a.f3244d, str3);
                        break;
                    }
                    i2++;
                } else {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", str2);
                    jSONObject.put(f.a.f3244d, str3);
                    jSONArray.put(jSONObject);
                    break;
                }
            }
            return jSONArray.toString();
        } catch (Exception unused2) {
            return str;
        }
    }

    private static Map<String, String> l() {
        return e.eb();
    }

    private static JSONArray l(com.byazt.aqw.hp hpVar) {
        if (hpVar == null || TextUtils.isEmpty(hpVar.ns())) {
            return null;
        }
        try {
            return new JSONArray(hpVar.ns());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String jx() {
        try {
            return com.byazt.owd.l.jx();
        } catch (Throwable unused) {
            return "0.0";
        }
    }

    public static double hp(Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Float) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        try {
            if (obj instanceof String) {
                return Double.valueOf((String) obj).doubleValue();
            }
            return 0.0d;
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static long hp(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get("creative_id") != null) {
                return ((Long) map.get("creative_id")).longValue();
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String hp() {
        return e.a();
    }

    public static JSONArray hp(com.byazt.aqw.hp hpVar) throws JSONException {
        JSONArray jSONArrayJx = jx(hp());
        try {
            Map<String, String> mapL = l();
            if (mapL != null && mapL.size() > 0) {
                for (String str : mapL.keySet()) {
                    String str2 = mapL.get(str);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.putOpt("name", str);
                        jSONObject.putOpt(f.a.f3244d, str2);
                        jSONArrayJx.put(jSONObject);
                    }
                }
            }
            JSONArray jSONArrayL = l(hpVar);
            if (jSONArrayL != null) {
                for (int i2 = 0; i2 < jSONArrayL.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayL.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && !TextUtils.equals("personal_ads_type", jSONObjectOptJSONObject.optString("name"))) {
                        jSONArrayJx.put(jSONObjectOptJSONObject);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return jSONArrayJx;
    }

    private static void hp(l.hp hpVar, String str, String str2, boolean z2, com.byazt.aqw.hp hpVar2) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArrayHp = hp(hpVar2);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("name", "mediation_sdk_version");
            jSONObject2.putOpt(f.a.f3244d, com.byazt.rt.l.l());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt("name", "mediation_req_type");
            jSONObject3.putOpt(f.a.f3244d, "1");
            if (TextUtils.isEmpty(str)) {
                jSONObject = null;
            } else {
                jSONObject = new JSONObject();
                jSONObject.putOpt("name", "waterfall_abtest");
                jSONObject.putOpt(f.a.f3244d, str);
            }
            jSONArrayHp.put(jSONObject3);
            jSONArrayHp.put(jSONObject2);
            if (jSONObject != null) {
                jSONArrayHp.put(jSONObject);
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.putOpt("name", "m_req_id");
                jSONObject4.putOpt(f.a.f3244d, str2);
                jSONArrayHp.put(jSONObject4);
            }
        } catch (Throwable unused) {
        }
        if (!z2) {
            hp(hpVar);
        }
        com.byazt.owd.l.hp(e.w());
        if (hpVar != null) {
            hpVar.q(jSONArrayHp.toString());
        }
    }

    public static void hp(l.hp hpVar) {
        if (hpVar != null && e.s()) {
            try {
                String strJx = e.jx("tt_pangle_preview_ad_id");
                String strJx2 = e.jx("tt_pangle_preview_creative_id");
                String strJx3 = e.jx("tt_pangle_preview_ext");
                com.byazt.aw.l.hp(MediationConstant.TAG, "pangle preview adId:" + strJx + " creativeId:" + strJx2 + " ext" + strJx3);
                if (!TextUtils.isEmpty(strJx) && !TextUtils.isEmpty(strJx2)) {
                    hpVar.hp(strJx).l(strJx2);
                }
                if (TextUtils.isEmpty(strJx3)) {
                    return;
                }
                hpVar.jx(strJx3);
            } catch (Throwable unused) {
            }
        }
    }

    public static l.hp hp(com.byazt.iqm.l lVar, com.byazt.xl.l lVar2, boolean z2) {
        return hp(lVar, lVar2.jl(), lVar2.u(), lVar2.xs(), lVar2.di(), z2);
    }

    public static l.hp hp(com.byazt.iqm.l lVar, String str, String str2, String str3, String str4, boolean z2) {
        com.byazt.aqw.hp hpVarVv = null;
        l.hp hpVarJx = new l.hp(lVar == null ? null : lVar.jl()).j(str).jx(1);
        if (lVar != null) {
            hpVarJx.a(lVar.l()).eb(lVar.sz()).l(lVar.di());
            hpVarVv = lVar.vv();
            if (hpVarVv != null) {
                hpVarJx.a(hpVarVv.k()).hp(hpVarVv.w()).j(hpVarVv.o()).hp(hpVarVv.hp()).l(hpVarVv.l()).j(hpVarVv.v()).hp(hpVarVv.cx()).w(hpVarVv.zy()).jx(hpVarVv.jx());
                String strEc = hpVarVv.ec();
                if (!TextUtils.isEmpty(strEc)) {
                    hpVarJx.eb(strEc);
                }
                if (hpVarVv.vv() != 0) {
                    hpVarJx.a(hpVarVv.vv());
                }
            }
            int[] iArrHp = hp(lVar, hpVarVv);
            if (iArrHp != null && iArrHp.length > 0) {
                hpVarJx.hp(iArrHp);
            }
            if (5 == lVar.ec() || 9 == lVar.ec()) {
                hpVarJx.jx(lVar.b());
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            hpVarJx.s(str4);
        }
        hp(hpVarJx, str2, str3, z2, hpVarVv);
        return hpVarJx;
    }

    private static int[] hp(com.byazt.iqm.l lVar, com.byazt.aqw.hp hpVar) {
        if (hpVar != null && hpVar.xs() != null && hpVar.xs().length > 0) {
            return hpVar.xs();
        }
        try {
            Map<String, Object> mapR = lVar.r();
            if (mapR != null) {
                return (int[]) mapR.get(MediationConstant.PANGLE_VID);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean hp(com.byazt.iqm.l lVar) {
        if (lVar != null && lVar.r() != null) {
            Object obj = lVar.r().get(MediationConstant.BANNER_AUTO_HEIGHT);
            try {
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
