package com.byazt.uq;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

@com.byazt.kj.hp(hp = {0, 1, 85, 30})
/* loaded from: classes3.dex */
public class jx extends Drawable {
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public RectF f26349j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26350l;

    public jx(int i2, int i3) {
        this.jx = i2;
        this.f26350l = i3;
        Paint paint = new Paint();
        this.hp = paint;
        paint.setColor(0);
        this.hp.setAntiAlias(true);
        this.hp.setShadowLayer(i3, 0.0f, 0.0f, -16777216);
        this.hp.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF = this.f26349j;
        int i2 = this.jx;
        canvas.drawRoundRect(rectF, i2, i2, this.hp);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.hp.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i2, int i3, int i4, int i5) {
        super.setBounds(i2, i3, i4, i5);
        int i6 = this.f26350l;
        this.f26349j = new RectF(i2 + i6, i3 + i6, i4 - i6, i5 - i6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.hp.setColorFilter(colorFilter);
    }
}
