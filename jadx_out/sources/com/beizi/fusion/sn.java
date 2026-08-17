package com.beizi.fusion;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.provider.Settings;
import com.octopus.ad.ADBidEvent;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public abstract class sn {
    private static int a(Context context) {
        if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", -1) == 1) {
            return 0;
        }
        Method declaredMethod = Class.forName("com.huawei.android.os.SystemPropertiesEx").getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
        declaredMethod.setAccessible(true);
        return ((Boolean) declaredMethod.invoke(null, "hw_sc.appswitch_interceptor", Boolean.FALSE)).booleanValue() ? 1 : 0;
    }

    private static int b(Context context) {
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        Class cls = Integer.TYPE;
        Method declaredMethod = AppOpsManager.class.getDeclaredMethod("checkOpNoThrow", cls, cls, String.class);
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        if (applicationInfo != null) {
            return Integer.valueOf(declaredMethod.invoke(appOpsManager, 10049, Integer.valueOf(applicationInfo.uid), context.getPackageName()).toString()).intValue();
        }
        return -1;
    }

    public static int c(Context context) {
        String upperCase;
        try {
            upperCase = Build.BRAND.toUpperCase();
        } catch (Throwable unused) {
        }
        switch (upperCase.hashCode()) {
            case -1706170181:
                if (upperCase.equals(ADBidEvent.XIAOMI)) {
                    return b(context);
                }
                return -1;
            case 2432928:
                if (upperCase.equals("OPPO")) {
                    return e(context);
                }
                return -1;
            case 2634924:
                if (upperCase.equals(ADBidEvent.VIVO)) {
                    return f(context);
                }
                return -1;
            case 68924490:
                if (upperCase.equals("HONOR")) {
                    return d(context);
                }
                return -1;
            case 2141820391:
                if (upperCase.equals(ADBidEvent.HUAWEI)) {
                    return a(context);
                }
                return -1;
            default:
                return -1;
        }
    }

    private static int d(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "application_auto_jump_switch", -1);
    }

    private static int e(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "app_start_confirm_rus_enable", -1);
    }

    private static int f(Context context) {
        Intent intent = new Intent("com.vivo.appfilter.ACTION_APP_JUMP_PROMPT");
        intent.setPackage("com.vivo.appfilter");
        return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty() ? 1 : 0;
    }
}
