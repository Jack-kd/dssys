package com.kwad.sdk.core.view;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;

@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public final class a extends ViewOutlineProvider {
    private int baY = 0;
    private int baZ;
    private int bba;
    private int bbb;
    private float mRadius;

    public a(float f2, int i2, int i3, int i4, int i5) {
        this.mRadius = f2;
        this.baZ = i3;
        this.bba = i4;
        this.bbb = i5;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(new Rect(this.baY, this.baZ, this.bba, this.bbb), this.mRadius);
    }
}
