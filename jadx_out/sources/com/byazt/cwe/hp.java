package com.byazt.cwe;

import com.byazt.qt.k;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1359, 28})
/* loaded from: classes2.dex */
public final class hp {
    public static final Map<Integer, WeakReference<k>> hp = new HashMap();

    public static void hp(Integer num, k kVar) {
        hp.put(num, new WeakReference<>(kVar));
    }

    public static k hp(Integer num) {
        WeakReference<k> weakReference = hp.get(num);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
