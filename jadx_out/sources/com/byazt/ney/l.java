package com.byazt.ney;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1539, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: j, reason: collision with root package name */
    public static volatile l f23554j;
    public final Map<String, String> jx;

    private l() {
        super("gm_label_v_v_s_3");
        this.jx = new ConcurrentHashMap();
        l();
    }

    public static l j() {
        if (f23554j == null) {
            synchronized (l.class) {
                try {
                    if (f23554j == null) {
                        f23554j = new l();
                    }
                } finally {
                }
            }
        }
        return f23554j;
    }

    public void hp(String str, int i2, double d2) {
        if (!com.byazt.di.l.l().qu() || TextUtils.isEmpty(str)) {
            return;
        }
        hp(3, str, i2, d2);
    }

    public void jx(String str, JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        if (!com.byazt.di.l.l().qu() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        try {
            jSONObject.putOpt(a.C0051a.f3218o, map.get(a.C0051a.f3218o));
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.ney.hp
    public boolean l(String str, JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        try {
            Object obj = map.get("user_label_value");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            jSONObject2.putOpt("label_info", hp(obj != null ? (com.byazt.tgw.jx) obj : null));
            jSONObject2.putOpt("ecpm_ttl", Integer.valueOf(com.byazt.di.l.l().an()));
            jSONObject2.putOpt(a.C0051a.f3218o, map.get(a.C0051a.f3218o));
            jSONObject2.putOpt("group_type", map.get("group_type"));
            jSONObject2.putOpt("rule_in_use", map.get("rule_in_use"));
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt("ecpm", map.get("ecpm"));
            jSONObject3.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
            jSONObject2.putOpt("ecpm_info", jSONObject3);
            jSONObject2.putOpt("refresh_time", map.get("refresh_time"));
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    @Override // com.byazt.ney.hp
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        com.byazt.aw.l.l("DynamicLabelValueManagerAbs", "readCacheFromSp-SP_NAME_V3，cpmKey:" + str + "，type_value_timestamp:" + str2);
        if (str.startsWith("cpm_key_")) {
            this.jx.put(str, str2);
        }
    }

    @Override // com.byazt.ney.hp
    public Map<String, String> hp() {
        return this.jx;
    }

    @Override // com.byazt.ney.hp
    public void hp(String str, int i2, String str2) {
        if (i2 == 3) {
            this.jx.put(str, str2);
        }
    }

    @Override // com.byazt.ney.hp
    public JSONObject hp(com.byazt.tgw.jx jxVar) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("label_name", jxVar != null ? jxVar.hp() : "-1");
            jSONObject.putOpt("label_id", jxVar != null ? Integer.valueOf(jxVar.jx()) : "-1");
            jSONObject.putOpt("label_version", jxVar != null ? jxVar.j() : "-1");
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
