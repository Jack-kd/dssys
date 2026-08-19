package com.byazt.jwq;

import android.app.Activity;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 19})
/* loaded from: classes.dex */
public class jl extends hp {
    public jl(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 1;
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("alert_title", "距离领取奖励还剩");
            jSONObject.put("number", this.hp);
            jSONObject.put("number_unit", "秒");
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        return jx(eVar);
    }
}
