package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes2.dex */
public class CustomRoundImageView extends AppCompatImageView {

    /* renamed from: a, reason: collision with root package name */
    private final RectF f17082a;

    /* renamed from: b, reason: collision with root package name */
    private float f17083b;

    /* renamed from: c, reason: collision with root package name */
    private String f17084c;

    /* renamed from: d, reason: collision with root package name */
    private int f17085d;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f17086e;

    /* renamed from: f, reason: collision with root package name */
    private final Paint f17087f;

    public CustomRoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17082a = new RectF();
        this.f17083b = 0.0f;
        this.f17084c = null;
        this.f17085d = 0;
        this.f17086e = new Paint();
        this.f17087f = new Paint();
        a();
    }

    private void a() {
        this.f17086e.setAntiAlias(true);
        this.f17086e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f17087f.setAntiAlias(true);
        this.f17087f.setColor(-1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f17082a, this.f17087f, 31);
        RectF rectF = this.f17082a;
        float f2 = this.f17083b;
        canvas.drawRoundRect(rectF, f2, f2, this.f17087f);
        canvas.saveLayer(this.f17082a, this.f17086e, 31);
        super.draw(canvas);
        if (this.f17085d > 0 && !TextUtils.isEmpty(this.f17084c) && this.f17084c.startsWith("#")) {
            Paint paint = new Paint();
            paint.setColor(Color.parseColor(this.f17084c));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f17085d);
            paint.setAntiAlias(true);
            RectF rectF2 = this.f17082a;
            float f3 = this.f17083b;
            canvas.drawRoundRect(rectF2, f3, f3, paint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f17082a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setBorderColor(String str) {
        this.f17084c = str;
        invalidate();
    }

    public void setBorderWidth(int i2) {
        this.f17085d = i2;
        invalidate();
    }

    public void setRectRadius(float f2) {
        this.f17083b = f2;
        invalidate();
    }

    public CustomRoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17082a = new RectF();
        this.f17083b = 0.0f;
        this.f17084c = null;
        this.f17085d = 0;
        this.f17086e = new Paint();
        this.f17087f = new Paint();
        a();
    }

    public CustomRoundImageView(Context context) {
        super(context);
        this.f17082a = new RectF();
        this.f17083b = 0.0f;
        this.f17084c = null;
        this.f17085d = 0;
        this.f17086e = new Paint();
        this.f17087f = new Paint();
        a();
    }
}
