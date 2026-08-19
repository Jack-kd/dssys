package com.byazt.ak;

import com.byazt.ow.jx;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1378, 34})
/* loaded from: classes2.dex */
public class l {
    public Map<String, Object> hp(Map<String, Object> map, jx jxVar, boolean z2) {
        if (jxVar == null) {
            return map;
        }
        Map<String, Object> concurrentHashMap = z2 ? new ConcurrentHashMap<>() : map;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (z2) {
                key = jxVar.decrypt(key);
            }
            concurrentHashMap.put(key, jxVar.decrypt(value.toString()));
        }
        return concurrentHashMap;
    }

    public Map<String, Object> l(Map<String, Object> map, jx jxVar, boolean z2) {
        if (jxVar == null) {
            return map;
        }
        Map<String, Object> concurrentHashMap = z2 ? new ConcurrentHashMap<>() : map;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (z2) {
                key = jxVar.encrypt(key);
            }
            concurrentHashMap.put(key, jxVar.encrypt(value.toString()));
        }
        return concurrentHashMap;
    }
}
