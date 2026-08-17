package com.beizi.fusion;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.pu.TTDownloadField;
import com.umeng.analytics.pro.bv;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public abstract class b7 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final s6 f13072a;

        public static class a {

            /* renamed from: a, reason: collision with root package name */
            private static final b f13073a = new b();
        }

        public static b a() {
            return a.f13073a;
        }

        public String b() {
            return this.f13072a.a();
        }

        private b() {
            this.f13072a = new s6();
        }
    }

    public static String a() {
        return Build.VERSION.RELEASE;
    }

    public static int b(Context context) {
        String strC = c(context);
        if (!TextUtils.isEmpty(strC)) {
            strC = strC.toUpperCase();
        }
        y6 y6Var = y6.COUNTRY_CHINA_TYPE;
        return y6Var.c().equals(strC) ? y6Var.b() : y6.COUNTRY_OTHER_TYPE.b();
    }

    public static String c(Context context) {
        Configuration configuration;
        Locale locale;
        if (context == null) {
            return "";
        }
        try {
            if (context.getResources() == null || (configuration = context.getResources().getConfiguration()) == null) {
                return "";
            }
            LocaleList locales = configuration.getLocales();
            return (locales.isEmpty() || (locale = locales.get(0)) == null) ? "" : locale.getCountry();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getContentResolver() != null ? Build.VERSION.SDK_INT >= 25 ? Settings.Global.getString(context.getContentResolver(), bv.f48883J) : Settings.Global.getString(context.getContentResolver(), bv.f48883J) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int e(Context context) {
        return h(context) ? 101 : 100;
    }

    public static String f() {
        return Locale.getDefault().getLanguage();
    }

    public static String g() {
        return Build.MANUFACTURER;
    }

    public static boolean h(Context context) {
        Configuration configuration;
        if (context != null) {
            try {
                if (context.getResources() != null && (configuration = context.getResources().getConfiguration()) != null) {
                    if ((configuration.screenLayout & 15) >= 3) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static int i() {
        return 2;
    }

    public static String j() {
        TimeZone timeZone = TimeZone.getDefault();
        return timeZone != null ? timeZone.getDisplayName(true, 0) : "";
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static String a(Context context) {
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && 5 == telephonyManager.getSimState() && (simOperator = telephonyManager.getSimOperator()) != null) {
                int iHashCode = simOperator.hashCode();
                if (iHashCode != 49679477) {
                    switch (iHashCode) {
                        case 49679470:
                            if (simOperator.equals("46000")) {
                                return "CMCC";
                            }
                            break;
                        case 49679471:
                            if (simOperator.equals("46001")) {
                                return "CUCC";
                            }
                            break;
                        case 49679472:
                            if (simOperator.equals("46002")) {
                                return "CMCC";
                            }
                            break;
                        case 49679473:
                            if (simOperator.equals("46003")) {
                                return "CTCC";
                            }
                            break;
                    }
                } else if (simOperator.equals("46007")) {
                    return "CMCC";
                }
            }
        } catch (Throwable unused) {
        }
        return "UNKNOW";
    }

    public static String e() {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                return "0";
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return String.valueOf(statFs.getBlockSizeLong() * statFs.getBlockCountLong());
        } catch (Throwable unused) {
            return "0";
        }
    }

    private static ActivityManager.MemoryInfo f(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static String g(Context context) {
        ActivityManager.MemoryInfo memoryInfoF = f(context);
        return memoryInfoF != null ? String.valueOf(memoryInfoF.totalMem) : "";
    }

    public static String h() {
        return Build.MODEL;
    }

    public static long d() {
        try {
            return Long.max(uo.a("ro.build.date.utc", -1L), Long.max(Environment.getRootDirectory().lastModified(), Build.TIME));
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String b() {
        return Build.BRAND;
    }

    public static String c() {
        return b.a().b();
    }
}
