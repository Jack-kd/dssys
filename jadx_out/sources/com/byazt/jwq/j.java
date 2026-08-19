package com.byazt.jwq;

import android.app.Activity;
import android.text.TextUtils;
import com.anythink.core.common.f.o;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 38})
/* loaded from: classes.dex */
public class j extends hp {
    public String ec;
    public String sz;
    public int vv;
    public int xs;

    public j(Activity activity, mp mpVar, bu buVar) {
        JSONObject jSONObjectOptJSONObject;
        super(activity, mpVar, buVar);
        JSONObject jSONObjectL = buVar.l();
        if (jSONObjectL == null || (jSONObjectOptJSONObject = jSONObjectL.optJSONObject("coupon")) == null) {
            return;
        }
        this.xs = jSONObjectOptJSONObject.optInt("amount");
        this.vv = jSONObjectOptJSONObject.optInt("threshold");
        this.ec = jSONObjectOptJSONObject.optString("start_time");
        this.sz = jSONObjectOptJSONObject.optString(o.a.f3369g);
    }

    @Override // com.byazt.jwq.l
    public boolean a() {
        return (this.xs == 0 || this.vv == 0) ? false : true;
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 6;
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("amount", this.xs);
            jSONObject.put("threshold", "满" + this.vv + "元可用");
            if (TextUtils.isEmpty(this.ec)) {
                if (TextUtils.isEmpty(this.sz)) {
                    str = "领取当日起30分钟内有效";
                } else {
                    str = "有效期至" + this.sz;
                }
            } else if (TextUtils.isEmpty(this.sz)) {
                str = "有效期至" + this.ec;
            } else {
                str = "有效期" + this.ec + "至" + this.sz;
            }
            jSONObject.put("start_time", this.ec);
            jSONObject.put("expire_text", str);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        return jx(eVar);
    }
}
