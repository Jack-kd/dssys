package com.byazt.rms;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.ie.UGFrameLayout;
import com.byazt.ql.u;
import com.byazt.xs.jx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1993, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.vc.hp {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.vc.hp, com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
    }

    @Override // com.byazt.xs.jx
    /* renamed from: su, reason: merged with bridge method [inline-methods] */
    public UGFrameLayout hp() {
        UGFrameLayout uGFrameLayout = new UGFrameLayout(this.f27777l);
        uGFrameLayout.hp(this);
        return uGFrameLayout;
    }

    public void hp(long j2, long j3) {
        u uVar;
        JSONObject jSONObjectJx;
        if (!hp(12) || (uVar = this.lp.get(12)) == null || (jSONObjectJx = uVar.jx()) == null) {
            return;
        }
        jSONObjectJx.optString("type");
        JSONArray jSONArrayOptJSONArray = jSONObjectJx.optJSONArray("actions");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("type");
                int iOptInt = jSONObjectOptJSONObject.optInt("progress") * 1000;
                if (iOptInt > j3) {
                    iOptInt = (int) j3;
                }
                if (j2 == iOptInt && TextUtils.equals(strOptString, "onShow")) {
                    jx jxVarL = l(this);
                    String strOptString2 = jSONObjectOptJSONObject.optString("nodeId");
                    if (jxVarL != null) {
                        jxVarL.j(strOptString2).l(0);
                    }
                }
            }
        }
    }
}
