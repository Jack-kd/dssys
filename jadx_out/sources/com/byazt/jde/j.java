package com.byazt.jde;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.umeng.analytics.pro.cl;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 250, 38})
/* loaded from: classes.dex */
public class j {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.bl.jx f21435j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21436l;

    public static j hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public String j() {
        return this.jx;
    }

    public String jx() {
        return this.f21436l;
    }

    public boolean l() {
        return this.hp;
    }

    public String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(cl.f49062q, Boolean.valueOf(this.hp));
            jSONObject.putOpt("upload_api", this.f21436l);
            jSONObject.putOpt("alert_text", this.jx);
            com.byazt.bl.jx jxVar = this.f21435j;
            if (jxVar != null) {
                jSONObject.putOpt("filter_word", jxVar.toJson());
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public com.byazt.bl.jx w() {
        return this.f21435j;
    }

    public static j hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        j jVar = new j();
        jVar.hp = jSONObject.optBoolean(cl.f49062q);
        jVar.f21436l = jSONObject.optString("upload_api");
        jVar.jx = jSONObject.optString("alert_text");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("filter_word");
        if (jSONObjectOptJSONObject != null) {
            com.byazt.bl.jx fromJson = com.byazt.bl.jx.parseFromJson(jSONObjectOptJSONObject);
            if (fromJson != null) {
                if (TextUtils.isEmpty(fromJson.getId())) {
                    fromJson.setId("99:1");
                }
                if (TextUtils.isEmpty(fromJson.getName())) {
                    fromJson.setName("素材反馈");
                }
                fromJson.setNewUi(false);
            }
            jVar.f21435j = fromJson;
        }
        return jVar;
    }

    public static com.byazt.bl.jx hp() {
        j jVarGh = sz.l().gh();
        if (jVarGh == null || TextUtils.isEmpty(jVarGh.f21436l)) {
            return null;
        }
        if (sz.l().ub()) {
            com.byazt.bl.jx jxVar = new com.byazt.bl.jx();
            jxVar.setId("99:1");
            jxVar.setNewUi(true);
            jxVar.setName("其他问题");
            return jxVar;
        }
        return jVarGh.w();
    }
}
