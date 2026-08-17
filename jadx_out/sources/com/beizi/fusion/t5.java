package com.beizi.fusion;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class t5 {
    public static void a(Context context, String str, String str2, boolean z2) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str2) || (sharedPreferences = context.getSharedPreferences(str, 0)) == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(str2, z2);
        editorEdit.apply();
    }

    public static void b(Context context, String str, String str2, String str3) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str2) || (sharedPreferences = context.getSharedPreferences(str, 0)) == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str2, str3);
        editorEdit.apply();
    }

    public static Set c(Context context, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getStringSet(str2, null);
        }
        return null;
    }

    public static boolean a(Context context, String str, String str2, Set set) {
        SharedPreferences sharedPreferences;
        if (context == null || set == null || TextUtils.isEmpty(str2) || (sharedPreferences = context.getSharedPreferences(str, 0)) == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.remove(str2);
        editorEdit.putStringSet(str2, new HashSet(set));
        return editorEdit.commit();
    }

    public static void b(Context context, String str, String str2, long j2) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str2) || (sharedPreferences = context.getSharedPreferences(str, 0)) == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong(str2, j2);
        editorEdit.apply();
    }

    public static boolean b(Context context, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str2, false);
        }
        return false;
    }

    public static Map a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getAll();
        }
        return null;
    }

    public static String a(Context context, String str, String str2, String str3) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        return sharedPreferences != null ? sharedPreferences.getString(str2, str3) : str3;
    }

    public static long a(Context context, String str, String str2, long j2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        return sharedPreferences != null ? sharedPreferences.getLong(str2, j2) : j2;
    }

    public static boolean a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str2) || (sharedPreferences = context.getSharedPreferences(str, 0)) == null) {
            return false;
        }
        return sharedPreferences.contains(str2);
    }

    public static String a() {
        return "scope_com";
    }

    public static String a(String str) {
        return String.format("scope_basic_%s", str);
    }
}
