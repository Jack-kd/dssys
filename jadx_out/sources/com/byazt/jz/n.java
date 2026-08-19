package com.byazt.jz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes.dex */
public class n {
    public static final Map<Class, Map> hp = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public static final Map<Class, Map<String, WeakReference<?>>> f21924l = new ConcurrentHashMap();
    public static final Map<Class, Map> jx = new ConcurrentHashMap();

    public static <T> void hp(String str, T t2, Class cls) {
        if (t2 == null) {
            return;
        }
        Map<Class, Map> map = hp;
        Map map2 = map.get(cls);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(cls, map2);
        }
        map2.put(str, t2);
    }

    public static <T> T j(String str, Class<T> cls) {
        Map map;
        if (cls == null || str == null || (map = jx.get(cls)) == null) {
            return null;
        }
        return (T) map.remove(str);
    }

    public static <T> T jx(String str, Class<T> cls) {
        Map<String, WeakReference<?>> map;
        WeakReference<?> weakReference;
        if (cls == null || str == null || (map = f21924l.get(cls)) == null || (weakReference = map.get(str)) == null) {
            return null;
        }
        Object obj = weakReference.get();
        if (obj != null) {
            return cls.cast(obj);
        }
        map.remove(str);
        return null;
    }

    public static <T> T l(String str, Class<T> cls) {
        Map map;
        if (cls == null || str == null || (map = hp.get(cls)) == null) {
            return null;
        }
        return (T) map.remove(str);
    }

    public static <T> void l(String str, T t2, Class cls) {
        if (t2 == null || cls == null || str == null) {
            return;
        }
        Map<Class, Map<String, WeakReference<?>>> map = f21924l;
        Map<String, WeakReference<?>> map2 = map.get(cls);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(cls, map2);
        }
        map2.put(str, new WeakReference<>(t2));
    }

    public static <T> void hp(String str) {
        try {
            Iterator<Class> it = hp.keySet().iterator();
            while (it.hasNext()) {
                Map map = hp.get(it.next());
                if (map != null) {
                    map.remove(str);
                }
            }
            Iterator<Class> it2 = f21924l.keySet().iterator();
            while (it2.hasNext()) {
                Map<String, WeakReference<?>> map2 = f21924l.get(it2.next());
                if (map2 != null) {
                    map2.remove(str);
                }
            }
        } catch (Throwable th) {
            com.byazt.lf.k.hp().hp("in_map_error", th);
        }
    }

    public static <T> void jx(String str, T t2, Class cls) {
        if (t2 == null || cls == null || str == null) {
            return;
        }
        Map<Class, Map> map = jx;
        Map map2 = map.get(cls);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(cls, map2);
        }
        map2.put(str, t2);
    }

    public static <T> T hp(String str, Class<T> cls) {
        Map map;
        if (cls == null || str == null || (map = hp.get(cls)) == null) {
            return null;
        }
        return (T) map.get(str);
    }
}
