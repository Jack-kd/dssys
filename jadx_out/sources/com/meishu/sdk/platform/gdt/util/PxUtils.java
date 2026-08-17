package com.meishu.sdk.platform.gdt.util;

import android.content.Context;
import android.util.TypedValue;

/* loaded from: classes4.dex */
public class PxUtils {
    public static int dpToPx(Context context, int i2) {
        return (int) TypedValue.applyDimension(1, i2, context.getApplicationContext().getResources().getDisplayMetrics());
    }

    public static int getDeviceHeightInPixel(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public static int getDeviceWidthInPixel(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static int pxToDp(Context context, int i2) {
        return (int) ((i2 / context.getApplicationContext().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
