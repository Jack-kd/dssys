package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 54})
/* loaded from: classes3.dex */
public class a extends xs {
    public a() {
        super(com.byazt.ki.jx.GT);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        Object objHp2 = this.hp.hp(map);
        if (objHp2 == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        return com.byazt.ax.jx.hp(objHp2, (Number) objHp);
    }
}
