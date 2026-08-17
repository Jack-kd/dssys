package com.sigmob.sdk.base.blurkit;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes4.dex */
public class d extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    public static final int f35552a = -16777216;

    /* renamed from: b, reason: collision with root package name */
    public static final int f35553b = 0;

    /* renamed from: c, reason: collision with root package name */
    private float f35554c;

    /* renamed from: d, reason: collision with root package name */
    private final RectF f35555d;

    /* renamed from: e, reason: collision with root package name */
    private final PorterDuffXfermode f35556e;

    public d(Context context) {
        super(context, null);
        this.f35554c = 0.0f;
        this.f35555d = new RectF();
        this.f35556e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
    }

    public float getCornerRadius() {
        return this.f35554c;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof BitmapDrawable) || this.f35554c <= 0.0f) {
            super.onDraw(canvas);
            return;
        }
        this.f35555d.set(drawable.getBounds());
        int iSaveLayer = canvas.saveLayer(this.f35555d, null, 31);
        getImageMatrix().mapRect(this.f35555d);
        Paint paint = ((BitmapDrawable) drawable).getPaint();
        paint.setAntiAlias(true);
        paint.setColor(-16777216);
        Xfermode xfermode = paint.getXfermode();
        canvas.drawARGB(0, 0, 0, 0);
        RectF rectF = this.f35555d;
        float f2 = this.f35554c;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        paint.setXfermode(this.f35556e);
        super.onDraw(canvas);
        paint.setXfermode(xfermode);
        canvas.restoreToCount(iSaveLayer);
    }

    public void setCornerRadius(float f2) {
        this.f35554c = f2;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35554c = 0.0f;
        this.f35555d = new RectF();
        this.f35556e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
    }
}
