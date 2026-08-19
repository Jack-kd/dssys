package com.byazt.ktd;

import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 28})
/* loaded from: classes.dex */
public final class hp {
    public static volatile long hp;

    /* renamed from: j, reason: collision with root package name */
    public static final Map<String, l<JSONArray>> f22144j;
    public static final Map<String, l<C0298hp>> jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile long f22145l;

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 170})
    /* renamed from: com.byazt.ktd.hp$hp, reason: collision with other inner class name */
    public static final class C0298hp {

        /* renamed from: a, reason: collision with root package name */
        public String f22146a;
        public final String eb;
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final Boolean f22147j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f22148l;

        /* renamed from: w, reason: collision with root package name */
        public JSONArray f22149w;

        public C0298hp(String str, String str2, String str3, Boolean bool, JSONArray jSONArray, String str4, String str5) {
            this.hp = TextUtils.isEmpty(str) ? " " : str;
            this.f22148l = TextUtils.isEmpty(str2) ? " " : str2;
            this.jx = TextUtils.isEmpty(str3) ? " " : str3;
            this.f22147j = bool;
            this.f22149w = jSONArray;
            this.f22146a = TextUtils.isEmpty(str4) ? " " : str4;
            this.eb = TextUtils.isEmpty(str5) ? " " : str5;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 255})
    public static final class l<T> {
        public final T hp;

        /* renamed from: l, reason: collision with root package name */
        public final long f22150l;

        public l(T t2, long j2) {
            this.hp = t2;
            this.f22150l = j2;
        }
    }

    static {
        int i2 = 16;
        float f2 = 0.75f;
        boolean z2 = false;
        jx = Collections.synchronizedMap(new LinkedHashMap<String, l<C0298hp>>(i2, f2, z2) { // from class: com.byazt.ktd.hp.1
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<String, l<C0298hp>> entry) {
                return size() > 256;
            }
        });
        f22144j = Collections.synchronizedMap(new LinkedHashMap<String, l<JSONArray>>(i2, f2, z2) { // from class: com.byazt.ktd.hp.2
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<String, l<JSONArray>> entry) {
                return size() > 256;
            }
        });
    }

    public static void hp(String str, C0298hp c0298hp) {
        if (str == null || c0298hp == null) {
            return;
        }
        jx.put(str, new l<>(c0298hp, hp()));
        l();
    }

    public static JSONArray jx(String str) {
        l<JSONArray> lVarRemove;
        if (str == null || (lVarRemove = f22144j.remove(str)) == null || hp(lVarRemove.f22150l, 600000L)) {
            return null;
        }
        return lVarRemove.hp;
    }

    public static C0298hp l(String str) {
        Map<String, l<C0298hp>> map;
        l<C0298hp> lVar;
        if (str == null || (lVar = (map = jx).get(str)) == null) {
            return null;
        }
        if (!hp(lVar.f22150l, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)) {
            return lVar.hp;
        }
        map.remove(str);
        return null;
    }

    public static C0298hp hp(String str) {
        l<C0298hp> lVarRemove;
        if (str == null || (lVarRemove = jx.remove(str)) == null || hp(lVarRemove.f22150l, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)) {
            return null;
        }
        return lVarRemove.hp;
    }

    private static void jx() {
        long jHp = hp();
        if (jHp - f22145l < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            return;
        }
        f22145l = jHp;
        hp(f22144j, 600000L, jHp);
    }

    private static void l() {
        long jHp = hp();
        if (jHp - hp < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            return;
        }
        hp = jHp;
        hp(jx, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, jHp);
    }

    public static void hp(String str, JSONArray jSONArray, String str2) {
        if (str == null) {
            return;
        }
        Map<String, l<C0298hp>> map = jx;
        synchronized (map) {
            try {
                l<C0298hp> lVar = map.get(str);
                if (lVar == null) {
                    return;
                }
                if (hp(lVar.f22150l, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)) {
                    map.remove(str);
                    return;
                }
                C0298hp c0298hp = lVar.hp;
                if (c0298hp == null) {
                    return;
                }
                c0298hp.f22149w = jSONArray;
                if (TextUtils.isEmpty(str2)) {
                    str2 = " ";
                }
                c0298hp.f22146a = str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(String str, JSONArray jSONArray) {
        if (str == null || jSONArray == null) {
            return;
        }
        f22144j.put(str, new l<>(jSONArray, hp()));
        jx();
    }

    private static long hp() {
        return System.currentTimeMillis();
    }

    private static boolean hp(long j2, long j3) {
        return j3 > 0 && hp() - j2 >= j3;
    }

    private static <T> void hp(Map<String, l<T>> map, long j2, long j3) {
        if (j2 <= 0) {
            return;
        }
        synchronized (map) {
            try {
                Iterator<Map.Entry<String, l<T>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    l<T> value = it.next().getValue();
                    if (value == null || j3 - value.f22150l >= j2) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
