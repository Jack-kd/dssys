package com.byazt.ikh;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

@com.byazt.kj.hp(hp = {0, 1, 2142, 28})
/* loaded from: classes.dex */
public final class hp {
    public static final Object hp = new Object();

    /* renamed from: l, reason: collision with root package name */
    public static final Map<j, String> f21152l = new WeakHashMap();
    public static final Map<String, Map<j, Set<String>>> jx = new HashMap();

    public static void hp(String str, j jVar) {
        if (TextUtils.isEmpty(str) || jVar == null) {
            return;
        }
        synchronized (hp) {
            try {
                Map<j, String> map = f21152l;
                String str2 = map.get(jVar);
                if (!TextUtils.isEmpty(str2) && !TextUtils.equals(str2, str)) {
                    l(str2, jVar);
                }
                map.put(jVar, str);
                l(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void l(j jVar, String str) {
        if (jVar == null) {
            return;
        }
        synchronized (hp) {
            try {
                String str2 = f21152l.get(jVar);
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                Map<j, Set<String>> map = jx.get(str2);
                if (map == null) {
                    return;
                }
                if (TextUtils.isEmpty(str)) {
                    map.remove(jVar);
                    hp(str2, map);
                    return;
                }
                Set<String> set = map.get(jVar);
                if (set == null) {
                    return;
                }
                set.remove(str);
                if (set.isEmpty()) {
                    map.remove(jVar);
                }
                hp(str2, map);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(j jVar, String str) {
        if (jVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (hp) {
            try {
                String str2 = f21152l.get(jVar);
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                Map<j, Set<String>> mapL = l(str2);
                Set<String> hashSet = mapL.get(jVar);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    mapL.put(jVar, hashSet);
                }
                hashSet.add(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Map<j, Set<String>> l(String str) {
        Map<String, Map<j, Set<String>>> map = jx;
        Map<j, Set<String>> map2 = map.get(str);
        if (map2 != null) {
            return map2;
        }
        WeakHashMap weakHashMap = new WeakHashMap();
        map.put(str, weakHashMap);
        return weakHashMap;
    }

    public static void hp(j jVar, String str, String str2, Object obj) {
        Set set;
        if (jVar == null || TextUtils.isEmpty(str2)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        synchronized (hp) {
            try {
                String str3 = f21152l.get(jVar);
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                Map<j, Set<String>> map = jx.get(str3);
                if (map != null && !map.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList(map.entrySet());
                    int size = arrayList2.size();
                    int i2 = 0;
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj2 = arrayList2.get(i3);
                        i3++;
                        Map.Entry entry = (Map.Entry) obj2;
                        j jVar2 = (j) entry.getKey();
                        if (jVar2 != null && jVar2 != jVar && (set = (Set) entry.getValue()) != null && set.contains(str2)) {
                            arrayList.add(jVar2);
                        }
                    }
                    int size2 = arrayList.size();
                    while (i2 < size2) {
                        Object obj3 = arrayList.get(i2);
                        i2++;
                        ((j) obj3).hp(str, str2, obj);
                    }
                }
            } finally {
            }
        }
    }

    private static void l(String str, j jVar) {
        Map<j, Set<String>> map = jx.get(str);
        if (map == null) {
            return;
        }
        map.remove(jVar);
        hp(str, map);
    }

    public static void hp(j jVar) {
        if (jVar == null) {
            return;
        }
        synchronized (hp) {
            try {
                String strRemove = f21152l.remove(jVar);
                if (TextUtils.isEmpty(strRemove)) {
                    return;
                }
                l(strRemove, jVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (hp) {
            try {
                Map<j, Set<String>> mapRemove = jx.remove(str);
                if (mapRemove != null && !mapRemove.isEmpty()) {
                    ArrayList arrayList = new ArrayList(mapRemove.keySet());
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        f21152l.remove((j) obj);
                    }
                }
            } finally {
            }
        }
    }

    private static void hp(String str, Map<j, Set<String>> map) {
        if (map == null || !map.isEmpty()) {
            return;
        }
        jx.remove(str);
    }
}
