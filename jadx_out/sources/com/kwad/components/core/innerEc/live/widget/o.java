package com.kwad.components.core.innerEc.live.widget;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* loaded from: classes4.dex */
public final class o extends CharacterStyle {
    private int Fx;
    private boolean aaD;
    private float mRadius = 3.0f;
    private float aaB = 0.0f;
    private float aaC = 3.0f;

    public o(float f2, float f3, float f4, int i2) {
        this.Fx = i2;
    }

    public final void aO(boolean z2) {
        this.aaD = true;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        if (this.aaD) {
            textPaint.setShadowLayer(this.mRadius, this.aaB, this.aaC, this.Fx);
        }
    }
}
