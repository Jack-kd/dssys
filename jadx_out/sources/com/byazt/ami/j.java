package com.byazt.ami;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1332, 38})
/* loaded from: classes2.dex */
public class j {
    public static Map<String, com.byazt.vbz.jx> hp = new ConcurrentHashMap();

    public static com.byazt.vbz.jx hp(String str) {
        if (!w.w(str)) {
            return null;
        }
        com.byazt.vbz.jx jxVar = hp.get(str);
        if (jxVar != null) {
            return jxVar;
        }
        jx jxVar2 = new jx(str);
        hp.put(str, jxVar2);
        return jxVar2;
    }

    public static Set<String> hp() {
        return hp.keySet();
    }
}
