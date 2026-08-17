package com.byazt.lxu;

import com.byazt.gt.zy;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1576, 30})
/* loaded from: classes3.dex */
public class jx extends l {
    public jx(j jVar) {
        super(jVar);
    }

    @Override // com.byazt.lxu.l
    public long hp() {
        return this.hp.jx().s() + 21600000;
    }

    @Override // com.byazt.lxu.l
    public String j() {
        return "c";
    }

    @Override // com.byazt.lxu.l
    public boolean jx() throws JSONException {
        JSONObject jSONObjectHp = this.hp.j().hp();
        if (this.hp.j().jl() == 0 || jSONObjectHp == null || this.hp.jx().s() + 21600000 > System.currentTimeMillis()) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", jSONObjectHp);
        jSONObject.put("_gen_time", System.currentTimeMillis());
        JSONObject jSONObjectL = com.byazt.et.hp.l(com.byazt.et.hp.hp(com.byazt.et.l.hp(this.hp.getContext(), this.hp.j().hp(), this.hp.eb().jx(), true, com.byazt.ub.hp.j()), com.byazt.et.hp.jx), jSONObject);
        com.byazt.ub.hp.jl().hp(!zy.hp(jSONObjectL, this.hp.jx().eb()), jSONObjectL);
        if (jSONObjectL == null) {
            return false;
        }
        this.hp.jx().hp(jSONObjectL);
        return true;
    }

    @Override // com.byazt.lxu.l
    public long[] l() {
        return w.jx;
    }
}
