package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 150})
/* loaded from: classes3.dex */
public class q extends xs {
    public q() {
        super(com.byazt.ki.jx.LT);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        Object objHp2 = this.hp.hp(map);
        if (objHp2 == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        return com.byazt.ax.j.hp(objHp2, (Number) objHp);
    }
}
