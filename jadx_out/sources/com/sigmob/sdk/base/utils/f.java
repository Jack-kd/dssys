package com.sigmob.sdk.base.utils;

import java.util.Collection;
import java.util.Map;

/* loaded from: classes4.dex */
public class f {
    public static boolean a(int i2, int i3) {
        return i2 >= 0 && i2 < i3;
    }

    public static boolean b(Collection<?> collection) {
        return !a(collection);
    }

    public static boolean a(int i2, Collection<?> collection) {
        if (a(collection)) {
            return false;
        }
        return a(i2, collection.size());
    }

    public static boolean b(Map<?, ?> map) {
        return !a(map);
    }

    public static boolean a(int i2, Map<?, ?> map) {
        if (a(map)) {
            return false;
        }
        return a(i2, map.size());
    }

    public static boolean b(Object[] objArr) {
        return !a(objArr);
    }

    public static boolean a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean a(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public static boolean a(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }
}
