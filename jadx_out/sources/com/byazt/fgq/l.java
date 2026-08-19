package com.byazt.fgq;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 819, 34})
/* loaded from: classes2.dex */
public class l implements hp<com.byazt.lyn.eb> {
    public Context hp;

    public l(Context context) {
        if (context != null) {
            this.hp = context.getApplicationContext();
        }
    }

    private void jx(com.byazt.lyn.eb ebVar) throws JSONException {
        if (this.hp == null || ebVar == null) {
            return;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_freqctl_" + ebVar.l());
        JSONObject jSONObjectHp = hp(ebVar, false);
        if (jSONObjectHp != null) {
            jxVarHp.put(ebVar.j(), jSONObjectHp.toString());
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized void delete(String str) {
        if (this.hp != null && !TextUtils.isEmpty(str)) {
            com.byazt.ry.j.hp(null, "gm_freqctl_".concat(String.valueOf(str))).remove(str);
        }
    }

    @Override // com.byazt.fgq.w
    /* renamed from: hp, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public synchronized void l(com.byazt.lyn.eb ebVar) {
        if (this.hp != null && ebVar != null) {
            com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(null, "gm_freqctl_" + ebVar.l());
            String strJ = ebVar.j();
            JSONObject jSONObjectHp = hp(ebVar, true);
            if (jSONObjectHp != null) {
                jxVarHp.put(strJ, jSONObjectHp.toString());
            }
        }
    }

    @Override // com.byazt.fgq.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public synchronized void hp(com.byazt.lyn.eb ebVar) {
        if (ebVar != null) {
            jx(ebVar);
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized com.byazt.lyn.eb query(String str) {
        if (this.hp == null) {
            return null;
        }
        return hp(com.byazt.ry.j.hp(null, "gm_freqctl_".concat(String.valueOf(str))).getString(str, ""), false);
    }

    @Override // com.byazt.fgq.w
    public synchronized void delete(String str, String str2) {
        if (this.hp != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            com.byazt.ry.j.hp(null, "gm_freqctl_".concat(String.valueOf(str))).remove(str + "_" + str2);
        }
    }

    @Override // com.byazt.fgq.w
    public synchronized com.byazt.lyn.eb query(String str, String str2) {
        if (this.hp == null) {
            return null;
        }
        return hp(com.byazt.ry.j.hp(null, "gm_freqctl_".concat(String.valueOf(str))).getString(str + "_" + str2, ""), true);
    }

    private JSONObject hp(com.byazt.lyn.eb ebVar, boolean z2) throws JSONException {
        if (ebVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("unity_id", ebVar.j());
            if (ebVar.hp()) {
                jSONObject.put("adn_rit_show_rules_version", ebVar.a());
            } else {
                jSONObject.put("waterfall_show_rules_version", ebVar.w());
            }
            jSONObject.put("timing_mode", ebVar.eb());
            jSONObject.put("show_freqctl_rules", z2 ? ebVar.q() : ebVar.e());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private com.byazt.lyn.eb hp(String str, boolean z2) throws JSONException {
        String string;
        String string2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] strArrSplit = jSONObject.getString("unity_id").split("_");
            String str2 = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str3 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (z2) {
                string2 = jSONObject.getString("adn_rit_show_rules_version");
                string = "";
            } else {
                string = jSONObject.getString("waterfall_show_rules_version");
                string2 = "";
            }
            return new com.byazt.lyn.eb(str2, str3, string, string2, jSONObject.getInt("timing_mode"), jSONObject.getString("show_freqctl_rules"));
        } catch (JSONException unused) {
            return null;
        }
    }
}
