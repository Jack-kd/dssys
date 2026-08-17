package com.byazt.xq;

import android.content.Context;
import android.content.pm.ServiceInfo;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 45})
/* loaded from: classes3.dex */
public class e {
    public static boolean hp(Context context, String str, String str2) {
        try {
            for (ServiceInfo serviceInfo : context.getPackageManager().getPackageInfo(str, 4).services) {
                if (serviceInfo.exported && serviceInfo.enabled && serviceInfo.permission == null && serviceInfo.name.equals(str2)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
