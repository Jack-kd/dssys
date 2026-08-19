package com.byazt.zr;

import android.app.Activity;
import android.text.TextUtils;
import com.anythink.core.common.f.b;
import com.byazt.jwq.e;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1973, 30})
/* loaded from: classes3.dex */
public class jx extends hp {
    public jx(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
    }

    @Override // com.byazt.jwq.l
    public boolean a() {
        return (TextUtils.isEmpty(this.gu) || TextUtils.isEmpty(this.jl)) ? false : true;
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 1;
    }

    @Override // com.byazt.zr.hp, com.byazt.jwq.l
    public l.hp hp(e eVar) {
        return jx(eVar);
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("reward_name", this.gu);
            jSONObject.put("reward_amount", this.jl);
            jSONObject.put(b.a.f3232f, this.hp);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
