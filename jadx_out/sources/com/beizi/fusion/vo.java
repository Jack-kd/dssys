package com.beizi.fusion;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.beizi.fusion.tool.PackageUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.NetworkInterface;
import java.util.Calendar;
import java.util.Enumeration;

/* loaded from: classes2.dex */
public abstract class vo {
    public static boolean a(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || str == null || str.isEmpty()) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static long b(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.firstInstallTime;
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static void c(String str) {
    }

    public static String d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageName();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static float e(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float f(Context context) {
        return b(context, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static int g(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public static float h(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static float i(Context context) {
        float f2 = context.getResources().getDisplayMetrics().density;
        float f3 = context.getResources().getDisplayMetrics().widthPixels;
        if (f2 <= 0.0f) {
            f2 = 1.0f;
        }
        return (f3 / f2) + 0.5f;
    }

    public static int j(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static int k(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String l(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean m(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean n(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean o(android.content.Context r6) {
        /*
            r0 = 1
            java.lang.String r1 = "activity"
            java.lang.Object r1 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L9a
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Throwable -> L9a
            java.lang.Class<android.app.ActivityManager> r2 = android.app.ActivityManager.class
            java.lang.String r3 = com.beizi.fusion.tg.b()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r4 = "alE/Wd6TQF6QDt5MOuPgTJhj5qydYaJMv1s3ioRo108="
            java.lang.String r3 = com.beizi.fusion.j2.a(r3, r4)     // Catch: java.lang.Throwable -> L9a
            r4 = 0
            java.lang.reflect.Method r2 = r2.getMethod(r3, r4)     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r1 = r2.invoke(r1, r4)     // Catch: java.lang.Throwable -> L9a
            boolean r2 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L9a
            if (r2 == 0) goto L9c
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L9a
            android.content.pm.ApplicationInfo r6 = r6.getApplicationInfo()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r6 = r6.packageName     // Catch: java.lang.Throwable -> L9a
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L9a
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L9a
            if (r2 == 0) goto L9c
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L9a
            java.lang.Class r2 = r1.getClass()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r3 = com.beizi.fusion.tg.b()     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "HmbXL1RJ0QhOMpVM8sDB4g=="
            java.lang.String r3 = com.beizi.fusion.j2.a(r3, r4)     // Catch: java.lang.Throwable -> L58
            java.lang.reflect.Field r3 = r2.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L58
            r3.setAccessible(r0)     // Catch: java.lang.Throwable -> L58
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L58
            if (r3 == 0) goto L5a
            boolean r6 = r3.equals(r6)     // Catch: java.lang.Throwable -> L58
            goto L60
        L58:
            r6 = move-exception
            goto L5c
        L5a:
            r6 = r0
            goto L60
        L5c:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L9a
            goto L5a
        L60:
            r3 = 0
            java.lang.String r4 = com.beizi.fusion.tg.b()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r5 = "Qw020bKiuI4Tpk03J/klVA=="
            java.lang.String r4 = com.beizi.fusion.j2.a(r4, r5)     // Catch: java.lang.Throwable -> L8b
            java.lang.reflect.Field r2 = r2.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L8b
            r2.setAccessible(r0)     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r1 = r2.get(r1)     // Catch: java.lang.Throwable -> L8b
            boolean r2 = r1 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L8b
            if (r2 == 0) goto L8d
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L8b
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L8b
            r2 = 100
            if (r1 == r2) goto L8d
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 != r2) goto L89
            goto L8d
        L89:
            r1 = r3
            goto L93
        L8b:
            r1 = move-exception
            goto L8f
        L8d:
            r1 = r0
            goto L93
        L8f:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L9a
            goto L8d
        L93:
            if (r6 == 0) goto L98
            if (r1 == 0) goto L98
            goto L99
        L98:
            r0 = r3
        L99:
            return r0
        L9a:
            r6 = move-exception
            goto L9d
        L9c:
            return r0
        L9d:
            r6.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.vo.o(android.content.Context):boolean");
    }

    public static boolean p(Context context) {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long c(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.lastUpdateTime;
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long a() {
        Long lValueOf = 0L;
        switch (Calendar.getInstance().get(7)) {
            case 1:
            case 2:
            case 4:
            case 6:
                lValueOf = Long.valueOf(System.currentTimeMillis() / 1000);
                break;
            case 3:
            case 5:
            case 7:
                lValueOf = Long.valueOf(System.currentTimeMillis());
                break;
        }
        return lValueOf.longValue();
    }

    public static String b() {
        return (new File("/system/bin/su").exists() && b("/system/bin/su")) ? "yes" : (new File("/system/xbin/su").exists() && b("/system/xbin/su")) ? "yes" : "no";
    }

    public static boolean c() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("tun0".equals(networkInterfaceNextElement.getName()) || "ppp0".equals(networkInterfaceNextElement.getName())) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean b(String str) {
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("ls -l " + str);
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line != null && line.length() >= 4) {
                char cCharAt = line.charAt(3);
                if (cCharAt == 's' || cCharAt == 'x') {
                    processExec.destroy();
                    return true;
                }
            }
        } catch (IOException unused) {
            if (processExec == null) {
                return false;
            }
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
        processExec.destroy();
        return false;
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean a(String str) throws ClassNotFoundException {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void a(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public static Long a(Context context) {
        if (context == null) {
            return 0L;
        }
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return Long.valueOf(packageInfo.lastUpdateTime);
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    public static int b(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
