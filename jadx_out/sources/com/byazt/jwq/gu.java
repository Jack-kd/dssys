package com.byazt.jwq;

import android.app.Activity;
import android.text.TextUtils;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public class gu extends hp {
    public gu(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
    }

    @Override // com.byazt.jwq.l
    public boolean a() {
        if (ea.jx(this.eb)) {
            return (Integer.parseInt(this.jl) == 0 || TextUtils.isEmpty(this.jl) || TextUtils.isEmpty(this.gu)) ? false : true;
        }
        return false;
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 2;
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("alert_title", "继续观看 " + this.hp + "s 可获得奖励");
            jSONObject.put("number", this.jl);
            jSONObject.put("number_unit", this.gu);
            jSONObject.put("remain_time", this.hp);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        return jx(eVar);
    }
}
