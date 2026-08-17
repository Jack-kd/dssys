package com.meishu.sdk.core.loader.cache;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public enum CacheManager {
    INSTANCE;

    private static final String TAG = "CacheManager";
    private final ConcurrentHashMap<String, List<WeakReference<a>>> cacheMap = new ConcurrentHashMap<>();

    CacheManager() {
    }

    private int getMaxMemory() {
        return (int) Runtime.getRuntime().maxMemory();
    }

    private int getTraceMemory() {
        return (int) (Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()));
    }

    public void clear() {
        this.cacheMap.clear();
    }

    public synchronized List<WeakReference<a>> getCacheListByKey(String str) {
        List<WeakReference<a>> list;
        try {
            list = this.cacheMap.get(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (list == null) {
            return null;
        }
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public synchronized a getFirstEntity(String str) {
        try {
            if (this.cacheMap.get(str) != null && this.cacheMap.get(str).size() > 0) {
                a aVar = this.cacheMap.get(str).get(0).get();
                if (aVar != null && aVar.a()) {
                    return aVar;
                }
                removeFirstEntity(str);
            }
        } catch (Exception unused) {
            remove(str);
        }
        return null;
    }

    public synchronized void handleCurrentList(String str, List<a> list, int i2) {
        if (list != null) {
            try {
            } catch (Exception e2) {
                e2.printStackTrace();
            } finally {
            }
            if (list.size() != 0) {
                List<WeakReference<a>> cacheListByKey = getCacheListByKey(str);
                if (cacheListByKey != null && cacheListByKey.size() > 0) {
                    Iterator<WeakReference<a>> it = cacheListByKey.iterator();
                    while (it.hasNext()) {
                        a aVar = it.next().get();
                        if (aVar != null && aVar.a()) {
                            list.add(aVar);
                        }
                    }
                }
                Collections.sort(list);
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < i2 && list.size() > i3; i3++) {
                    arrayList.add(new WeakReference(list.get(i3)));
                }
                remove(str);
                put(str, arrayList);
            }
        }
    }

    public synchronized void put(String str, List<WeakReference<a>> list) {
        if (str != null) {
            if (list != null) {
                try {
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (getTraceMemory() < getMaxMemory() / 5) {
                    clear();
                } else {
                    this.cacheMap.put(str, list);
                }
            }
        }
    }

    public void remove(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.cacheMap.remove(str);
    }

    public synchronized void removeFirstEntity(String str) {
        List<WeakReference<a>> list = this.cacheMap.get(str);
        if (list != null && list.size() > 0) {
            list.remove(0);
        }
    }
}
