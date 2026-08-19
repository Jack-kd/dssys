package com.sigmob.sdk.base.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.czhj.sdk.logger.SigmobLogger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36655a = "y";

    /* renamed from: b, reason: collision with root package name */
    private static final String f36656b = "com.wind.Settings";

    /* renamed from: c, reason: collision with root package name */
    private static final int f36657c = 4;

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, SharedPreferences> f36658d = new ConcurrentHashMap();

    private y() {
    }

    public static float a(Context context, String str, String str2, float f2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA != null) {
            return sharedPreferencesA.getFloat(str2, f2);
        }
        SigmobLogger.e(f36655a, "getFloat: sp is unavailable.", new Object[0]);
        return f2;
    }

    public static void b(Context context, String str, String str2, float f2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            SigmobLogger.e(f36655a, "saveFloat: sp is unavailable.", new Object[0]);
        } else {
            sharedPreferencesA.edit().putFloat(str2, f2).apply();
        }
    }

    public static int a(Context context, String str, String str2, int i2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA != null) {
            return sharedPreferencesA.getInt(str2, i2);
        }
        SigmobLogger.e(f36655a, "getInt: sp is unavailable.", new Object[0]);
        return i2;
    }

    public static void b(Context context, String str, String str2, int i2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            SigmobLogger.e(f36655a, "saveInt: sp is unavailable.", new Object[0]);
        } else {
            sharedPreferencesA.edit().putInt(str2, i2).apply();
        }
    }

    public static long a(Context context, String str, String str2, long j2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA != null) {
            return sharedPreferencesA.getLong(str2, j2);
        }
        SigmobLogger.e(f36655a, "getLong: sp is unavailable.", new Object[0]);
        return j2;
    }

    public static void b(Context context, String str, String str2, long j2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            SigmobLogger.e(f36655a, "saveLong: sp is unavailable.", new Object[0]);
        } else {
            sharedPreferencesA.edit().putLong(str2, j2).apply();
        }
    }

    public static SharedPreferences a(Context context, String str) {
        if (context == null) {
            SigmobLogger.e(f36655a, "getPrefs: ctx is unavailable.", new Object[0]);
            return null;
        }
        if (s.a((CharSequence) str)) {
            str = f36656b;
        }
        Map<String, SharedPreferences> map = f36658d;
        SharedPreferences sharedPreferences = map.get(str);
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 4);
        map.put(str, sharedPreferences2);
        return sharedPreferences2;
    }

    public static void b(Context context, String str, String str2, String str3) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            SigmobLogger.e(f36655a, "saveString: sp is unavailable.", new Object[0]);
        } else {
            sharedPreferencesA.edit().putString(str2, str3).apply();
        }
    }

    public static String a(Context context, String str, String str2, String str3) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA != null) {
            return sharedPreferencesA.getString(str2, str3);
        }
        SigmobLogger.e(f36655a, "getString: sp is unavailable.", new Object[0]);
        return str3;
    }

    public static void b(Context context, String str, String str2, boolean z2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null) {
            SigmobLogger.e(f36655a, "saveBoolean: sp is unavailable.", new Object[0]);
        } else {
            sharedPreferencesA.edit().putBoolean(str2, z2).apply();
        }
    }

    public static void a(Context context, String str, Map<String, Object> map) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null || map == null || map.isEmpty()) {
            SigmobLogger.e(f36655a, "apply: sp or map is unavailable.", new Object[0]);
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                editorEdit.putString(key, (String) value);
            } else if (value instanceof Boolean) {
                editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof Integer) {
                editorEdit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                editorEdit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Float) {
                editorEdit.putFloat(key, ((Float) value).floatValue());
            }
        }
        editorEdit.apply();
    }

    public static void a(Context context, String str, Object[] objArr) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA == null || objArr == null) {
            SigmobLogger.e(f36655a, "apply: sp or pairs is unavailable.", new Object[0]);
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        for (int i2 = 0; i2 < objArr.length; i2 += 2) {
            String str2 = (String) objArr[i2];
            Object obj = objArr[i2 + 1];
            if (obj instanceof String) {
                editorEdit.putString(str2, (String) obj);
            } else if (obj instanceof Boolean) {
                editorEdit.putBoolean(str2, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                editorEdit.putInt(str2, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                editorEdit.putLong(str2, ((Long) obj).longValue());
            } else if (obj instanceof Float) {
                editorEdit.putFloat(str2, ((Float) obj).floatValue());
            }
        }
        editorEdit.apply();
    }

    public static boolean a(Context context, String str, String str2, boolean z2) {
        SharedPreferences sharedPreferencesA = a(context, str);
        if (sharedPreferencesA != null) {
            return sharedPreferencesA.getBoolean(str2, z2);
        }
        SigmobLogger.e(f36655a, "getBoolean: sp is unavailable.", new Object[0]);
        return z2;
    }
}
