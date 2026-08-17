package com.ubix.ssp.ad.e.a0.d0;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
final class b {
    public static <T> ArrayList<T> a(T... tArr) {
        if (tArr == null || tArr.length == 0) {
            return null;
        }
        ArrayList<T> arrayList = new ArrayList<>(tArr.length);
        for (T t2 : tArr) {
            arrayList.add(t2);
        }
        return arrayList;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean c() {
        return true;
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean b(Context context) {
        if (c()) {
            return Settings.System.canWrite(context);
        }
        return true;
    }

    public static boolean c(Context context) {
        b();
        return a(context, a("android.permission-group.STORAGE"));
    }

    public static boolean d(Context context) {
        if (c()) {
            return Settings.canDrawOverlays(context);
        }
        return true;
    }

    public static boolean a(Context context) {
        if (d()) {
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    public static boolean a(Context context, String str) {
        if (!c()) {
            return true;
        }
        if ("android.permission.MANAGE_EXTERNAL_STORAGE".equals(str)) {
            return c(context);
        }
        if ("android.permission.REQUEST_INSTALL_PACKAGES".equals(str)) {
            return a(context);
        }
        if ("android.permission.SYSTEM_ALERT_WINDOW".equals(str)) {
            return d(context);
        }
        if ("android.permission.WRITE_SETTINGS".equals(str)) {
            return b(context);
        }
        if (!a()) {
            if ("android.permission.ACCESS_BACKGROUND_LOCATION".equals(str)) {
                return context.checkSelfPermission(g.f31165g) == 0;
            }
            if ("android.permission.ACTIVITY_RECOGNITION".equals(str)) {
                return context.checkSelfPermission("android.permission.BODY_SENSORS") == 0;
            }
            if ("android.permission.ACCESS_MEDIA_LOCATION".equals(str)) {
                return true;
            }
        }
        if (!e() && "android.permission.ACCEPT_HANDOVER".equals(str)) {
            return true;
        }
        if (!d()) {
            if ("android.permission.ANSWER_PHONE_CALLS".equals(str)) {
                return true;
            }
            if ("android.permission.READ_PHONE_NUMBERS".equals(str)) {
                return context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0;
            }
        }
        return context.checkSelfPermission(str) == 0;
    }

    public static boolean a(Context context, List<String> list) {
        if (!c()) {
            return true;
        }
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!a(context, it.next())) {
                return false;
            }
        }
        return true;
    }
}
