package com.smartdigimkt.g;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class c {
    public static String a(Context context) {
        if (SDKContext.getInstance().a("imei")) {
            return "";
        }
        try {
            return Build.VERSION.SDK_INT < 26 ? (String) c(context).get("imei1") : (String) b(context).get("imei1");
        } catch (Throwable unused) {
            return "";
        }
    }

    public static HashMap b(Context context) {
        TelephonyManager telephonyManager;
        String imei;
        String imei2;
        HashMap map = new HashMap();
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            imei = telephonyManager.getImei(0);
            imei2 = telephonyManager.getImei(1);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(imei) && TextUtils.isEmpty(imei2)) {
            map.put("imei1", telephonyManager.getMeid());
            return map;
        }
        map.put("imei1", imei);
        map.put("imei2", imei2);
        return map;
    }

    public static HashMap c(Context context) {
        String str;
        HashMap map = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            str = (String) method.invoke(null, "ril.gsm.imei", "");
            map.put("meid", (String) method.invoke(null, "ril.cdma.meid", ""));
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(str)) {
            map.put("imei1", telephonyManager.getDeviceId(0));
            map.put("imei2", telephonyManager.getDeviceId(1));
            return map;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit == null || strArrSplit.length <= 0) {
            map.put("imei1", telephonyManager.getDeviceId(0));
            map.put("imei2", telephonyManager.getDeviceId(1));
            return map;
        }
        map.put("imei1", strArrSplit[0]);
        if (strArrSplit.length > 1) {
            map.put("imei2", strArrSplit[1]);
            return map;
        }
        map.put("imei2", telephonyManager.getDeviceId(1));
        return map;
    }
}
