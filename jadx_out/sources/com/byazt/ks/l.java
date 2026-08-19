package com.byazt.ks;

import com.byazt.gg.a;
import com.byazt.ql.u;
import com.byazt.ql.vv;
import com.byazt.xs.jx;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1326, 34})
/* loaded from: classes.dex */
public abstract class l implements vv {
    public vv hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f22102j;

    /* renamed from: l, reason: collision with root package name */
    public String f22103l;
    public boolean jx = true;

    /* renamed from: w, reason: collision with root package name */
    public boolean f22104w = false;

    public l(vv vvVar) {
        this.hp = vvVar;
    }

    public void hp(JSONObject jSONObject) {
        this.f22102j = jSONObject;
    }

    public abstract void jx(u uVar, vv.l lVar, vv.hp hpVar);

    public void l(boolean z2) {
        this.f22104w = z2;
    }

    public void hp(String str) {
        this.f22103l = str;
    }

    public void l(u uVar, vv.l lVar, vv.hp hpVar) {
        vv vvVar = this.hp;
        if (vvVar == null) {
            return;
        }
        vvVar.hp(uVar, lVar, hpVar);
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    public boolean hp() {
        String str;
        return this.jx && (str = this.f22103l) != null && "3".compareTo(str) <= 0 && this.f22102j != null;
    }

    @Override // com.byazt.ql.vv
    public void hp(u uVar, vv.l lVar, vv.hp hpVar) {
        if (hp()) {
            jx(uVar, lVar, hpVar);
        } else {
            l(uVar, lVar, hpVar);
        }
    }

    @Override // com.byazt.ql.vv
    public void hp(jx jxVar, String str, a.hp hpVar) {
        vv vvVar = this.hp;
        if (vvVar == null) {
            return;
        }
        vvVar.hp(jxVar, str, hpVar);
    }
}
