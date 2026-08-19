package com.baidu.mobads.sdk.api;

import androidx.annotation.DrawableRes;
import com.baidu.mobads.sdk.internal.co;

/* loaded from: classes2.dex */
public class AdSettings {
    public static String getSDKVersion() {
        return co.c() + "";
    }

    public static void setNotificationChannel(String str) {
        CustomNotification.setNotificationChannel(str);
    }

    public static void setNotificationIcon(@DrawableRes int i2) {
        CustomNotification.setNotificationIcon(i2);
    }
}
