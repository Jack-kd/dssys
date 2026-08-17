package com.kwad.sdk.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.net.InetAddress;

/* loaded from: classes4.dex */
public final class aq {
    private static int bpI = 0;
    private static boolean bpJ = false;
    private static String bpK = "";

    public static String dA(Context context) {
        try {
            NetworkInfo networkInfoDz = dz(context);
            if (networkInfoDz == null || !networkInfoDz.isConnected()) {
                return "unknown";
            }
            int type = networkInfoDz.getType();
            if (type != 0) {
                return type != 1 ? "unknown" : networkInfoDz.getTypeName();
            }
            String subtypeName = networkInfoDz.getSubtypeName();
            return TextUtils.isEmpty(subtypeName) ? networkInfoDz.getTypeName() : subtypeName;
        } catch (Exception unused) {
            return "unknown";
        }
    }

    public static int dB(Context context) {
        if (context != null && SystemUtil.b(context, com.kuaishou.weapon.p0.g.f31160b) && SystemUtil.b(context, "android.permission.READ_PHONE_STATE")) {
            try {
                NetworkInfo networkInfoDz = dz(context);
                if (networkInfoDz != null && networkInfoDz.isConnected()) {
                    if (1 == networkInfoDz.getType()) {
                        return 100;
                    }
                    TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
                    if (telephonyManager != null) {
                        int iN = n(context, telephonyManager.getNetworkType());
                        if (iN == 20) {
                            return 5;
                        }
                        switch (iN) {
                        }
                        return 0;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @Nullable
    @SuppressLint({"MissingPermission"})
    public static NetworkInfo dz(Context context) {
        ConnectivityManager connectivityManager;
        if (!SystemUtil.b(context, com.kuaishou.weapon.p0.g.f31160b) || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        }
        try {
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a0 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:10:0x001a, B:12:0x0033, B:13:0x0036, B:48:0x009d, B:49:0x00a0, B:54:0x00ae, B:56:0x00b2, B:58:0x00b8, B:60:0x00be, B:63:0x00c5, B:65:0x00cb, B:66:0x00ce, B:68:0x00d4, B:69:0x00d7, B:50:0x00a3, B:51:0x00a6, B:52:0x00a9, B:15:0x003b, B:20:0x0048, B:23:0x0052, B:26:0x005c, B:29:0x0066, B:32:0x0071, B:35:0x0079, B:38:0x0081, B:41:0x0089, B:44:0x0091, B:53:0x00ac), top: B:79:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a3 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:10:0x001a, B:12:0x0033, B:13:0x0036, B:48:0x009d, B:49:0x00a0, B:54:0x00ae, B:56:0x00b2, B:58:0x00b8, B:60:0x00be, B:63:0x00c5, B:65:0x00cb, B:66:0x00ce, B:68:0x00d4, B:69:0x00d7, B:50:0x00a3, B:51:0x00a6, B:52:0x00a9, B:15:0x003b, B:20:0x0048, B:23:0x0052, B:26:0x005c, B:29:0x0066, B:32:0x0071, B:35:0x0079, B:38:0x0081, B:41:0x0089, B:44:0x0091, B:53:0x00ac), top: B:79:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a6 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:10:0x001a, B:12:0x0033, B:13:0x0036, B:48:0x009d, B:49:0x00a0, B:54:0x00ae, B:56:0x00b2, B:58:0x00b8, B:60:0x00be, B:63:0x00c5, B:65:0x00cb, B:66:0x00ce, B:68:0x00d4, B:69:0x00d7, B:50:0x00a3, B:51:0x00a6, B:52:0x00a9, B:15:0x003b, B:20:0x0048, B:23:0x0052, B:26:0x005c, B:29:0x0066, B:32:0x0071, B:35:0x0079, B:38:0x0081, B:41:0x0089, B:44:0x0091, B:53:0x00ac), top: B:79:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a9 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:10:0x001a, B:12:0x0033, B:13:0x0036, B:48:0x009d, B:49:0x00a0, B:54:0x00ae, B:56:0x00b2, B:58:0x00b8, B:60:0x00be, B:63:0x00c5, B:65:0x00cb, B:66:0x00ce, B:68:0x00d4, B:69:0x00d7, B:50:0x00a3, B:51:0x00a6, B:52:0x00a9, B:15:0x003b, B:20:0x0048, B:23:0x0052, B:26:0x005c, B:29:0x0066, B:32:0x0071, B:35:0x0079, B:38:0x0081, B:41:0x0089, B:44:0x0091, B:53:0x00ac), top: B:79:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int e(android.content.Context r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.utils.aq.e(android.content.Context, java.lang.String, boolean):int");
    }

    public static int getActiveNetworkType(Context context) {
        try {
            NetworkInfo networkInfoDz = dz(context);
            if (networkInfoDz == null) {
                return -1;
            }
            return networkInfoDz.getType();
        } catch (Exception unused) {
            return -1;
        }
    }

    private static int getSubId() {
        return SubscriptionManager.getDefaultDataSubscriptionId();
    }

    public static String h(Context context, boolean z2) {
        if (z2) {
            return "";
        }
        if (!TextUtils.isEmpty(bpK)) {
            return bpK;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                bpK = telephonyManager.getSimOperator();
            } catch (Exception unused) {
            }
        }
        return bpK;
    }

    private static boolean hS(@NonNull String str) {
        return str.contains("nrState=NOT_RESTRICTED") || str.contains("nrState=CONNECTED");
    }

    @WorkerThread
    public static boolean hT(String str) {
        return t(str, 3000);
    }

    public static boolean isMobileConnected(Context context) {
        try {
            NetworkInfo networkInfoDz = dz(context);
            if (networkInfoDz != null && networkInfoDz.isConnected()) {
                if (networkInfoDz.getType() == 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isNetworkConnected(Context context) {
        try {
            NetworkInfo networkInfoDz = dz(context);
            if (networkInfoDz != null) {
                if (networkInfoDz.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean isWifiConnected(Context context) {
        try {
            NetworkInfo networkInfoDz = dz(context);
            if (networkInfoDz != null && networkInfoDz.isConnected()) {
                return 1 == networkInfoDz.getType();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    @SuppressLint({"MissingPermission"})
    private static int n(Context context, int i2) {
        ServiceState serviceState;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 26 || !SystemUtil.b(context, com.kuaishou.weapon.p0.g.f31160b)) {
            return i2;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                int subId = getSubId();
                if (subId == -1) {
                    serviceState = telephonyManager.getServiceState();
                } else if (context.getApplicationInfo().targetSdkVersion < 29 || i3 < 29) {
                    try {
                        serviceState = (ServiceState) ab.callMethod(telephonyManager, "getServiceStateForSubscriber", Integer.valueOf(subId));
                    } catch (Throwable unused) {
                        serviceState = telephonyManager.getServiceState();
                    }
                } else {
                    serviceState = telephonyManager.getServiceState();
                }
                if (serviceState != null) {
                    if (bd.Wa()) {
                        Integer num = (Integer) ab.a("com.huawei.android.telephony.ServiceStateEx", "getConfigRadioTechnology", serviceState);
                        return num != null ? num.intValue() : i2;
                    }
                    if (hS(serviceState.toString())) {
                        return 20;
                    }
                    return i2;
                }
            }
            return i2;
        } catch (Exception unused2) {
            return i2;
        }
    }

    @WorkerThread
    private static boolean t(String str, int i2) {
        try {
            return InetAddress.getByName(str).isReachable(3000);
        } catch (Throwable unused) {
            return false;
        }
    }
}
