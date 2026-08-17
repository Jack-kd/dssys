package com.byazt.xoi;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.common.f.o;
import com.byazt.zg.ec;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1415, 34})
/* loaded from: classes3.dex */
public class l {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, Float> f27726l = new ConcurrentHashMap();
    public final Map<String, j> jx = new ConcurrentHashMap();

    public l(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null) {
            this.hp = jSONObject.optInt("lt_days");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("estimate");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    this.f27726l.put(next, Float.valueOf((float) jSONObjectOptJSONObject.optDouble(next)));
                }
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("rule_excs");
            if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() == 0) {
                return;
            }
            Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(next2);
                if (jSONObjectOptJSONObject3 != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject3.optJSONArray("prime_rits")) != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i2);
                        this.jx.put(strOptString, new j(next2, strOptString, jSONObjectOptJSONObject3));
                    }
                }
            }
        }
    }

    public JSONObject hp(String str, @NonNull ec ecVar) throws JSONException {
        w wVar;
        if (!com.byazt.di.l.l().rz() || str == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        float fHp = hp(str);
        j jVar = this.jx.get(str);
        if (jVar != null) {
            Map<String, w> mapW = jVar.w();
            String[] strArrJx = jVar.jx();
            if (mapW != null && !mapW.isEmpty() && strArrJx != null && strArrJx.length > 0) {
                for (String str2 : strArrJx) {
                    if (!TextUtils.isEmpty(str2) && (wVar = mapW.get(str2)) != null) {
                        try {
                            jSONObject.putOpt(str2, Integer.valueOf(wVar.hp(fHp)));
                        } catch (Exception e2) {
                            com.byazt.aw.l.j("", "calculateRangeByScore计算异常：(tableName：" + str2 + ",primeRit:" + str + "），" + e2.getMessage());
                        }
                    }
                }
            }
        }
        ecVar.put(MediationConstant.KEY_GM_POLICY, jSONObject);
        ecVar.put("adl_scr", Float.valueOf(fHp));
        com.byazt.di.hp.jl().hp(str, fHp);
        return jSONObject;
    }

    public String jx(String str) {
        j jVarL;
        if (str == null || (jVarL = l(str)) == null) {
            return null;
        }
        return jVarL.hp();
    }

    public j l(String str) {
        return this.jx.get(str);
    }

    public float hp(String str) {
        j jVar = this.jx.get(str);
        float fHp = -1.0f;
        if (jVar != null) {
            Map<String, Float> mapL = jVar.l();
            String strJ = jVar.j();
            if (mapL != null) {
                if (mapL.containsKey("lt_x_times")) {
                    Float f2 = mapL.get("lt_x_times");
                    int iL = hp.l();
                    if (f2 != null) {
                        fHp = hp(strJ, f2.floatValue() * iL, -1.0f);
                    }
                }
                if (mapL.containsKey("active_duration")) {
                    Float f3 = mapL.get("active_duration");
                    long jA = hp.a();
                    if (f3 != null) {
                        fHp = hp(strJ, f3.floatValue() * jA, fHp);
                    }
                }
                if (mapL.containsKey("active_count")) {
                    Float f4 = mapL.get("active_count");
                    int iJ = hp.j();
                    if (f4 != null) {
                        fHp = hp(strJ, f4.floatValue() * iJ, fHp);
                    }
                }
                if (mapL.containsKey("show_period")) {
                    Float f5 = mapL.get("show_period");
                    long jS = hp.s(str);
                    if (f5 != null) {
                        fHp = hp(strJ, f5.floatValue() * jS, fHp);
                    }
                }
                if (mapL.containsKey("show_count")) {
                    Float f6 = mapL.get("show_count");
                    int iJ2 = hp.j(str);
                    if (f6 != null) {
                        fHp = hp(strJ, f6.floatValue() * iJ2, fHp);
                    }
                }
                if (mapL.containsKey("dislike_count")) {
                    Float f7 = mapL.get("dislike_count");
                    int iL2 = hp.l(str);
                    if (f7 != null) {
                        fHp = hp(strJ, f7.floatValue() * iL2, fHp);
                    }
                }
                if (mapL.containsKey(o.a.f3367e)) {
                    Float f8 = mapL.get(o.a.f3367e);
                    int iA = hp.a(str);
                    if (f8 != null) {
                        fHp = hp(strJ, f8.floatValue() * iA, fHp);
                    }
                }
                if (mapL.containsKey("install_days")) {
                    Float f9 = mapL.get("install_days");
                    int iW = hp.w();
                    if (f9 != null) {
                        fHp = hp(strJ, f9.floatValue() * iW, fHp);
                    }
                }
                if (!this.f27726l.isEmpty()) {
                    for (Map.Entry<String, Float> entry : this.f27726l.entrySet()) {
                        if (entry != null) {
                            String key = entry.getKey();
                            float fFloatValue = entry.getValue().floatValue();
                            Float f10 = mapL.get(key);
                            if (f10 != null) {
                                fHp = hp(strJ, f10.floatValue() * fFloatValue, fHp);
                            }
                        }
                    }
                }
            }
        }
        return fHp;
    }

    private float hp(String str, float f2, float f3) {
        if (f3 == -1.0f) {
            return f2;
        }
        str.getClass();
        switch (str) {
            case "*":
                return f3 * f2;
            case "+":
                return f3 + f2;
            case "max":
                return Math.max(f2, f3);
            case "min":
                return Math.min(f2, f3);
            default:
                return f3;
        }
    }

    public int hp() {
        return this.hp;
    }
}
