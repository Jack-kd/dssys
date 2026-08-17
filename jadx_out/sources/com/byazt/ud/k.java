package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 42})
/* loaded from: classes3.dex */
public class k extends xs {
    public k() {
        super(com.byazt.ki.jx.NOT_EQ);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp = this.hp.hp(map);
        Object objHp2 = this.f26143l.hp(map);
        return (objHp == null && objHp2 == null) ? Boolean.FALSE : (objHp != null || objHp2 == null) ? (objHp == null || objHp2 != null) ? ((objHp instanceof Number) && (objHp2 instanceof Number)) ? Boolean.valueOf(!com.byazt.ax.l.hp((Number) objHp, (Number) objHp2)) : Boolean.valueOf(!objHp.equals(objHp2)) : Boolean.TRUE : Boolean.TRUE;
    }
}
