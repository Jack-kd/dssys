package com.byazt.owd;

import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1061, 30})
/* loaded from: classes3.dex */
public class jx {
    public static com.byazt.bki.a hp(com.byazt.bm.jx jxVar) {
        if (jxVar == null) {
            return null;
        }
        com.byazt.bki.a aVar = new com.byazt.bki.a();
        aVar.hp(jxVar.l());
        aVar.j(jxVar.a());
        aVar.l(jxVar.jx());
        aVar.jx(jxVar.j());
        aVar.hp(jxVar.w());
        aVar.w(jxVar.eb());
        aVar.hp(jxVar.hp());
        return aVar;
    }

    public static Map<String, String> hp(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                map2.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return map2;
    }
}
