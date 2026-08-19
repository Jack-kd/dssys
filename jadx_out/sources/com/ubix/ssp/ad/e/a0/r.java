package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* loaded from: classes5.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    private static volatile r f46408a;

    /* renamed from: b, reason: collision with root package name */
    private static final Object f46409b = new Object();

    private r() {
    }

    public static float b(Context context) {
        try {
            return context.getResources().getDisplayMetrics().densityDpi;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static int c(float f2) {
        return (int) ((f2 / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int d(float f2) {
        return (int) ((f2 * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int i(Context context) {
        float fA;
        int identifier;
        try {
            try {
                identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            } catch (Exception unused) {
                return 0;
            }
        } catch (Exception unused2) {
            fA = a().a(context);
        }
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        fA = a().a(context);
        return (int) (fA * 37.0f);
    }

    public float a(Context context) {
        try {
            return context.getApplicationContext().getResources().getDisplayMetrics().density;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public int e(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public int f(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public int g(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public int h(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int a(float f2) {
        return (int) ((f2 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(float f2) {
        return (int) (f2 * Resources.getSystem().getDisplayMetrics().xdpi * 0.013888889f);
    }

    public int c(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public int d(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public static r a() {
        if (f46408a == null) {
            synchronized (f46409b) {
                try {
                    if (f46408a == null) {
                        f46408a = new r();
                    }
                } finally {
                }
            }
        }
        return f46408a;
    }
}
