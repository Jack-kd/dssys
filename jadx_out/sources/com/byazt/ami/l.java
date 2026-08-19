package com.byazt.ami;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 1332, 34})
/* loaded from: classes2.dex */
public class l {
    public static String hp = "AdapterPl";

    /* renamed from: l, reason: collision with root package name */
    public static final Set<String> f18044l = new CopyOnWriteArraySet();
    public static volatile Map<String, Map<String, Object>> jx = new ConcurrentHashMap(1);

    public static boolean hp(String str) {
        Set<String> set = f18044l;
        if (set.contains(str)) {
            return true;
        }
        set.add(str);
        return false;
    }

    public static Map<String, Map<String, Object>> hp() {
        return jx;
    }
}
