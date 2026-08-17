package com.byazt.it;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.gg.gu;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 836, 28})
/* loaded from: classes.dex */
public class hp extends l implements com.byazt.mw.l {
    public String gu;

    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        Object obj;
        com.byazt.xs.jx jxVarA;
        com.byazt.mw.hp hpVarE;
        Map<String, Object> map = this.f21226w;
        if (map == null || map.size() <= 0 || (obj = this.f21226w.get("name")) == null) {
            return false;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf)) {
            return false;
        }
        Object obj2 = this.f21226w.get("state");
        if (obj2 != null) {
            this.gu = String.valueOf(obj2);
        }
        com.byazt.xs.jx jxVar = this.f21223l;
        com.byazt.xs.jx jxVarL = jxVar.l(jxVar);
        if (jxVarL != null && (jxVarA = jxVarL.a(strValueOf)) != null && (hpVarE = jxVarA.e(strValueOf)) != null) {
            hpVarE.hp(this);
        }
        return false;
    }

    @Override // com.byazt.mw.l
    public void l() {
        gu guVar;
        if ((TextUtils.equals(this.gu, "complete") || TextUtils.isEmpty(this.gu)) && (guVar = this.hp) != null) {
            guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
        }
    }

    @Override // com.byazt.mw.l
    public void hp() {
        gu guVar;
        if ((TextUtils.equals(this.gu, "start") || TextUtils.isEmpty(this.gu)) && (guVar = this.hp) != null) {
            guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
        }
    }
}
