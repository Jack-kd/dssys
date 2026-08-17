package com.smartdigimkt.a4;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f39325a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final int f39326b;

    public f(int i2) {
        this.f39326b = i2;
    }

    public final boolean a(View view, View view2, int i2, Integer num) {
        if (view2 != null && view != null) {
            try {
                if (view.getParent() != null && view2.getWindowVisibility() == 0) {
                    if ((this.f39326b == 1 && !view2.hasWindowFocus()) || !view2.getGlobalVisibleRect(this.f39325a)) {
                        return false;
                    }
                    long jHeight = this.f39325a.height() * this.f39325a.width();
                    long height = view2.getHeight() * view2.getWidth();
                    if (height <= 0) {
                        return false;
                    }
                    if ((num == null || num.intValue() <= 0 || jHeight >= num.intValue()) && jHeight * 100 >= i2 * height) {
                        return view2.isShown();
                    }
                    return false;
                }
            } catch (Throwable th) {
                Log.e("f", "checkVisibilityPercent error: " + th.getMessage());
                th.printStackTrace();
            }
        }
        return false;
    }
}
