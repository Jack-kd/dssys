package com.kwad.components.core.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;

@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public final class h extends ViewOutlineProvider {
    private float awz;

    private h(float f2) {
        this.awz = f2;
    }

    @RequiresApi(api = 21)
    public static void f(View view, float f2) {
        if (f2 <= 0.0f) {
            view.setOutlineProvider(null);
            view.setClipToOutline(false);
        } else {
            view.setOutlineProvider(new h(f2));
            view.setClipToOutline(true);
        }
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.awz);
    }
}
