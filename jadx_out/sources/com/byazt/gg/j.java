package com.byazt.gg;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 748, 38})
/* loaded from: classes2.dex */
public class j {
    public static Map<String, l> hp = new HashMap();

    public static void hp(List<l> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (l lVar : list) {
            if (lVar != null) {
                hp.put(lVar.hp(), lVar);
            }
        }
    }

    public static l hp(String str) {
        return hp.get(str);
    }
}
