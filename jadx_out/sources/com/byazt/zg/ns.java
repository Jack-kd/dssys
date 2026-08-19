package com.byazt.zg;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

@com.byazt.kj.hp(hp = {0, 1, 308, 166})
/* loaded from: classes3.dex */
public class ns {
    private static int hp(int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = 2;
        if (i2 != 2) {
            i3 = 3;
            if (i2 != 3) {
                if (i2 == 4) {
                    return 1;
                }
                if (i2 == 5) {
                    return 4;
                }
                if (i2 != 6) {
                    return i2;
                }
                return 5;
            }
        }
        return i3;
    }

    public static String jx() {
        return l(com.byazt.di.hp.jl().ns().jx() ? com.byazt.zn.ns.hp() : 0);
    }

    public static int l() {
        return hp(com.byazt.di.hp.jl().ns().jx() ? com.byazt.zn.ns.hp() : 0);
    }

    public static String hp() {
        return ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid();
    }

    public static boolean hp(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean jx(Context context) {
        return com.byazt.ymw.vv.jx(context) == 2;
    }

    private static String l(int i2) {
        if (i2 == 0) {
            return "unknown";
        }
        if (i2 == 2) {
            return "2g";
        }
        if (i2 == 3) {
            return "3g";
        }
        if (i2 == 4) {
            return "wifi";
        }
        if (i2 == 5) {
            return "4g";
        }
        if (i2 != 6) {
            return "mobile";
        }
        return "5g";
    }

    public static boolean l(Context context) {
        return com.byazt.ymw.vv.jx(context) == 3;
    }
}
