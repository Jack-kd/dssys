package com.meishu.sdk.core.utils;

import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes4.dex */
public class m {
    public static float a(Context context, float f2) {
        return f2 * context.getResources().getDisplayMetrics().density;
    }

    public static float b(Context context, float f2) {
        return f2 / context.getResources().getDisplayMetrics().density;
    }

    public static int a(Context context) {
        try {
            DisplayMetrics displayMetricsL = y0.l(context);
            return (int) Math.min(displayMetricsL.widthPixels / 0.46d, displayMetricsL.heightPixels);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }
}
