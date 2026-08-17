package com.byazt.hy;

import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1000, 34})
/* loaded from: classes2.dex */
public class l {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f20985j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f20986l;

    public static l hp() {
        return new l();
    }

    public l l(String str) {
        this.jx = str;
        return this;
    }

    public static l hp(JSONObject jSONObject) {
        String strOptString;
        String strOptString2;
        JSONObject jSONObjectOptJSONObject;
        mp mpVarHp = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            strOptString = jSONObject.optString("tag", null);
        } catch (Exception unused) {
            strOptString = null;
            strOptString2 = null;
        }
        try {
            strOptString2 = jSONObject.optString("label", null);
            try {
                jSONObjectOptJSONObject = jSONObject.optJSONObject("extra");
                try {
                    mpVarHp = com.byazt.jz.hp.hp(jSONObject.optJSONObject("material_meta"));
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                jSONObjectOptJSONObject = null;
            }
        } catch (Exception unused4) {
            strOptString2 = null;
            jSONObjectOptJSONObject = strOptString2;
            return hp().hp(strOptString).l(strOptString2).l(jSONObjectOptJSONObject).hp(mpVarHp);
        }
        return hp().hp(strOptString).l(strOptString2).l(jSONObjectOptJSONObject).hp(mpVarHp);
    }

    public l l(JSONObject jSONObject) {
        this.f20985j = jSONObject;
        return this;
    }

    public JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tag", this.f20986l);
            jSONObject.put("label", this.jx);
            JSONObject jSONObject2 = this.f20985j;
            if (jSONObject2 != null) {
                jSONObject.put("extra", jSONObject2);
            }
            mp mpVar = this.hp;
            if (mpVar != null) {
                jSONObject.put("material_meta", mpVar.ij());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public l hp(mp mpVar) {
        this.hp = mpVar;
        return this;
    }

    public l hp(String str) {
        this.f20986l = str;
        return this;
    }
}
