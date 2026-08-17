package com.anythink.china.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.kuaishou.weapon.p0.g;
import java.io.File;

/* loaded from: classes.dex */
public class b {
    public static String a() {
        try {
            File file = new File("/data/data");
            if (!file.exists()) {
                return "";
            }
            return (file.lastModified() / 1000) + ".000000000";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String b() {
        return "";
    }

    private static boolean c(Context context) {
        boolean zIsProviderEnabled = ((LocationManager) context.getApplicationContext().getSystemService("location")).isProviderEnabled("gps");
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return zIsProviderEnabled && (packageManager.checkPermission(g.f31165g, context.getPackageName()) == 0 || packageManager.checkPermission(g.f31166h, context.getPackageName()) == 0);
    }

    @SuppressLint({"MissingPermission"})
    private static String d(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            String ssid = connectionInfo == null ? "" : connectionInfo.getSSID();
            if ("<unknown ssid>".equalsIgnoreCase(ssid)) {
                ssid = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            }
            return "<unknown ssid>".equalsIgnoreCase(ssid) ? "" : ssid;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                boolean zIsProviderEnabled = ((LocationManager) context.getApplicationContext().getSystemService("location")).isProviderEnabled("gps");
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                boolean z2 = packageManager.checkPermission(g.f31165g, context.getPackageName()) == 0 || packageManager.checkPermission(g.f31166h, context.getPackageName()) == 0;
                if (!zIsProviderEnabled || !z2) {
                    return "";
                }
            }
            return d(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String[] a(PackageInfo packageInfo) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(packageInfo.lastUpdateTime);
            return new String[]{"", sb.toString()};
        } catch (Throwable unused) {
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                String subscriberId = telephonyManager.getSubscriberId();
                return subscriberId == null ? "" : subscriberId;
            }
        } catch (Throwable unused) {
        }
        return "";
    }
}
