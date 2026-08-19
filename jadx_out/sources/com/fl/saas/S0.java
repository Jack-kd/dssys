package com.fl.saas;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class S0 {

    /* renamed from: a, reason: collision with root package name */
    private static S0 f30051a;

    /* renamed from: b, reason: collision with root package name */
    private static SharedPreferences f30052b;

    /* renamed from: c, reason: collision with root package name */
    private static SharedPreferences.Editor f30053c;

    /* renamed from: f, reason: collision with root package name */
    private static Context f30056f;

    /* renamed from: d, reason: collision with root package name */
    private static final Set f30054d = new HashSet(0);

    /* renamed from: e, reason: collision with root package name */
    private static String f30055e = "FL_SP";

    /* renamed from: g, reason: collision with root package name */
    public static String f30057g = "APP_DATE";

    /* renamed from: h, reason: collision with root package name */
    public static String f30058h = "app_list_cache";

    private S0() {
        this("FL_SP");
    }

    public Object a(String str, Object obj) {
        SharedPreferences sharedPreferences = f30052b;
        if (sharedPreferences == null) {
            return obj;
        }
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        return null;
    }

    public long b(String str) {
        return a(str, 0L);
    }

    public String c(String str) {
        return a(str, "");
    }

    private S0(String str) {
        f30055e = str;
    }

    public boolean a(String str, boolean z2) {
        SharedPreferences sharedPreferences = f30052b;
        return sharedPreferences == null ? z2 : sharedPreferences.getBoolean(str, z2);
    }

    public S0 b(String str, Object obj) {
        String string;
        SharedPreferences.Editor editor = f30053c;
        if (editor == null) {
            return f30051a;
        }
        if (!(obj instanceof String)) {
            if (obj instanceof Integer) {
                editor.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editor.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Long) {
                editor.putLong(str, ((Long) obj).longValue());
            } else {
                string = obj.toString();
            }
            f30053c.apply();
            return f30051a;
        }
        string = (String) obj;
        editor.putString(str, string);
        f30053c.apply();
        return f30051a;
    }

    public static S0 a() {
        if (f30051a == null || !f30055e.equals("FL_SP")) {
            synchronized (S0.class) {
                f30051a = new S0();
            }
        }
        return f30051a;
    }

    public S0 b(String str, int i2) {
        SharedPreferences.Editor editor = f30053c;
        if (editor == null) {
            return this;
        }
        editor.putInt(str, i2).apply();
        return this;
    }

    public int a(String str) {
        return a(str, 0);
    }

    public S0 b(String str, long j2) {
        SharedPreferences.Editor editor = f30053c;
        if (editor == null) {
            return f30051a;
        }
        editor.putLong(str, j2).apply();
        return f30051a;
    }

    public int a(String str, int i2) {
        SharedPreferences sharedPreferences = f30052b;
        return sharedPreferences == null ? i2 : sharedPreferences.getInt(str, i2);
    }

    public S0 b(String str, String str2) {
        SharedPreferences.Editor editor = f30053c;
        if (editor != null) {
            editor.putString(str, str2).apply();
        }
        return f30051a;
    }

    public long a(String str, long j2) {
        SharedPreferences sharedPreferences = f30052b;
        return sharedPreferences == null ? j2 : sharedPreferences.getLong(str, j2);
    }

    public String a(String str, String str2) {
        SharedPreferences sharedPreferences = f30052b;
        return sharedPreferences != null ? sharedPreferences.getString(str, str2) : "";
    }

    public void a(Context context) {
        a(context, "FL_SP");
    }

    public void a(Context context, String str) {
        f30056f = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f30055e, 0);
        f30052b = sharedPreferences;
        f30053c = sharedPreferences.edit();
        if (f30051a != null && str.equals(f30055e)) {
            return;
        }
        S0 s02 = new S0(str);
        f30051a = s02;
    }
}
