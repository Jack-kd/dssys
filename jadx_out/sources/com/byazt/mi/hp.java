package com.byazt.mi;

import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2146, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public static Map<String, Map<String, Object>> f23058l = new HashMap();

    private hp() {
    }

    public static hp hp() {
        if (hp != null) {
            return hp;
        }
        synchronized (hp.class) {
            try {
                if (hp != null) {
                    return hp;
                }
                hp hpVar = new hp();
                hp = hpVar;
                return hpVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Map<String, Object> hp(String str) {
        Map<String, Object> map = f23058l.get(str);
        if (map != null) {
            return map;
        }
        HashMap map2 = new HashMap();
        f23058l.put(str, map2);
        return map2;
    }
}
