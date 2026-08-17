package com.byazt.jwq;

import android.app.Activity;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 54})
/* loaded from: classes.dex */
public class a extends hp {
    public int vv;
    public int xs;

    public a(Activity activity, mp mpVar, bu buVar) {
        JSONObject jSONObjectL;
        super(activity, mpVar, buVar);
        bu buVar2 = this.f21735q;
        if (buVar2 == null || (jSONObjectL = buVar2.l()) == null) {
            return;
        }
        this.xs = jSONObjectL.optInt("reduce_time");
        this.vv = jSONObjectL.optInt("reduce_duration");
    }

    @Override // com.byazt.jwq.l
    public boolean a() {
        int i2;
        bu buVar = this.f21735q;
        return (buVar == null || !buVar.a()) && this.xs > 0 && (i2 = this.vv) > 0 && this.f21730l < i2;
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 3;
    }

    @Override // com.byazt.jwq.l
    public void hp(com.byazt.ay.a aVar) {
    }

    @Override // com.byazt.jwq.l
    public void j(e eVar) {
        if (eVar != null) {
            eVar.hp(this.xs);
        }
        this.f21735q.hp(true);
        if (eVar != null) {
            eVar.hp();
        }
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        return jx(eVar);
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("alert_title", "恭喜获得加速特权");
            jSONObject.put("reduce_time", this.xs + "s");
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
