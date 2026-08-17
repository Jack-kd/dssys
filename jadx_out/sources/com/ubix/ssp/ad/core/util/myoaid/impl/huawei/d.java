package com.ubix.ssp.ad.core.util.myoaid.impl.huawei;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public class d {
    public static String a(Context context) {
        return a(context, "com.huawei.hwid") ? "com.huawei.hwid" : a(context, "com.huawei.hms") ? "com.huawei.hms" : a(context, "com.huawei.hwid.tv") ? "com.huawei.hwid.tv" : "com.huawei.hwid";
    }

    public static PackageInfo b(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    return packageManager.getPackageInfo(str, 128);
                }
            } catch (PackageManager.NameNotFoundException | Exception unused) {
            }
        }
        return null;
    }

    public static boolean a(Context context, String str) {
        return b(context, str) != null;
    }
}
