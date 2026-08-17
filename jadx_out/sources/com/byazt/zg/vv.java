package com.byazt.zg;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 308, 65})
/* loaded from: classes3.dex */
public class vv {
    public static Map<Integer, Integer> hp = new ConcurrentHashMap();

    public static Integer hp(int i2) {
        Integer num = hp.get(Integer.valueOf(i2));
        if (num != null) {
            return num;
        }
        Integer numValueOf = Integer.valueOf(i2);
        hp.put(Integer.valueOf(i2), numValueOf);
        return numValueOf;
    }
}
