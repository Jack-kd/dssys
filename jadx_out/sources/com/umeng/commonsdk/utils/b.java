package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap<String, PackageInfo> f50451a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private static Object f50452b = new Object();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final b f50453a = new b();

        private a() {
        }
    }

    public static b a() {
        return a.f50453a;
    }

    private b() {
    }

    public PackageInfo a(Context context, String str, int i2) {
        PackageInfo packageInfo;
        synchronized (f50452b) {
            try {
                if (f50451a.containsKey(str)) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg： " + str + ", pkgInfo缓存命中，直接返回");
                    packageInfo = f50451a.get(str);
                } else {
                    try {
                        packageInfo = context.getPackageManager().getPackageInfo(str, i2);
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg： " + str + ", 获取pkgInfo并缓存");
                        f50451a.put(str, packageInfo);
                    } catch (PackageManager.NameNotFoundException unused) {
                        f50451a.put(str, null);
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg: " + str + "，目标包未安装。");
                        packageInfo = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return packageInfo;
    }
}
