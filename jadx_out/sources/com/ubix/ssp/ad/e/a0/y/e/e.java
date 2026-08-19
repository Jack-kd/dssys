package com.ubix.ssp.ad.e.a0.y.e;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes5.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static Rect f46560a;

    public static Rect a(Context context) {
        DisplayMetrics displayMetrics;
        try {
            if (f46560a == null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                f46560a = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return f46560a;
    }

    public static boolean b(Context context) {
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return ((Boolean) powerManager.getClass().getMethod("isScreenOn", null).invoke(powerManager, null)).booleanValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public static Rect a(View view) {
        int[] iArr = {Integer.MAX_VALUE, Integer.MAX_VALUE};
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        return new Rect(i2, i3, view.getWidth() + i2, view.getHeight() + i3);
    }

    public static boolean b(View view) {
        try {
            PowerManager powerManager = (PowerManager) view.getContext().getSystemService("power");
            return ((Boolean) powerManager.getClass().getMethod("isScreenOn", null).invoke(powerManager, null)).booleanValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }
}
