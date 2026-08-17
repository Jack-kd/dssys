package com.kwad.sdk.utils;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes4.dex */
public final class am extends bo {
    private int bpA;
    private int bpB;
    private int bpC;
    private int bpD;

    public am(int i2, int i3) {
        super(i2, i3);
    }

    private int VI() {
        return this.bpA;
    }

    private int VJ() {
        return this.bpB;
    }

    private int VK() {
        return this.bpC;
    }

    private int VL() {
        return this.bpD;
    }

    public static am a(int i2, int i3, int i4, int i5, int i6, int i7) {
        am amVar = new am(i2, i3);
        amVar.ga(0);
        amVar.gb(0);
        amVar.fY(i5);
        amVar.fZ(0);
        return amVar;
    }

    private void fZ(int i2) {
        this.bpB = i2;
    }

    public final am c(Context context, float f2) {
        am amVar = new am(com.kwad.sdk.c.a.a.a(context, this.mWidth * f2), com.kwad.sdk.c.a.a.a(context, this.mHeight * f2));
        amVar.bpC = com.kwad.sdk.c.a.a.a(context, this.bpC * f2);
        amVar.bpB = com.kwad.sdk.c.a.a.a(context, this.bpB * f2);
        amVar.bpD = com.kwad.sdk.c.a.a.a(context, this.bpD * f2);
        amVar.bpA = com.kwad.sdk.c.a.a.a(context, this.bpA * f2);
        return amVar;
    }

    public final void fY(int i2) {
        this.bpA = i2;
    }

    public final void ga(int i2) {
        this.bpC = i2;
    }

    public final void gb(int i2) {
        this.bpD = i2;
    }

    public static void a(View view, am amVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (amVar.getHeight() > 0) {
            layoutParams.height = amVar.getHeight();
        }
        if (amVar.getWidth() > 0) {
            layoutParams.width = amVar.getWidth();
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (amVar.VK() > 0) {
                marginLayoutParams.leftMargin = amVar.VK();
            }
            if (amVar.VJ() > 0) {
                marginLayoutParams.bottomMargin = amVar.VJ();
            }
            if (amVar.VL() > 0) {
                marginLayoutParams.rightMargin = amVar.VL();
            }
            if (amVar.VI() > 0) {
                marginLayoutParams.topMargin = amVar.VI();
            }
        }
        view.setLayoutParams(layoutParams);
    }
}
