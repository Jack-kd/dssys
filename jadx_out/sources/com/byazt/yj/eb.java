package com.byazt.yj;

import com.byazt.fub.zy;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1283, 94})
/* loaded from: classes3.dex */
public class eb implements s {
    public com.byazt.thw.l hp;

    /* JADX INFO: Access modifiers changed from: private */
    public void l(zy zyVar) {
        try {
            JSONObject jSONObjectW = zyVar.w();
            JSONObject jSONObject = new JSONObject(jSONObjectW.optString("template_Plugin"));
            JSONObject jSONObjectOptJSONObject = jSONObjectW.optJSONObject("creative");
            com.byazt.nw.s sVarHp = new a(jSONObject, jSONObjectOptJSONObject, jSONObjectW.optJSONObject("AdSize"), new JSONObject(jSONObjectW.optString("diff_template_Plugin"))).hp(zyVar.j(), zyVar.jl(), jSONObjectOptJSONObject.optDouble("score_exact_i18n"), jSONObjectOptJSONObject.optString("comment_num_i18n"), zyVar);
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("dynamic_creative"));
                sVarHp.hp(jSONObject2.optString("color"));
                sVarHp.hp(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.hp.hp(sVarHp);
        } catch (Exception unused2) {
        }
    }

    @Override // com.byazt.yj.s
    public void hp(com.byazt.thw.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.yj.s
    public void hp(final zy zyVar) {
        if (zyVar.k() == 1) {
            l(zyVar);
        } else {
            com.byazt.sq.w.hp(new com.byazt.uid.eb("dynamicparse") { // from class: com.byazt.yj.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    eb.this.l(zyVar);
                }
            }, 5);
        }
    }
}
