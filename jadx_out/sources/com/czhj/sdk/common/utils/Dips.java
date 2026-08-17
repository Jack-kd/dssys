package com.czhj.sdk.common.utils;

import android.content.Context;
import android.util.TypedValue;

/* loaded from: classes3.dex */
public class Dips {
    private static float a(float f2, Context context) {
        return f2 / getDensity(context);
    }

    public static int asIntPixels(float f2, Context context) {
        if (f2 == 0.0f || context == null) {
            return 0;
        }
        return (int) (c(f2, context) + 0.5f);
    }

    private static float b(float f2, Context context) {
        return f2 * getDensity(context);
    }

    private static float c(float f2, Context context) {
        return TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static int dipsToIntPixels(float f2, Context context) {
        if (f2 == 0.0f || context == null) {
            return 0;
        }
        return (int) (b(f2, context) + 0.5f);
    }

    public static float getDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int pixelsToIntDips(float f2, Context context) {
        if (f2 == 0.0f || context == null) {
            return 0;
        }
        return (int) (a(f2, context) + 0.5f);
    }

    public static int screenHeightAsIntDips(Context context) {
        if (context == null) {
            return 0;
        }
        return pixelsToIntDips(context.getResources().getDisplayMetrics().heightPixels, context);
    }

    public static int screenWidthAsIntDips(Context context) {
        if (context == null) {
            return 0;
        }
        return pixelsToIntDips(context.getResources().getDisplayMetrics().widthPixels, context);
    }
}
