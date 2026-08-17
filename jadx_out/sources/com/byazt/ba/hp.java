package com.byazt.ba;

import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1812, 28})
/* loaded from: classes2.dex */
public class hp {
    public volatile Map<String, jx> hp = new HashMap();

    public jx hp(String str) {
        if (this.hp.containsKey(str) && this.hp.get(str) != null) {
            return this.hp.get(str);
        }
        l lVar = new l();
        this.hp.put(str, lVar);
        return lVar;
    }

    public void hp(String str, jx jxVar) {
        if (!this.hp.containsKey(str) || this.hp.get(str) == null) {
            this.hp.put(str, jxVar);
        }
    }
}
