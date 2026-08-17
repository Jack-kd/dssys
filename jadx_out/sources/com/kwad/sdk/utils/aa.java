package com.kwad.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public final class aa {
    private static long mLastCallTime;
    private static long packageInfoLimiter;
    private static HashMap<String, PackageInfo> sPackageInfoHashMap;
    public static String[] requestedPermissions = new String[0];
    public static AtomicBoolean mHasInit = new AtomicBoolean(false);

    @RequiresApi(api = 26)
    public static boolean dh(Context context) {
        try {
            init(context);
            return context.getPackageManager().canRequestPackageInstalls();
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return false;
        }
    }

    @Nullable
    public static String[] di(Context context) {
        String[] strArr = requestedPermissions;
        if (strArr != null && strArr.length > 0) {
            return strArr;
        }
        try {
            PackageInfo packageInfo = getPackageInfo(context, context.getPackageName(), 4096);
            if (packageInfo == null) {
                return null;
            }
            String[] strArr2 = packageInfo.requestedPermissions;
            requestedPermissions = strArr2;
            return strArr2;
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return null;
        }
    }

    public static PackageInfo getPackageInfo(Context context, String str, int i2) {
        HashMap<String, PackageInfo> map;
        PackageInfo packageInfo;
        try {
            init(context);
            map = sPackageInfoHashMap;
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
        if (map != null && map.containsKey(str)) {
            return sPackageInfoHashMap.get(str);
        }
        if (shouldCall()) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str, i2);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            HashMap<String, PackageInfo> map2 = sPackageInfoHashMap;
            if (map2 != null) {
                map2.put(str, packageInfo);
            }
            return packageInfo;
        }
        return null;
    }

    public static PackageInfo getPackageInfoNoCache(Context context, String str, int i2) {
        PackageInfo packageInfo;
        try {
            init(context);
            if (shouldCall()) {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfo = null;
                }
                HashMap<String, PackageInfo> map = sPackageInfoHashMap;
                if (map != null) {
                    map.put(str, packageInfo);
                }
                return packageInfo;
            }
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
        return null;
    }

    private static void init(Context context) {
        if (mHasInit.compareAndSet(false, true)) {
            long j2 = context.getSharedPreferences("ksadsdk_config", 0).getLong("packageInfoLimiter", 0L);
            packageInfoLimiter = j2;
            if (j2 > 0) {
                sPackageInfoHashMap = new HashMap<>();
            }
        }
    }

    private static synchronized boolean shouldCall() {
        if (packageInfoLimiter <= 0) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - mLastCallTime <= packageInfoLimiter) {
            return false;
        }
        mLastCallTime = jCurrentTimeMillis;
        return true;
    }
}
