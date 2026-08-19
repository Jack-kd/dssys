package com.byazt.ov;

import com.byazt.gg.a;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 707, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: q, reason: collision with root package name */
    public List<com.byazt.ba.j> f24194q;

    public l(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
        this.f24194q = new CopyOnWriteArrayList();
    }

    @Override // com.byazt.ov.hp
    public void hp() {
        Object obj;
        com.byazt.ba.jx jxVarHp;
        Map<String, Object> map = this.f24188a;
        if (map == null || map.size() <= 0 || (obj = this.f24188a.get("name")) == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        com.byazt.ba.hp hpVarMs = this.jx.ms();
        if (hpVarMs == null || (jxVarHp = hpVarMs.hp(strValueOf)) == null) {
            return;
        }
        jxVarHp.hp(strValueOf);
    }
}
