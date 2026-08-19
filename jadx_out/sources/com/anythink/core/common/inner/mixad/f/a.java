package com.anythink.core.common.inner.mixad.f;

import android.content.Context;
import android.widget.FrameLayout;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public final class a {
    private static FrameLayout.LayoutParams a(int i2) {
        return a(i2, 0, 0);
    }

    public static FrameLayout.LayoutParams a(int i2, int i3, int i4) {
        Context contextG = s.b().g();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (i2 == 1) {
            layoutParams.gravity = 83;
            layoutParams.leftMargin = p.a(contextG, 2.0f);
            layoutParams.bottomMargin = p.a(contextG, 2.0f);
            return layoutParams;
        }
        if (i3 > 0) {
            layoutParams.width = i3;
        }
        if (i4 > 0) {
            layoutParams.height = i4;
        }
        layoutParams.gravity = 85;
        layoutParams.bottomMargin = p.a(contextG, 2.0f);
        layoutParams.rightMargin = p.a(contextG, 2.0f);
        return layoutParams;
    }
}
