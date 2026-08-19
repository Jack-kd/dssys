package com.sigmob.sdk.base.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.czhj.sdk.common.mta.PointEntitySuper;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.AppInfo;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.windad.WindAdError;

/* renamed from: com.sigmob.sdk.base.common.f, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1254f {

    /* renamed from: a, reason: collision with root package name */
    private static Boolean f35872a;

    public static String[] a() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        try {
            return contextE.getPackageManager().getPackageInfo(contextE.getPackageName(), 4096).requestedPermissions;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static WindAdError b() {
        Context contextE = com.sigmob.sdk.b.e();
        try {
            SigmobLog.d("checkActivity: " + AdActivity.class.getName());
            contextE.getPackageManager().getActivityInfo(new ComponentName(contextE, (Class<?>) AdActivity.class), 128);
        } catch (PackageManager.NameNotFoundException e2) {
            SigmobLog.e("checkActivity: " + e2.getMessage());
            return WindAdError.ERROR_LOAD_FILTER_FOR_ACTIVITY_ERROR;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (!Ad.class.getName().endsWith("base.models.rtb.Ad")) {
                SigmobLog.e("checkProguard Ad: " + Ad.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (!MaterialMeta.class.getName().endsWith("base.models.rtb.MaterialMeta")) {
                SigmobLog.e("checkProguard Strategy: " + MaterialMeta.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (!AppInfo.class.getName().endsWith("base.models.AppInfo")) {
                SigmobLog.e("checkProguard AppInfo: " + AppInfo.class.getName());
                return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
            }
            if (PointEntitySuper.class.getName().endsWith("common.mta.PointEntitySuper")) {
                return null;
            }
            SigmobLog.e("checkProguard PointCategory: " + PointEntitySuper.class.getName());
            return WindAdError.ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR;
        } catch (Throwable th2) {
            SigmobLog.e("checkProguard: " + th2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0093, code lost:
    
        r4 = r1.getPackageManager().getProviderInfo(new android.content.ComponentName(r1, r8.name), 128).metaData;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a6, code lost:
    
        if (r4 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a8, code lost:
    
        r4 = r4.getInt("android.support.FILE_PROVIDER_PATHS");
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0052 A[Catch: all -> 0x000d, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:23:0x004c, B:25:0x0052, B:28:0x005a, B:30:0x005f, B:32:0x0071, B:34:0x0075, B:37:0x007c, B:39:0x0093, B:41:0x00a8, B:49:0x00cf, B:52:0x00d7, B:67:0x0134, B:46:0x00b4, B:22:0x0034, B:13:0x0013, B:15:0x0021, B:17:0x0025), top: B:79:0x0003, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a A[Catch: all -> 0x000d, TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:23:0x004c, B:25:0x0052, B:28:0x005a, B:30:0x005f, B:32:0x0071, B:34:0x0075, B:37:0x007c, B:39:0x0093, B:41:0x00a8, B:49:0x00cf, B:52:0x00d7, B:67:0x0134, B:46:0x00b4, B:22:0x0034, B:13:0x0013, B:15:0x0021, B:17:0x0025), top: B:79:0x0003, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean c() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.common.C1254f.c():boolean");
    }

    public static boolean d() {
        String[] strArrA = a();
        if (strArrA == null) {
            return false;
        }
        for (String str : strArrA) {
            if (str.equals("android.permission.QUERY_ALL_PACKAGES")) {
                return true;
            }
        }
        return false;
    }
}
