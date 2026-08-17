package com.smartdigimkt.f2;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* loaded from: classes5.dex */
public final class a extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f40199a = new Paint();

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawColor(-13750739);
        if (canvas.getHeight() <= 0 || canvas.getWidth() <= 0) {
            return;
        }
        float fMax = Math.max(canvas.getHeight(), canvas.getWidth()) / 2;
        this.f40199a.setShader(new RadialGradient(canvas.getWidth() / 2, canvas.getHeight() / 2, fMax, -1, 0, Shader.TileMode.CLAMP));
        canvas.drawCircle(canvas.getWidth() / 2, canvas.getHeight() / 2, fMax, this.f40199a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
