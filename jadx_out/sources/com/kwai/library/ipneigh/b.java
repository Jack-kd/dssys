package com.kwai.library.ipneigh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
final class b {
    private static final Pattern bvm = Pattern.compile("^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$");

    @SuppressLint({"DefaultLocale"})
    public static String gs(int i2) {
        return String.format("%d.%d.%d.%d", Integer.valueOf(i2 & 255), Integer.valueOf((i2 >> 8) & 255), Integer.valueOf((i2 >> 16) & 255), Integer.valueOf((i2 >> 24) & 255));
    }

    private static boolean iP(String str) {
        if (str == null) {
            return false;
        }
        return bvm.matcher(str).matches();
    }

    public static String iQ(String str) {
        if (str == null) {
            return "";
        }
        String[] strArrSplit = str.split("\\s+");
        return (strArrSplit.length >= 5 && iP(strArrSplit[4])) ? strArrSplit[4] : "";
    }

    public static boolean isWifiConnected(Context context) {
        try {
            NetworkInfo networkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getNetworkInfo(1);
            if (networkInfo != null) {
                if (networkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
