package com.byazt.ymw;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 68, 65})
/* loaded from: classes3.dex */
public class vv {
    public static final Map<com.byazt.yb.jx, Object> hp = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f28120l = new AtomicBoolean(false);
    public static final Object jx = new Object();

    public static boolean a(Context context) {
        return jx(context) == 6;
    }

    public static String eb(Context context) {
        int iJx = jx(context);
        return iJx != 2 ? iJx != 3 ? iJx != 4 ? iJx != 5 ? iJx != 6 ? "mobile" : "5g" : "4g" : "wifi" : "3g" : "2g";
    }

    public static boolean hp(Context context) {
        return jx(context) != 0;
    }

    public static boolean j(Context context) {
        return jx(context) == 4;
    }

    public static int jx(Context context) {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getRealNetworkType(60000L);
    }

    public static int l(Context context) {
        int iJx = jx(context);
        if (iJx == 1) {
            return 0;
        }
        if (iJx == 4) {
            return 1;
        }
        if (iJx == 5) {
            return 4;
        }
        if (iJx != 6) {
            return iJx;
        }
        return 6;
    }

    public static boolean w(Context context) {
        return jx(context) == 5;
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }
}
