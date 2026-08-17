package com.byazt.oda;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f23993a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f23994b;
    public static volatile boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public static volatile long f23995d;
    public static volatile boolean di;

    /* renamed from: e, reason: collision with root package name */
    public static volatile String f23996e;
    public static volatile boolean ec;
    public static volatile String gu;
    public static String hp;
    public static volatile TelephonyManager hq;

    /* renamed from: j, reason: collision with root package name */
    public static volatile String f23997j;
    public static volatile String jl;
    public static volatile String jx;

    /* renamed from: k, reason: collision with root package name */
    public static volatile String f23998k;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f23999l;

    /* renamed from: n, reason: collision with root package name */
    public static volatile boolean f24000n;
    public static volatile boolean ns;
    public static volatile WifiInfo nu;

    /* renamed from: o, reason: collision with root package name */
    public static volatile String f24001o;

    /* renamed from: q, reason: collision with root package name */
    public static volatile String f24002q;
    public static volatile boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public static volatile boolean f24004u;
    public static volatile WifiManager ud;
    public static volatile boolean vv;
    public static volatile boolean wv;
    public static volatile boolean xs;
    public static volatile String zy;

    /* renamed from: w, reason: collision with root package name */
    public static AtomicBoolean f24006w = new AtomicBoolean(false);
    public static volatile String eb = "";

    /* renamed from: s, reason: collision with root package name */
    public static volatile boolean f24003s = true;

    /* renamed from: v, reason: collision with root package name */
    public static volatile String f24005v = null;

    private static String a(Context context) {
        if (sz) {
            return f23993a;
        }
        synchronized (jx.class) {
            try {
                if (sz) {
                    return f23993a;
                }
                if (xs) {
                    return f23999l;
                }
                TelephonyManager telephonyManagerHp = hp(context);
                if (telephonyManagerHp == null) {
                    return f23993a;
                }
                try {
                    f23993a = telephonyManagerHp.getSubscriberId();
                } catch (Throwable unused) {
                }
                sz = true;
                return f23993a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String e(com.byazt.pg.hp hpVar, Context context) {
        WifiInfo wifiInfoHp;
        if (vv) {
            return jx;
        }
        synchronized (jx.class) {
            if (vv) {
                return jx;
            }
            try {
                wifiInfoHp = hp(hpVar, context);
            } catch (Throwable unused) {
            }
            if (wifiInfoHp == null) {
                return jx;
            }
            jx = wifiInfoHp.getSSID();
            vv = true;
            return jx;
        }
    }

    public static String eb(com.byazt.pg.hp hpVar, Context context) {
        jl(hpVar, context);
        return gu;
    }

    private static String gu(com.byazt.pg.hp hpVar, Context context) {
        if (ec) {
            return f23997j;
        }
        synchronized (jx.class) {
            try {
                if (ec) {
                    return f23997j;
                }
                f23997j = jx(hpVar, context);
                ec = true;
                return f23997j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static WifiManager j(Context context) {
        if (ud != null) {
            return ud;
        }
        synchronized (jx.class) {
            try {
                if (ud != null) {
                    return ud;
                }
                ud = (WifiManager) context.getApplicationContext().getSystemService("wifi");
                return ud;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void jl(com.byazt.pg.hp hpVar, Context context) {
        String strJ;
        String simOperatorName;
        String strSubstring;
        if (cx) {
            return;
        }
        synchronized (jx.class) {
            try {
                if (cx) {
                    return;
                }
                TelephonyManager telephonyManagerHp = hp(context);
                String strSubstring2 = null;
                try {
                    strJ = telephonyManagerHp.getNetworkOperator();
                } catch (Throwable unused) {
                    strJ = null;
                }
                if (TextUtils.isEmpty(strJ) || strJ.length() < 5) {
                    strJ = j(hpVar, context);
                }
                try {
                    simOperatorName = telephonyManagerHp.getSimOperatorName();
                } catch (Throwable unused2) {
                    simOperatorName = null;
                }
                if (TextUtils.isEmpty(strJ) || strJ.length() <= 4) {
                    strSubstring = null;
                } else {
                    strSubstring2 = strJ.substring(0, 3);
                    strSubstring = strJ.substring(3);
                }
                if (!TextUtils.isEmpty(strSubstring2)) {
                    f24002q = strSubstring2;
                }
                if (!TextUtils.isEmpty(strSubstring)) {
                    gu = strSubstring;
                }
                if (!TextUtils.isEmpty(simOperatorName)) {
                    zy = simOperatorName;
                }
                try {
                    eb(context);
                } catch (Throwable unused3) {
                }
                cx = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String jx(Boolean bool, com.byazt.pg.hp hpVar, Context context) {
        if (!TextUtils.isEmpty(jx)) {
            return jx;
        }
        if (bool == null) {
            com.byazt.he.l customController = hpVar.getCustomController();
            if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
                return null;
            }
        } else {
            if (vv) {
                return jx;
            }
            if (bool.booleanValue()) {
                return null;
            }
        }
        return e(hpVar, context);
    }

    public static String l(Boolean bool, com.byazt.pg.hp hpVar, Context context) {
        if (!TextUtils.isEmpty(f23993a)) {
            return f23993a;
        }
        if (bool == null) {
            com.byazt.he.l customController = hpVar.getCustomController();
            if (customController != null && !customController.canRead(1)) {
                return null;
            }
        } else {
            if (sz || xs) {
                return f23993a;
            }
            if (!bool.booleanValue()) {
                return null;
            }
        }
        return a(context);
    }

    public static String q(com.byazt.pg.hp hpVar, Context context) {
        jl(hpVar, context);
        return zy;
    }

    public static String s(com.byazt.pg.hp hpVar, Context context) {
        jl(hpVar, context);
        return jl;
    }

    private static void w(Context context) {
        synchronized (jx.class) {
            try {
                if (f24004u) {
                    return;
                }
                if (xs) {
                    return;
                }
                if (j.hp(context, "android.permission.READ_PHONE_STATE") == 0) {
                    xs = true;
                    TelephonyManager telephonyManagerHp = hp(context);
                    if (telephonyManagerHp == null) {
                        return;
                    }
                    try {
                        if (Build.VERSION.SDK_INT >= 26) {
                            f23999l = telephonyManagerHp.getImei();
                        } else {
                            f23999l = telephonyManagerHp.getDeviceId();
                        }
                    } catch (Throwable unused) {
                    }
                    f24004u = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static TelephonyManager hp(Context context) {
        if (hq != null) {
            return hq;
        }
        synchronized (jx.class) {
            try {
                if (hq != null) {
                    return hq;
                }
                hq = (TelephonyManager) context.getSystemService("phone");
                return hq;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static synchronized void eb(Context context) {
        String strValueOf;
        String strValueOf2;
        if (wv) {
            return;
        }
        synchronized (jx.class) {
            wv = true;
            SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
            if (subscriptionManager.getActiveSubscriptionInfoCount() < 2) {
                return;
            }
            List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList.size() < 2) {
                return;
            }
            for (int i2 = 0; i2 < 2; i2++) {
                SubscriptionInfo subscriptionInfo = activeSubscriptionInfoList.get(i2);
                if (Build.VERSION.SDK_INT >= 29) {
                    strValueOf = subscriptionInfo.getMccString();
                    strValueOf2 = subscriptionInfo.getMncString();
                } else {
                    strValueOf = String.valueOf(subscriptionInfo.getMcc());
                    strValueOf2 = String.valueOf(subscriptionInfo.getMnc());
                }
                if (i2 == 0) {
                    if (!TextUtils.isEmpty(strValueOf)) {
                        f24002q = strValueOf;
                    }
                    if (!TextUtils.isEmpty(strValueOf2)) {
                        gu = strValueOf2;
                    }
                } else {
                    if (!TextUtils.isEmpty(strValueOf)) {
                        f23996e = strValueOf;
                    }
                    if (!TextUtils.isEmpty(strValueOf2)) {
                        jl = strValueOf2;
                    }
                }
            }
        }
    }

    public static String jx(com.byazt.pg.hp hpVar, Context context) {
        try {
            WifiInfo wifiInfoHp = hp(hpVar, context);
            if (wifiInfoHp != null) {
                String bssid = wifiInfoHp.getBSSID();
                return TextUtils.isEmpty(bssid) ? "02:00:00:00:00:00" : bssid;
            }
            return "02:00:00:00:00:00";
        } catch (Throwable unused) {
            return "02:00:00:00:00:00";
        }
    }

    public static String l(final com.byazt.pg.hp hpVar, final Context context) {
        if (TextUtils.isEmpty(f23997j) && !ec) {
            if (f24006w.get()) {
                return null;
            }
            f24006w.set(true);
            ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("") { // from class: com.byazt.oda.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    jx.j(null, hpVar, context);
                    jx.f24006w.set(false);
                }
            });
            return null;
        }
        return f23997j;
    }

    public static String j(Boolean bool, com.byazt.pg.hp hpVar, Context context) {
        if (!TextUtils.isEmpty(f23997j)) {
            return f23997j;
        }
        if (bool == null) {
            com.byazt.he.l customController = hpVar.getCustomController();
            if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
                return null;
            }
        } else {
            if (ec) {
                return f23997j;
            }
            if (bool.booleanValue()) {
                return null;
            }
        }
        return gu(hpVar, context);
    }

    public static WifiInfo hp(com.byazt.pg.hp hpVar, Context context) {
        com.byazt.he.l customController = hpVar.getCustomController();
        if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
            return nu;
        }
        if (nu != null) {
            return nu;
        }
        synchronized (jx.class) {
            try {
                if (nu != null) {
                    return nu;
                }
                WifiManager wifiManagerJ = j(context);
                if (wifiManagerJ == null) {
                    return nu;
                }
                nu = wifiManagerJ.getConnectionInfo();
                return nu;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
    @android.annotation.SuppressLint({"TrulyRandom", "HardwareIds"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.lang.String jx(android.content.Context r3) {
        /*
            java.lang.Class<com.byazt.oda.jx> r0 = com.byazt.oda.jx.class
            monitor-enter(r0)
            r1 = 0
            if (r3 != 0) goto L8
            monitor-exit(r0)
            return r1
        L8:
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L13 java.lang.Exception -> L15
            java.lang.String r2 = "android_id"
            java.lang.String r1 = android.provider.Settings.Secure.getString(r3, r2)     // Catch: java.lang.Throwable -> L13 java.lang.Exception -> L15
            goto L15
        L13:
            r3 = move-exception
            goto L27
        L15:
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L13
            if (r3 != 0) goto L23
            int r3 = r1.length()     // Catch: java.lang.Throwable -> L13
            r2 = 13
            if (r3 >= r2) goto L25
        L23:
            java.lang.String r1 = ""
        L25:
            monitor-exit(r0)
            return r1
        L27:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L13
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oda.jx.jx(android.content.Context):java.lang.String");
    }

    public static boolean l(Context context) {
        if (ns) {
            return f24003s;
        }
        synchronized (jx.class) {
            if (ns) {
                return f24003s;
            }
            try {
                int simState = hp(context).getSimState();
                if (1 == simState) {
                    f24003s = false;
                }
                if (simState == 0) {
                    f24003s = false;
                }
                ns = true;
            } catch (Throwable unused) {
            }
            return f24003s;
        }
    }

    public static String a(com.byazt.pg.hp hpVar, Context context) {
        jl(hpVar, context);
        return f23996e;
    }

    public static String j(com.byazt.pg.hp hpVar, Context context) {
        com.byazt.he.l customController = hpVar.getCustomController();
        if (customController != null && !customController.isCanUsePhoneState()) {
            return "";
        }
        if (!TextUtils.isEmpty(eb)) {
            return eb;
        }
        if (f24000n) {
            return eb;
        }
        synchronized (jx.class) {
            try {
                if (f24000n) {
                    return eb;
                }
                TelephonyManager telephonyManagerHp = hp(context);
                if (telephonyManagerHp == null) {
                    return eb;
                }
                try {
                    eb = telephonyManagerHp.getSimOperator();
                } catch (Throwable unused) {
                }
                f24000n = true;
                return eb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String jx(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) throws JSONException {
        try {
            String strL = s.l("new_mac_address", "", hpVar);
            if (!TextUtils.isEmpty(strL)) {
                JSONObject jSONObject = new JSONObject(strL);
                long j2 = jSONObject.getLong("time");
                String strDecryptAESWithCBC = ((com.byazt.pg.w) com.byazt.ym.j.getService("armor_service")).decryptAESWithCBC(jSONObject.getString(f.a.f3244d));
                if (System.currentTimeMillis() - j2 <= 864000000) {
                    if (!TextUtils.isEmpty(strDecryptAESWithCBC)) {
                        return strDecryptAESWithCBC;
                    }
                }
            }
        } catch (Exception unused) {
        }
        hp(hpVar, z2, i2, jVar);
        return f24005v;
    }

    public static String w(com.byazt.pg.hp hpVar, Context context) {
        try {
            jl(hpVar, context);
            if (!TextUtils.isEmpty(f24002q)) {
                return f24002q;
            }
            if (!hp(f23995d, 60000L)) {
                return f24001o;
            }
            if (!l(context)) {
                return null;
            }
            int i2 = context.getResources().getConfiguration().mcc;
            String strValueOf = i2 != 0 ? String.valueOf(i2) : f24002q;
            f24001o = strValueOf;
            f23995d = System.currentTimeMillis();
            return strValueOf;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String hp(Boolean bool, com.byazt.pg.hp hpVar, Context context) {
        if (!TextUtils.isEmpty(f23999l)) {
            return f23999l;
        }
        com.byazt.he.l customController = hpVar.getCustomController();
        if (bool == null) {
            boolean z2 = false;
            if (customController != null && customController.canRead(0)) {
                z2 = true;
            }
            return hp(customController, z2, context);
        }
        if (f24004u) {
            return f23999l;
        }
        return hp(customController, bool.booleanValue(), context);
    }

    private static String l(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) {
        if (di) {
            return f24005v;
        }
        synchronized (jx.class) {
            try {
                if (di) {
                    return f24005v;
                }
                f24005v = jx(hpVar, z2, i2, jVar);
                di = true;
                return f24005v;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String hp(com.byazt.he.l lVar, boolean z2, Context context) {
        if (lVar != null && !z2) {
            String devImei = lVar.getDevImei();
            f23999l = devImei;
            return devImei;
        }
        if (f24004u) {
            return f23999l;
        }
        w(context);
        return f23999l;
    }

    public static String hp(com.byazt.pg.hp hpVar) {
        com.byazt.he.l customController = hpVar.getCustomController();
        if (customController != null && !customController.canRead(3)) {
            return null;
        }
        if (!TextUtils.isEmpty(f23998k)) {
            return f23998k;
        }
        if (f23994b) {
            return f23998k;
        }
        synchronized (jx.class) {
            try {
                if (f23994b) {
                    return f23998k;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    try {
                        f23998k = Build.getSerial();
                    } catch (Throwable unused) {
                    }
                } else {
                    f23998k = Build.SERIAL;
                }
                f23994b = true;
                return f23998k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void hp(com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) throws JSONException {
        String strHp = l.hp(hpVar, z2, i2, jVar);
        if (TextUtils.isEmpty(strHp)) {
            strHp = "DU:MM:YA:DD:RE:SS";
        }
        s.hp("mac_address", strHp, hpVar, i2);
        s.hp("new_mac_address", ((com.byazt.pg.w) com.byazt.ym.j.getService("armor_service")).encryptAESWithCBC(strHp), hpVar, i2);
        f24005v = strHp;
    }

    public static String hp(Boolean bool, com.byazt.pg.hp hpVar, boolean z2, int i2, com.byazt.he.j jVar) {
        if (!TextUtils.isEmpty(f24005v)) {
            return f24005v;
        }
        com.byazt.he.l customController = hpVar.getCustomController();
        if (bool == null) {
            if (customController != null && !customController.canRead(2)) {
                return customController.getMacAddress();
            }
        } else {
            if (di) {
                return f24005v;
            }
            if (customController != null && !bool.booleanValue()) {
                return customController.getMacAddress();
            }
        }
        return l(hpVar, z2, i2, jVar);
    }

    private static boolean hp(long j2, long j3) {
        return System.currentTimeMillis() - j2 > j3;
    }

    public static String hp(Context context, com.byazt.pg.hp hpVar) {
        TelephonyManager telephonyManagerHp;
        try {
            com.byazt.he.l customController = hpVar.getCustomController();
            if ((customController == null || customController.isCanUsePhoneState()) && (telephonyManagerHp = hp(context)) != null) {
                return telephonyManagerHp.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getSimOperator();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
