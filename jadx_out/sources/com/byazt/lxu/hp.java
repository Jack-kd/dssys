package com.byazt.lxu;

import com.byazt.gt.e;
import com.byazt.gt.zy;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1576, 28})
/* loaded from: classes3.dex */
public class hp extends l {

    /* renamed from: l, reason: collision with root package name */
    public long f22808l;

    public hp(j jVar) {
        super(jVar);
    }

    @Override // com.byazt.lxu.l
    public long hp() {
        long jVv = this.hp.jx().vv();
        if (jVv < 600000) {
            jVv = 600000;
        }
        return this.f22808l + jVv;
    }

    @Override // com.byazt.lxu.l
    public String j() {
        return "ab";
    }

    @Override // com.byazt.lxu.l
    public boolean jx() throws JSONException {
        JSONObject jSONObjectHp = this.hp.j().hp();
        if (this.hp.j().jl() == 0 || jSONObjectHp == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("header", this.hp.j().hp());
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("_gen_time", jCurrentTimeMillis);
        JSONObject jSONObjectJx = com.byazt.et.hp.jx(com.byazt.et.hp.hp(com.byazt.et.l.hp(this.hp.getContext(), this.hp.j().hp(), this.hp.eb().j(), true, com.byazt.ub.hp.j()), com.byazt.et.hp.jx), jSONObject);
        if (jSONObjectJx == null) {
            return false;
        }
        com.byazt.ub.hp.jl().l(!zy.hp(com.byazt.ub.hp.a(), jSONObjectJx), jSONObjectJx);
        if (e.f20599l) {
            e.hp("getAbConfig ".concat(String.valueOf(jSONObjectJx)), null);
        }
        this.hp.j().hp(jSONObjectJx);
        this.f22808l = jCurrentTimeMillis;
        return true;
    }

    @Override // com.byazt.lxu.l
    public long[] l() {
        return w.jx;
    }
}
