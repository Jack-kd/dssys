package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.logger.SigmobLog;

/* loaded from: classes3.dex */
public class AppPackageUtil {

    /* renamed from: a, reason: collision with root package name */
    private static String f29426a;

    /* renamed from: b, reason: collision with root package name */
    private static String f29427b;

    /* renamed from: c, reason: collision with root package name */
    private static PackageInfo f29428c;

    /* renamed from: d, reason: collision with root package name */
    private static String f29429d;

    /* renamed from: e, reason: collision with root package name */
    private static int f29430e;

    /* renamed from: f, reason: collision with root package name */
    private static int f29431f;

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        if (!TextUtils.isEmpty(f29429d)) {
            return f29429d;
        }
        try {
            if (context.getApplicationInfo() != null) {
                f29429d = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return f29429d;
    }

    public static String getAppPackageName(Context context) {
        if (context == null) {
            return null;
        }
        if (!TextUtils.isEmpty(f29426a)) {
            return f29426a;
        }
        String packageName = context.getPackageName();
        f29426a = packageName;
        return packageName;
    }

    public static String getAppVersionFromContext(Context context) {
        if (!TextUtils.isEmpty(f29427b)) {
            return f29427b;
        }
        try {
            PackageInfo packageInfo = getPackageInfo(context);
            if (packageInfo != null) {
                f29427b = packageInfo.versionName;
            }
            return f29427b;
        } catch (Throwable unused) {
            SigmobLog.d("Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    public static int getHWID(Context context) {
        int i2 = f29430e;
        if (i2 != 0) {
            return i2;
        }
        if (RomUtils.isHuawei()) {
            try {
                f29430e = getPackageVersionCode(context, "com.huawei.hwid");
            } catch (Throwable unused) {
            }
        } else {
            f29430e = -1;
        }
        return f29430e;
    }

    public static int getOsMarket(Context context) {
        int packageVersionCode;
        int i2 = f29431f;
        if (i2 != 0) {
            return i2;
        }
        RomUtils.RomInfo romInfo = RomUtils.getRomInfo();
        if (romInfo != null) {
            String osMarket = romInfo.getOsMarket();
            if (!TextUtils.isEmpty(osMarket) && (packageVersionCode = getPackageVersionCode(context, osMarket)) != -1) {
                f29431f = packageVersionCode;
            }
        }
        return f29431f;
    }

    public static PackageInfo getPackageInfo(Context context) {
        if (f29428c == null) {
            PackageManager packageManager = getPackageManager(context);
            String appPackageName = getAppPackageName(context);
            if (packageManager == null || appPackageName == null) {
                return null;
            }
            try {
                f29428c = packageManager.getPackageInfo(appPackageName, 0);
            } catch (Throwable unused) {
            }
        }
        return f29428c;
    }

    public static PackageManager getPackageManager(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageManager();
    }

    public static int getPackageVersionCode(Context context, String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1;
        }
    }
}
