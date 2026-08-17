package com.beizi.fusion;

import android.graphics.Rect;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class bq {
    public static boolean a(View view) {
        if (view == null || view.getVisibility() != 0 || view.getParent() == null || !(q1.i().w() || view.hasWindowFocus())) {
            return false;
        }
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return false;
        }
        int height = (int) (view.getHeight() * view.getWidth() * 0.95d);
        return height > 0 && rect.height() * rect.width() >= height;
    }

    public static boolean b(View view) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null && view.hasWindowFocus()) {
                    Rect rect = new Rect();
                    if (view.getGlobalVisibleRect(rect)) {
                        return rect.height() * rect.width() > 0;
                    }
                    return false;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(View view, double d2) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null && view.hasWindowFocus()) {
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                return false;
            }
            int iHeight = rect.height() * rect.width();
            int height = (int) (view.getHeight() * view.getWidth() * d2);
            if (height > 0 && iHeight >= height) {
                return true;
            }
        }
        return false;
    }
}
