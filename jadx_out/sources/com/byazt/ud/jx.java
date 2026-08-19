package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 30})
/* loaded from: classes3.dex */
public class jx extends xs {
    public jx() {
        super(com.byazt.ki.jx.DOUBLE_BAR);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        return Boolean.valueOf(com.byazt.kv.l.hp(this.hp.hp(map)) || com.byazt.kv.l.hp(this.f26143l.hp(map)));
    }

    @Override // com.byazt.ud.xs
    public String toString() {
        return l();
    }
}
