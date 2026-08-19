package com.kwad.sdk.utils;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.service.ServiceProvider;
import java.util.Map;
import java.util.Set;

@Deprecated
/* loaded from: classes4.dex */
public class bq {
    static final String TAG = "bq";

    public static void a(String str, String str2, int i2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        if (sharedPreferencesM63if == null) {
            return;
        }
        sharedPreferencesM63if.edit().putInt(str2, i2).apply();
    }

    public static void az(String str, String str2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        if (sharedPreferencesM63if == null) {
            return;
        }
        sharedPreferencesM63if.edit().remove(str2).apply();
    }

    public static int b(String str, String str2, int i2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        return sharedPreferencesM63if == null ? i2 : sharedPreferencesM63if.getInt(str2, i2);
    }

    public static void h(String str, String str2, String str3) {
        a(str, str2, str3, false);
    }

    public static String i(String str, String str2, String str3) {
        String string;
        try {
            SharedPreferences sharedPreferencesM63if = m63if(str);
            if (sharedPreferencesM63if != null && (string = sharedPreferencesM63if.getString(str2, str3)) != null && !TextUtils.isEmpty(string)) {
                return (TextUtils.equals(string, str3) || !com.kwad.sdk.core.a.c.isEncodeKsSdk(string)) ? string : com.kwad.sdk.core.a.c.decodeKsSdk(string);
            }
            return str3;
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
            return "";
        }
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static SharedPreferences m63if(String str) {
        try {
            return ServiceProvider.Ud().getSharedPreferences(str, 0);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return null;
        }
    }

    public static void j(String str, String str2, String str3) {
        if (com.kwad.sdk.core.a.c.isEncodeKsSdk(str)) {
            return;
        }
        h(str2, str3, com.kwad.sdk.core.a.c.encodeKsSdk(str));
    }

    public static void l(String str, String str2, boolean z2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        if (sharedPreferencesM63if == null) {
            return;
        }
        sharedPreferencesM63if.edit().putBoolean(str2, z2).apply();
    }

    public static boolean m(String str, String str2, boolean z2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        return sharedPreferencesM63if == null ? z2 : sharedPreferencesM63if.getBoolean(str2, z2);
    }

    public static void a(String str, String str2, long j2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        if (sharedPreferencesM63if == null) {
            return;
        }
        sharedPreferencesM63if.edit().putLong(str2, j2).apply();
    }

    public static long b(String str, String str2, long j2) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        return sharedPreferencesM63if == null ? j2 : sharedPreferencesM63if.getLong(str2, j2);
    }

    public static void a(String str, String str2, String str3, boolean z2) {
        try {
            SharedPreferences sharedPreferencesM63if = m63if(str);
            if (sharedPreferencesM63if == null) {
                return;
            }
            if (z2 && !com.kwad.sdk.core.a.c.isEncodeKsSdk(str3)) {
                sharedPreferencesM63if.edit().putString(str2, com.kwad.sdk.core.a.c.encodeKsSdk(str3)).apply();
            } else {
                sharedPreferencesM63if.edit().putString(str2, str3).apply();
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static <T> void a(String str, Map<String, T> map) {
        SharedPreferences sharedPreferencesM63if = m63if(str);
        if (sharedPreferencesM63if == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesM63if.edit();
        for (Map.Entry<String, T> entry : map.entrySet()) {
            try {
                a(editorEdit, entry.getKey(), entry.getValue());
            } catch (Throwable th) {
                com.kwad.sdk.core.d.c.e(TAG, Log.getStackTraceString(th));
            }
        }
        editorEdit.apply();
    }

    private static void a(SharedPreferences.Editor editor, String str, Object obj) {
        if (str != null) {
            if (obj instanceof Integer) {
                editor.putInt(str, ((Integer) obj).intValue());
                return;
            }
            if (obj instanceof Long) {
                editor.putLong(str, ((Long) obj).longValue());
                return;
            }
            if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
                return;
            }
            if (obj instanceof Float) {
                editor.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Set) {
                editor.putStringSet(str, (Set) obj);
            } else if (obj instanceof String) {
                editor.putString(str, String.valueOf(obj));
            }
        }
    }
}
