package com.kwad.sdk.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;

/* loaded from: classes4.dex */
public final class cb {
    public static boolean a(View view, int i2, boolean z2) {
        return view != null && b(view, i2, z2) && dL(view.getContext());
    }

    private static boolean b(View view, int i2, boolean z2) {
        if (view == null || view.getParent() == null) {
            return false;
        }
        Activity activityFromContext = com.kwad.sdk.wrapper.m.getActivityFromContext(view.getContext());
        if ((activityFromContext != null && activityFromContext.isFinishing()) || !view.isShown() || view.getVisibility() != 0 || (z2 && !view.hasWindowFocus())) {
            return false;
        }
        if (view.getGlobalVisibleRect(new Rect())) {
            long jHeight = r9.height() * r9.width();
            long height = view.getHeight() * view.getWidth();
            if (height > 0 && jHeight * 100 >= i2 * height) {
                return true;
            }
        }
        return false;
    }

    private static boolean dL(Context context) {
        return ay.VX().dL(context);
    }

    public static double k(View view, boolean z2) {
        if (view == null) {
            return -1.0d;
        }
        if (!dL(view.getContext())) {
            return -2.0d;
        }
        if (view.getParent() == null) {
            return -3.0d;
        }
        Activity activityFromContext = com.kwad.sdk.wrapper.m.getActivityFromContext(view.getContext());
        if (activityFromContext != null && activityFromContext.isFinishing()) {
            return -4.0d;
        }
        if (!view.isShown() || view.getVisibility() != 0) {
            return -5.0d;
        }
        if (!view.hasWindowFocus()) {
            return -6.0d;
        }
        if (!view.getGlobalVisibleRect(new Rect())) {
            return -8.0d;
        }
        long jHeight = r5.height() * r5.width();
        long height = view.getHeight() * view.getWidth();
        if (height <= 0) {
            return -7.0d;
        }
        return (jHeight * 100.0d) / height;
    }

    public static boolean r(View view, int i2) {
        return view != null && b(view, i2, true) && view.hasWindowFocus() && dL(view.getContext());
    }
}
