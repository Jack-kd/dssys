package com.smartdigimkt.g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import com.kuaishou.weapon.p0.g;

/* loaded from: classes5.dex */
public abstract class b {
    public static String[] a(PackageInfo packageInfo) {
        try {
            return new String[]{"", "" + packageInfo.lastUpdateTime};
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 28) {
                return a(context);
            }
            boolean zIsProviderEnabled = ((LocationManager) context.getApplicationContext().getSystemService("location")).isProviderEnabled("gps");
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (zIsProviderEnabled && (packageManager.checkPermission(g.f31165g, context.getPackageName()) == 0 || packageManager.checkPermission(g.f31166h, context.getPackageName()) == 0)) ? a(context) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(Context context) {
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
}
