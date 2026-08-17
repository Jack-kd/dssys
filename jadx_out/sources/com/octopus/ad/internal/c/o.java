package com.octopus.ad.internal.c;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes4.dex */
public class o {
    public static void a(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0)) == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Set) {
            editorEdit.remove(str);
            editorEdit.putStringSet(str, (Set) obj);
        }
        editorEdit.apply();
    }

    public static Object b(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0);
        if (sharedPreferences == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Set) {
            return sharedPreferences.getStringSet(str, (Set) obj);
        }
        return null;
    }

    public static boolean c(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0)) == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, false);
    }

    public static void d(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
        }
    }

    public static Object c(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences("octopus_group_config", 0)) == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Set) {
            return sharedPreferences.getStringSet(str, (Set) obj);
        }
        return null;
    }

    public static String b(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(str, null);
    }

    public static int b(Context context, String str, int i2) {
        return context.getSharedPreferences("octopus_sdk_config", 0).getInt(str, i2);
    }

    public static void a(Context context, String str, ArrayList<String> arrayList) {
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("octopus_sdk_config", 0).edit();
        editorEdit.putStringSet(str, new HashSet(Arrays.asList(strArr)));
        editorEdit.apply();
    }

    public static ArrayList<String> a(Context context, String str) {
        Set<String> stringSet = context.getSharedPreferences("octopus_sdk_config", 0).getStringSet(str, null);
        return stringSet != null ? new ArrayList<>(stringSet) : new ArrayList<>();
    }

    public static boolean a(Context context, String str, boolean z2) {
        SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getSharedPreferences("octopus_sdk_config", 0)) == null) ? z2 : sharedPreferences.getBoolean(str, z2);
    }

    public static void a(Context context, String str, int i2) {
        context.getSharedPreferences("octopus_sdk_config", 0).edit().putInt(str, i2).apply();
    }
}
