package com.byazt.fgq;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.f.q;
import com.byazt.lyn.q;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 819, 38})
/* loaded from: classes2.dex */
public class j implements jx<q> {
    public Context hp;

    public j(Context context) {
        if (context != null) {
            this.hp = context.getApplicationContext();
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized void delete(String str) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (this.hp != null && !TextUtils.isEmpty(str)) {
            com.byazt.ry.j.hp(null, "gm_pacing_".concat(str)).remove(str);
        }
    }

    @Override // com.byazt.fgq.w
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public synchronized void l(q qVar) {
        try {
            if (this.hp != null && qVar != null) {
                com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_pacing_" + qVar.l());
                String strJ = qVar.j();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("unity_id", qVar.j());
                    if (!qVar.hp()) {
                        jSONObject.put("waterfall_show_rules_version", qVar.w());
                        jSONObject.put("adn_rit_show_rules_version", qVar.a());
                    }
                    jSONObject.put("timing_mode", qVar.eb());
                    StringBuilder sb = new StringBuilder();
                    sb.append(qVar.q());
                    jSONObject.put("show_pacing", sb.toString());
                    jSONObject.put("show_pacing_rule_id", qVar.e());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(qVar.gu());
                    jSONObject.put(q.a.f3394i, sb2.toString());
                    jxVarHp.put(strJ, jSONObject.toString());
                } catch (JSONException unused) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized com.byazt.lyn.q query(String str) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return hp(com.byazt.ry.j.hp(null, "gm_pacing_".concat(str)).getString(str, ""), false);
        }
        throw new RuntimeException(" has slotId");
    }

    @Override // com.byazt.fgq.w
    public synchronized void delete(String str, String str2) {
        if (!str.contains("_")) {
            if (this.hp != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                com.byazt.ry.j.hp(null, "gm_pacing_".concat(str)).remove(str + "_" + str2);
            }
        } else {
            throw new RuntimeException(" has slotId");
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized com.byazt.lyn.q query(String str, String str2) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return hp(com.byazt.ry.j.hp(null, "gm_pacing_".concat(str)).getString(str + "_" + str2, ""), true);
        }
        throw new RuntimeException(" has slotId");
    }

    private com.byazt.lyn.q hp(String str, boolean z2) throws JSONException {
        String str2;
        String string;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] strArrSplit = jSONObject.getString("unity_id").split("_");
            String str3 = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str4 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (z2) {
                str2 = "";
                string = str2;
            } else {
                String string2 = jSONObject.getString("waterfall_show_rules_version");
                string = jSONObject.getString("adn_rit_show_rules_version");
                str2 = string2;
            }
            return new com.byazt.lyn.q(str3, str4, str2, string, jSONObject.getInt("timing_mode"), jSONObject.getString("show_pacing"), jSONObject.getString("show_pacing_rule_id"), jSONObject.getString(q.a.f3394i));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.byazt.fgq.jx
    public synchronized void hp(String str, long j2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.lyn.q qVarQuery = query(str);
        if (qVarQuery != null) {
            qVarQuery.hp(j2);
            l(qVarQuery);
        }
    }

    @Override // com.byazt.fgq.jx
    public synchronized void hp(String str, String str2, long j2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            com.byazt.lyn.q qVarQuery = query(str, str2);
            if (qVarQuery != null) {
                qVarQuery.hp(j2);
                l(qVarQuery);
            }
        }
    }
}
