package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* loaded from: classes2.dex */
public class bb {

    /* renamed from: a, reason: collision with root package name */
    private static DisplayMetrics f11145a;

    /* renamed from: b, reason: collision with root package name */
    private static float f11146b;

    public static Rect a(Context context) {
        DisplayMetrics displayMetricsF = f(context);
        try {
            return displayMetricsF.widthPixels > displayMetricsF.heightPixels ? new Rect(0, 0, displayMetricsF.heightPixels, displayMetricsF.widthPixels) : new Rect(0, 0, displayMetricsF.widthPixels, displayMetricsF.heightPixels);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int b(Context context) {
        return a(context).width();
    }

    public static int c(Context context) {
        return a(context).height();
    }

    public static Rect d(Context context) {
        DisplayMetrics displayMetricsF = f(context);
        return new Rect(0, 0, displayMetricsF.widthPixels, displayMetricsF.heightPixels);
    }

    public static float e(Context context) {
        if (f11146b < 0.01d) {
            f11146b = f(context).density;
        }
        return f11146b;
    }

    public static DisplayMetrics f(Context context) {
        try {
            DisplayMetrics displayMetrics = f11145a;
            if (displayMetrics != null && displayMetrics.widthPixels > 0) {
                return displayMetrics;
            }
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            if (bn.a(context).a() >= 17) {
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics2);
            } else {
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics2);
            }
            f11145a = displayMetrics2;
        } catch (Throwable th) {
            f11145a = new DisplayMetrics();
            bv.a().a(th);
        }
        return f11145a;
    }

    public static int g(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static int b(Context context, int i2) {
        try {
            return (int) (i2 * e(context));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static int b(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int a(Context context, int i2) {
        try {
            return (int) (i2 / e(context));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
