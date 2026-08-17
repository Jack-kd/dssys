package com.byazt.gg;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 748, 45})
/* loaded from: classes2.dex */
public class e {
    public static Map<String, eb> hp = new HashMap();

    public static void hp(List<eb> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (eb ebVar : list) {
            if (ebVar != null) {
                hp.put(ebVar.hp(), ebVar);
            }
        }
    }

    public static eb hp(String str) {
        return hp.get(str);
    }
}
