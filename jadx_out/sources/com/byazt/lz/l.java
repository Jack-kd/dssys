package com.byazt.lz;

import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 898, 34})
/* loaded from: classes3.dex */
public class l {
    public static Map<String, Object> hp(Map<String, Object> map, Map<String, Object> map2) {
        if (map == null) {
            return map2;
        }
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }
}
