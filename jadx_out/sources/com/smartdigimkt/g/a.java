package com.smartdigimkt.g;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.anythink.core.common.m.f;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c3.g;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.h3.m;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.bridge.entity.DeviceInfoEntity;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static String f40285a = "";

    /* renamed from: b, reason: collision with root package name */
    public static String f40286b = "";

    /* renamed from: c, reason: collision with root package name */
    public static String f40287c = "";

    /* renamed from: d, reason: collision with root package name */
    public static String f40288d = "";

    /* renamed from: e, reason: collision with root package name */
    public static String f40289e = "";

    /* renamed from: f, reason: collision with root package name */
    public static String f40290f = "";

    /* renamed from: g, reason: collision with root package name */
    public static String f40291g = null;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f40292h = false;

    /* renamed from: i, reason: collision with root package name */
    public static boolean f40293i = false;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f40294j = false;

    /* renamed from: k, reason: collision with root package name */
    public static String f40295k = "";

    /* renamed from: l, reason: collision with root package name */
    public static String f40296l = "";

    public static synchronized String a(Context context) {
        String str = f40291g;
        if (str != null) {
            return str;
        }
        try {
            f40291g = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
        }
        if (f40291g == null) {
            f40291g = "";
        }
        return f40291g;
    }

    public static synchronized String b(Context context) {
        if (SDKContext.getInstance().a("imei")) {
            return "";
        }
        if (!TextUtils.isEmpty(f40286b)) {
            return f40286b;
        }
        if (!g.f39677e && !SDKContext.getInstance().f44123l) {
            return "";
        }
        DeviceInfoEntity deviceInfoEntity = h.f39738d0;
        if (deviceInfoEntity != null) {
            String imei = deviceInfoEntity.getImei();
            f40286b = imei;
            if (!TextUtils.isEmpty(imei)) {
                return f40286b;
            }
        }
        if (!f40292h && TextUtils.isEmpty(f40286b)) {
            try {
                if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0) {
                    f40286b = c.a(context);
                    f40292h = true;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return f40286b;
    }

    public static void c(Context context) {
        String str;
        File file;
        f40285a = c();
        f40286b = b(context);
        f40287c = h.w();
        String[] strArrA = b.a(h.f(context));
        if (strArrA != null && strArrA.length == 2) {
            f40288d = strArrA[0];
            f40289e = strArrA[1];
        }
        try {
            file = new File("/data/data");
        } catch (Throwable unused) {
        }
        if (file.exists()) {
            str = (file.lastModified() / 1000) + ".000000000";
        } else {
            str = "";
        }
        f40290f = str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39661f, "vivo_ver"));
        if (Build.VERSION.SDK_INT >= 29) {
            arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39659d, "oppo_ver"));
        } else {
            arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39660e, "oppo_ver"));
        }
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39658c, "xiaomi_ver"));
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39656a, "honor_ver"));
        arrayList.add(new com.smartdigimkt.h3.a(com.smartdigimkt.c3.a.f39662g, "honor_v2_ver"));
        m mVarB = m.b();
        mVarB.getClass();
        if (!SDKContext.getInstance().a(f.bG) && arrayList.size() > 0) {
            e.a().a(new com.smartdigimkt.h3.h(mVarB, arrayList), Math.max(0L, g.f39680h), 2);
        }
    }

    public static synchronized String d() {
        if (SDKContext.getInstance().a("wifi_name")) {
            return "";
        }
        if (!TextUtils.isEmpty(f40295k)) {
            return f40295k;
        }
        DeviceInfoEntity deviceInfoEntity = h.f39738d0;
        if (deviceInfoEntity != null) {
            String ssid = deviceInfoEntity.getSsid();
            f40295k = ssid;
            if (!TextUtils.isEmpty(ssid)) {
                return f40295k;
            }
        }
        if (!g.f39677e && !SDKContext.getInstance().f44123l) {
            return "";
        }
        if (!f40293i && TextUtils.isEmpty(f40295k)) {
            f40295k = b.b(SDKContext.getInstance().d());
            f40293i = true;
        }
        return f40295k;
    }

    public static String a() {
        String strV = h.v();
        String str = Build.MANUFACTURER;
        String lowerCase = str != null ? str.toLowerCase() : "";
        if (!strV.contains(MediationConstant.ADN_XIAOMI) && !strV.contains("redmi") && !lowerCase.contains(MediationConstant.ADN_XIAOMI) && !lowerCase.contains("redmi")) {
            if (!strV.contains("huawei") && !lowerCase.contains("huawei")) {
                if (!strV.contains("oppo") && !lowerCase.contains("oppo")) {
                    if (strV.contains("vivo") || lowerCase.contains("vivo")) {
                        return com.smartdigimkt.c3.a.f39661f;
                    }
                    return (strV.contains("honor") || lowerCase.contains("honor") || strV.contains("hihonor") || lowerCase.contains("hihonor")) ? com.smartdigimkt.c3.a.f39662g : "";
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    return com.smartdigimkt.c3.a.f39659d;
                }
                return com.smartdigimkt.c3.a.f39660e;
            }
            return com.smartdigimkt.c3.a.f39656a;
        }
        return com.smartdigimkt.c3.a.f39658c;
    }

    public static String b() {
        String str = "";
        if (SDKContext.getInstance().a("imsi")) {
            return "";
        }
        if (!TextUtils.isEmpty(f40296l)) {
            return f40296l;
        }
        DeviceInfoEntity deviceInfoEntity = h.f39738d0;
        if (deviceInfoEntity != null) {
            String imsi = deviceInfoEntity.getImsi();
            f40296l = imsi;
            if (!TextUtils.isEmpty(imsi)) {
                return f40296l;
            }
        }
        if (!g.f39677e && !SDKContext.getInstance().f44123l) {
            return "";
        }
        if (!f40294j && TextUtils.isEmpty(f40296l)) {
            try {
                if (ContextCompat.checkSelfPermission(SDKContext.getInstance().d(), "android.permission.READ_PHONE_STATE") == 0) {
                    synchronized (b.class) {
                        try {
                            if (!f40294j) {
                                try {
                                    TelephonyManager telephonyManager = (TelephonyManager) SDKContext.getInstance().d().getSystemService("phone");
                                    if (telephonyManager != null) {
                                        String subscriberId = telephonyManager.getSubscriberId();
                                        if (subscriberId != null) {
                                            str = subscriberId;
                                        }
                                    }
                                } catch (Throwable unused) {
                                }
                                f40296l = str;
                                f40294j = true;
                            }
                        } finally {
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return f40296l;
    }

    public static synchronized String c() {
        if (SDKContext.getInstance().a("mac")) {
            return "";
        }
        if (!TextUtils.isEmpty(f40285a)) {
            return f40285a;
        }
        DeviceInfoEntity deviceInfoEntity = h.f39738d0;
        if (deviceInfoEntity != null) {
            String mac = deviceInfoEntity.getMac();
            f40285a = mac;
            if (!TextUtils.isEmpty(mac)) {
                return f40285a;
            }
        }
        return "";
    }
}
