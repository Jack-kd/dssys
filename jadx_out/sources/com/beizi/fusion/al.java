package com.beizi.fusion;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class al {
    public static String a(Context context, String str) throws PackageManager.NameNotFoundException {
        int i2;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return "";
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return (packageInfo == null || (i2 = packageInfo.versionCode) == 0) ? "" : String.valueOf(i2);
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String b(Context context, String str) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                if (packageInfo != null) {
                    String str2 = packageInfo.versionName;
                    if (str2 != null) {
                        return str2;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return "";
    }

    public static String c(Context context) {
        PackageManager packageManager;
        if (context != null && (packageManager = context.getPackageManager()) != null) {
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0)).toString();
            } catch (PackageManager.NameNotFoundException e2) {
                rm.a(e2);
            }
        }
        return "";
    }

    public static String d(Context context) {
        return e(context);
    }

    public static String e(Context context) {
        PackageInfo packageInfoA = a.a().a(context);
        return packageInfoA != null ? packageInfoA.versionName : "";
    }

    public static long b(Context context) {
        PackageInfo packageInfoA = a.a().a(context);
        if (packageInfoA != null) {
            return packageInfoA.lastUpdateTime;
        }
        return 0L;
    }

    public static class a {

        /* renamed from: b, reason: collision with root package name */
        private static volatile a f12651b;

        /* renamed from: a, reason: collision with root package name */
        private volatile PackageInfo f12652a;

        private a() {
        }

        public static a a() {
            if (f12651b == null) {
                synchronized (a.class) {
                    try {
                        if (f12651b == null) {
                            f12651b = new a();
                        }
                    } finally {
                    }
                }
            }
            return f12651b;
        }

        public PackageInfo a(Context context) {
            if (this.f12652a == null) {
                synchronized (a.class) {
                    if (this.f12652a == null) {
                        try {
                            this.f12652a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                        } catch (PackageManager.NameNotFoundException unused) {
                            this.f12652a = null;
                        }
                    }
                }
            }
            return this.f12652a;
        }
    }

    public static long a(Context context) {
        PackageInfo packageInfoA = a.a().a(context);
        if (packageInfoA != null) {
            return packageInfoA.firstInstallTime;
        }
        return 0L;
    }

    public static boolean c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    if (packageManager.getPackageInfo(str, 0) != null) {
                        return true;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }
}
