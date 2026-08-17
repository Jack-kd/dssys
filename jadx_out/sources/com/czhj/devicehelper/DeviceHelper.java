package com.czhj.devicehelper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.czhj.devicehelper.msaoaId.a;
import com.czhj.sdk.logger.SigmobLog;

/* loaded from: classes3.dex */
public final class DeviceHelper {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29078a = "getSimState";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29079b = "getImei";

    /* renamed from: c, reason: collision with root package name */
    private static final String f29080c = "getLine1Number";

    /* renamed from: d, reason: collision with root package name */
    private static String f29081d = null;

    /* renamed from: e, reason: collision with root package name */
    private static String f29082e = null;

    /* renamed from: f, reason: collision with root package name */
    private static String f29083f = null;

    /* renamed from: g, reason: collision with root package name */
    private static String f29084g = "";

    /* renamed from: h, reason: collision with root package name */
    private static long f29085h = 0;

    /* renamed from: i, reason: collision with root package name */
    private static long f29086i = 0;

    /* renamed from: j, reason: collision with root package name */
    private static Handler f29087j = null;

    /* renamed from: k, reason: collision with root package name */
    private static Handler f29088k = null;

    /* renamed from: l, reason: collision with root package name */
    private static int f29089l = 0;

    /* renamed from: m, reason: collision with root package name */
    private static boolean f29090m = false;

    /* renamed from: n, reason: collision with root package name */
    private static String f29091n;

    /* renamed from: o, reason: collision with root package name */
    private static String f29092o;

    /* renamed from: p, reason: collision with root package name */
    private static String f29093p;

    /* renamed from: q, reason: collision with root package name */
    private static Thread f29094q;

    /* renamed from: r, reason: collision with root package name */
    private static Thread f29095r;

    /* renamed from: s, reason: collision with root package name */
    private static boolean f29096s;

    /* renamed from: t, reason: collision with root package name */
    private static int f29097t;

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String getIMEI(Context context) {
        TelephonyManager telephonyManager;
        String deviceId;
        try {
            SigmobLog.d("private :getIMEI");
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Exception unused) {
        }
        if (telephonyManager == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            deviceId = telephonyManager.getImei();
            if (TextUtils.isEmpty(deviceId)) {
                try {
                    return telephonyManager.getDeviceId();
                } catch (Throwable unused2) {
                    return telephonyManager.getMeid();
                }
            }
        } else {
            deviceId = telephonyManager.getDeviceId();
        }
        if (deviceId != null) {
            return deviceId;
        }
        return null;
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String getIMSI(Context context) {
        return null;
    }

    public static String getMacAddress() {
        return "";
    }

    public static void getOAID(final Context context, final a.InterfaceC0453a interfaceC0453a) {
        if (!TextUtils.isEmpty(f29081d)) {
            if (interfaceC0453a != null) {
                interfaceC0453a.a(f29082e);
                return;
            }
            return;
        }
        if (f29097t > 10) {
            if (interfaceC0453a != null) {
                interfaceC0453a.a("");
                return;
            }
            return;
        }
        f29085h = System.currentTimeMillis();
        if (f29095r == null) {
            Thread.activeCount();
            Thread thread = new Thread(new Runnable() { // from class: com.czhj.devicehelper.DeviceHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    SigmobLog.d("private  getOAID");
                    com.czhj.devicehelper.msaoaId.a.a(context, new a.InterfaceC0453a() { // from class: com.czhj.devicehelper.DeviceHelper.1.1
                        @Override // com.czhj.devicehelper.msaoaId.a.InterfaceC0453a
                        public void a(String str) {
                            String unused = DeviceHelper.f29081d = str;
                            a.InterfaceC0453a interfaceC0453a2 = interfaceC0453a;
                            if (interfaceC0453a2 != null) {
                                interfaceC0453a2.a(str);
                            }
                            boolean unused2 = DeviceHelper.f29096s = false;
                            if (DeviceHelper.f29087j != null) {
                                DeviceHelper.f29087j.removeCallbacksAndMessages(null);
                                Handler unused3 = DeviceHelper.f29087j = null;
                            }
                        }
                    });
                }
            });
            f29095r = thread;
            thread.start();
            f29097t++;
            f29096s = true;
            Handler handler = new Handler(Looper.getMainLooper());
            f29087j = handler;
            handler.postDelayed(new Runnable() { // from class: com.czhj.devicehelper.DeviceHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    if (DeviceHelper.f29095r != null) {
                        boolean unused = DeviceHelper.f29096s = false;
                        int unused2 = DeviceHelper.f29097t = 11;
                        a.InterfaceC0453a interfaceC0453a2 = interfaceC0453a;
                        if (interfaceC0453a2 != null) {
                            interfaceC0453a2.a("");
                        }
                        if (DeviceHelper.f29087j != null) {
                            DeviceHelper.f29087j.removeCallbacksAndMessages(null);
                            Handler unused3 = DeviceHelper.f29087j = null;
                        }
                    }
                }
            }, 10000L);
        }
    }

    public static String getVAID() {
        return f29083f;
    }

    @SuppressLint({"MissingPermission"})
    public static String getWifiName(Context context) {
        return f29091n;
    }

    @SuppressLint({"MissingPermission"})
    public static String getWifimac(Context context) {
        return "";
    }

    @SuppressLint({"MissingPermission"})
    public static String getIMEI(Context context, int i2) {
        TelephonyManager telephonyManager;
        String deviceId;
        try {
            SigmobLog.d("private :getIMEI " + i2);
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Exception unused) {
        }
        if (telephonyManager == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            deviceId = telephonyManager.getImei(i2);
            if (TextUtils.isEmpty(deviceId)) {
                try {
                    return telephonyManager.getDeviceId(i2);
                } catch (Throwable unused2) {
                    return telephonyManager.getMeid(i2);
                }
            }
        } else {
            deviceId = telephonyManager.getDeviceId();
        }
        if (deviceId != null) {
            return deviceId;
        }
        return null;
    }
}
