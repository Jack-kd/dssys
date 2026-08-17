package com.byazt.kw;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.byazt.ms.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 756, 150})
/* loaded from: classes.dex */
public final class q {

    @com.byazt.kj.hp(hp = {0, 1, 756, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ACCURATE_START})
    /* renamed from: com.byazt.kw.q$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[l.EnumC0314l.values().length];
            hp = iArr;
            try {
                iArr[l.EnumC0314l.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[l.EnumC0314l.MOBILE_2G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[l.EnumC0314l.MOBILE_3G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[l.EnumC0314l.MOBILE_4G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[l.EnumC0314l.MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static String hp(Context context) {
        return hp(jx(context));
    }

    private static l.EnumC0314l jx(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return l.EnumC0314l.NONE;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return l.EnumC0314l.WIFI;
                }
                if (type != 0) {
                    return l.EnumC0314l.MOBILE;
                }
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return l.EnumC0314l.MOBILE_3G;
                    case 4:
                    case 7:
                    case 11:
                    default:
                        return l.EnumC0314l.MOBILE;
                    case 13:
                        return l.EnumC0314l.MOBILE_4G;
                }
            }
            return l.EnumC0314l.NONE;
        } catch (Throwable unused) {
            return l.EnumC0314l.MOBILE;
        }
    }

    public static boolean l(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                if (activeNetworkInfo.isAvailable()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static String hp(l.EnumC0314l enumC0314l) {
        try {
            int i2 = AnonymousClass1.hp[enumC0314l.ordinal()];
            return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "" : "mobile" : "4g" : "3g" : "2g" : "wifi";
        } catch (Exception unused) {
            return "";
        }
    }
}
