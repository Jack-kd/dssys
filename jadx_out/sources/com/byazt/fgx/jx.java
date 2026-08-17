package com.byazt.fgx;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.pg.u;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1762, 30})
/* loaded from: classes2.dex */
public class jx {
    public static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> hp;

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized <T> void hp(String str, String str2, T t2) {
        try {
            SharedPreferences sharedPreferencesJx = jx(str);
            if (sharedPreferencesJx == null) {
                return;
            }
            if (t2.equals(jx(str, str2))) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesJx.edit();
            if (t2 instanceof Boolean) {
                editorEdit.putBoolean(str2, ((Boolean) t2).booleanValue());
            }
            if (t2 instanceof String) {
                editorEdit.putString(str2, (String) t2);
            }
            if (t2 instanceof Integer) {
                editorEdit.putInt(str2, ((Integer) t2).intValue());
            }
            if (t2 instanceof Long) {
                editorEdit.putLong(str2, ((Long) t2).longValue());
            }
            if (t2 instanceof Float) {
                editorEdit.putFloat(str2, ((Float) t2).floatValue());
            }
            editorEdit.apply();
            l(str, str2, t2);
        } catch (Throwable th) {
            throw th;
        }
    }

    private static String j(String str) {
        return TextUtils.isEmpty(str) ? "sphelper_ttopenadsdk" : str;
    }

    private static SharedPreferences jx(String str) {
        return ((u) com.byazt.ym.j.getService("kv_store_factory")).get(j(str));
    }

    private static void l(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = hp;
        if (softReference == null || softReference.get() == null) {
            hp = new SoftReference<>(new ConcurrentHashMap());
        }
        String strJ = j(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = hp.get();
        if (concurrentHashMap.get(strJ) == null) {
            concurrentHashMap.put(strJ, new HashMap());
        }
        concurrentHashMap.get(strJ).put(str2, obj);
    }

    private static void w(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = hp;
        if (softReference == null || softReference.get() == null || (map = hp.get().get(j(str))) == null) {
            return;
        }
        map.clear();
    }

    private static Object jx(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = hp;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(j(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    private static String jx(String str, String str2, String str3) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx == null ? str3 : sharedPreferencesJx.getString(str2, str3);
    }

    private static Object l(String str, String str2, String str3) {
        String strJ = j(str);
        if (!hp(strJ, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase("string")) {
            return jx(strJ, str2, null);
        }
        if (str3.equalsIgnoreCase("boolean")) {
            return Boolean.valueOf(hp(strJ, str2, false));
        }
        if (str3.equalsIgnoreCase(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL)) {
            return Integer.valueOf(hp(strJ, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(hp(strJ, str2, 0L));
        }
        if (str3.equalsIgnoreCase("float")) {
            return Float.valueOf(hp(strJ, str2, 0.0f));
        }
        if (str3.equalsIgnoreCase("string_set")) {
            return jx(strJ, str2, null);
        }
        return null;
    }

    public static String hp(String str, String str2, String str3) {
        Object objJx = jx(str, str2);
        if (objJx != null) {
            return String.valueOf(objJx);
        }
        Object objL = l(str, str2, str3);
        l(str, str2, objL);
        return String.valueOf(objL);
    }

    public static void l(String str, String str2) {
        Map<String, Object> map;
        try {
            SharedPreferences sharedPreferencesJx = jx(str);
            if (sharedPreferencesJx == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesJx.edit();
            editorEdit.remove(str2);
            editorEdit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = hp;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            String strJ = j(str);
            if (!TextUtils.isEmpty(strJ) && (map = hp.get().get(strJ)) != null && map.size() != 0) {
                map.remove(str2);
                SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference2 = hp;
                if (softReference2 == null || softReference2.get() == null) {
                    return;
                }
                hp.get().put(strJ, map);
            }
        } catch (Throwable unused) {
        }
    }

    private static int hp(String str, String str2, int i2) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx == null ? i2 : sharedPreferencesJx.getInt(str2, i2);
    }

    private static float hp(String str, String str2, float f2) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx == null ? f2 : sharedPreferencesJx.getFloat(str2, f2);
    }

    private static boolean hp(String str, String str2, boolean z2) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx == null ? z2 : sharedPreferencesJx.getBoolean(str2, z2);
    }

    private static long hp(String str, String str2, long j2) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx == null ? j2 : sharedPreferencesJx.getLong(str2, j2);
    }

    public static boolean hp(String str, String str2) {
        SharedPreferences sharedPreferencesJx = jx(str);
        return sharedPreferencesJx != null && sharedPreferencesJx.contains(str2);
    }

    public static void hp(String str) {
        SharedPreferences.Editor editorEdit = jx(str).edit();
        editorEdit.clear();
        editorEdit.apply();
        w(str);
    }

    public static Map<String, ?> l(String str) {
        return jx(str).getAll();
    }
}
