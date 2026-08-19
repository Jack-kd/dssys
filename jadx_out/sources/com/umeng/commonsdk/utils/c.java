package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.be;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static final String f50455b = "lastReqTime";

    /* renamed from: c, reason: collision with root package name */
    private static final int f50456c = 48;

    /* renamed from: d, reason: collision with root package name */
    private static final int f50457d = 1;

    /* renamed from: e, reason: collision with root package name */
    private static final int f50458e = 720;

    /* renamed from: f, reason: collision with root package name */
    private static final String f50459f = "iss";

    /* renamed from: g, reason: collision with root package name */
    private static final String f50460g = "sinr";

    /* renamed from: h, reason: collision with root package name */
    private static final String f50461h = "clean";

    /* renamed from: i, reason: collision with root package name */
    private static boolean f50462i;

    /* renamed from: j, reason: collision with root package name */
    private static int f50463j;

    /* renamed from: a, reason: collision with root package name */
    private static final String f50454a = be.b().b(be.f48823z);

    /* renamed from: k, reason: collision with root package name */
    private static Object f50464k = new Object();

    static {
        f50462i = false;
        f50463j = f50458e;
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(appContext, f50459f, "");
            if (TextUtils.isEmpty(strImprintProperty) || !"1".equals(strImprintProperty)) {
                return;
            }
            synchronized (f50464k) {
                f50462i = true;
            }
            String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(appContext, f50460g, "");
            if (TextUtils.isEmpty(strImprintProperty)) {
                f50463j = 48;
                return;
            }
            try {
                f50463j = a(Integer.parseInt(strImprintProperty2));
            } catch (Throwable unused) {
                f50463j = 48;
            }
        }
    }

    private static int a(int i2) {
        if (i2 > f50458e) {
            return f50458e;
        }
        if (i2 < 1) {
            return 1;
        }
        return i2;
    }

    public static long b(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f50454a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getLong(f50455b, 0L);
        }
        return 0L;
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f50454a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(f50461h, true).commit();
        }
    }

    public static void d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f50454a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(f50461h, false).commit();
        }
    }

    public static boolean e(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f50454a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(f50461h, false);
        }
        return false;
    }

    public static boolean a() {
        boolean z2;
        synchronized (f50464k) {
            z2 = f50462i;
        }
        return z2;
    }

    public static int a(Context context) {
        int i2;
        synchronized (f50464k) {
            i2 = f50463j;
        }
        return i2;
    }

    public static boolean a(long j2, long j3, int i2) {
        Date date = new Date(j3);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j2));
        calendar.add(10, i2);
        return date.after(calendar.getTime());
    }

    public static void a(Context context, long j2) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f50454a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong(f50455b, j2).commit();
        }
    }
}
