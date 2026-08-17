package com.smartdigimkt.china.api;

import android.content.Context;
import com.smartdigimkt.d.b;
import com.smartdigimkt.odopt.api.ATOaidHandler;
import com.smartdigimkt.odopt.api.OaidSDKCallbackListener;

/* loaded from: classes5.dex */
public class ATChinaSDKHandler {
    public static void handleInitOaidSDK(Context context, OaidSDKCallbackListener oaidSDKCallbackListener) {
        try {
            ATOaidHandler.handleInitOaidSDK(context, oaidSDKCallbackListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void requestPermissionIfNecessary(Context context) {
        b.a(context, "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public static void setAllowUseMdidSDK(boolean z2) {
        try {
            ATOaidHandler.setAllowUseMdidSDK(z2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
