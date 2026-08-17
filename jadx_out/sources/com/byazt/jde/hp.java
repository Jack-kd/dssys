package com.byazt.jde;

import android.app.Dialog;
import com.byazt.lf.k;
import com.byazt.qt.a;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 250, 28})
/* loaded from: classes.dex */
public class hp implements com.byazt.jlt.hp {
    public final mp hp;

    public hp(mp mpVar) {
        this.hp = mpVar;
    }

    @Override // com.byazt.jlt.hp
    public boolean hp(String str, Dialog dialog) {
        return false;
    }

    @Override // com.byazt.jlt.hp
    public boolean hp(a aVar, String str, Dialog dialog) {
        if (!"7:1".equals(aVar.getId())) {
            return false;
        }
        k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.jde.hp.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("stats_feedback_cannot_close");
                if (hp.this.hp != null) {
                    lVarHp.a(hp.this.hp.ns()).s(hp.this.hp.w_());
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("render_control", hd.l(hp.this.hp));
                    jSONObject.put("ad_info", hp.this.hp.hb());
                    jSONObject.put("render_sequence", hd.l(hp.this.hp));
                    lVarHp.l(jSONObject.toString());
                }
                return lVarHp;
            }
        }, "stats_feedback_cannot_close");
        return true;
    }

    public static void hp(com.byazt.ih.l lVar, mp mpVar) {
        if (lVar == null || mpVar == null) {
            return;
        }
        lVar.addInterceptor(new hp(mpVar));
    }
}
