package com.fl.saas.adx.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.ProxyInfo;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import java.io.File;

/* loaded from: classes3.dex */
public class DeviceStateUtil {
    private static boolean checkSimCardAlternative(Context context) {
        String networkOperatorName;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            if (telephonyManager != null && (networkOperatorName = telephonyManager.getNetworkOperatorName()) != null) {
                if (!networkOperatorName.trim().isEmpty()) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean hasSimCard(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || (telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone")) == null) {
            return false;
        }
        try {
            int simState = telephonyManager.getSimState();
            return simState == 5 || simState != 1;
        } catch (Throwable unused) {
            return checkSimCardAlternative(context);
        }
    }

    public static boolean isDebug() {
        return false;
    }

    public static boolean isDeveloperOptionsEnabled(Context context) {
        try {
            return Settings.Global.getInt(context.getApplicationContext().getContentResolver(), "development_settings_enabled", 0) == 1;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return true;
        }
    }

    public static boolean isDeviceRooted() {
        String[] strArr = {"/system/bin/su", "/system/xbin/su", "/system/app/Superuser.apk", "/system/etc/init.d/"};
        for (int i2 = 0; i2 < 4; i2++) {
            if (new File(strArr[i2]).exists()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNetworkProxyEnabled(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        ProxyInfo defaultProxy = (connectivityManager == null || connectivityManager.getActiveNetwork() == null) ? null : connectivityManager.getDefaultProxy();
        return (defaultProxy == null || defaultProxy.getHost() == null) ? false : true;
    }

    public static boolean isVPNConnected(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                return true;
            }
        }
        return false;
    }
}
