package com.byazt.hwo;

import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.n;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1224, 30})
/* loaded from: classes2.dex */
public class jx {
    public static void hp(final l lVar, final mp mpVar, final com.byazt.gy.hp hpVar) {
        if (sz.l().qq()) {
            com.byazt.dfp.l.hp().post(new Runnable() { // from class: com.byazt.hwo.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        JSONObject jSONObjectJx = jx.jx(lVar, mpVar, hpVar);
                        if (jSONObjectJx != null) {
                            com.byazt.bll.hp.hp().hp(jSONObjectJx);
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject jx(l lVar, mp mpVar, com.byazt.gy.hp hpVar) throws JSONException {
        if (lVar != null && hpVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                String strL = lVar.l();
                String strHp = lVar.hp();
                jSONObject.putOpt("lifecycle_id", hpVar.hp());
                jSONObject.putOpt("type", strL + "-" + strHp);
                jSONObject.putOpt("l_type", strL);
                jSONObject.putOpt("state", strHp);
                jSONObject.putOpt("state_num", j.hp(lVar));
                if (lVar.j() != -1) {
                    jSONObject.putOpt(n.f36449l, Integer.valueOf(lVar.j()));
                }
                jSONObject.putOpt("ts", Long.valueOf(lVar.jx()));
                if (mpVar != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("aid", mpVar.j());
                    jSONObject2.putOpt("cid", mpVar.cx());
                    jSONObject2.putOpt("req_id", mpVar.ns());
                    int i2 = hpVar.eb;
                    if (i2 > 0) {
                        jSONObject2.putOpt("ad_type", Integer.valueOf(i2));
                    }
                    jSONObject.putOpt(ClickCommon.CLICK_AREA_MATERIAL, jSONObject2);
                }
                return jSONObject;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
