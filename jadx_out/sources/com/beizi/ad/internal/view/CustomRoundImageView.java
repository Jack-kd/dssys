package com.beizi.ad.internal.view;

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
    private final RectF f12010a;

    /* renamed from: b, reason: collision with root package name */
    private float f12011b;

    /* renamed from: c, reason: collision with root package name */
    private String f12012c;

    /* renamed from: d, reason: collision with root package name */
    private int f12013d;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f12014e;

    /* renamed from: f, reason: collision with root package name */
    private final Paint f12015f;

    public CustomRoundImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12010a = new RectF();
        this.f12011b = 0.0f;
        this.f12012c = null;
        this.f12013d = 0;
        this.f12014e = new Paint();
        this.f12015f = new Paint();
        a();
    }

    private void a() {
        this.f12014e.setAntiAlias(true);
        this.f12014e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f12015f.setAntiAlias(true);
        this.f12015f.setColor(-1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f12010a, this.f12015f, 31);
        RectF rectF = this.f12010a;
        float f2 = this.f12011b;
        canvas.drawRoundRect(rectF, f2, f2, this.f12015f);
        canvas.saveLayer(this.f12010a, this.f12014e, 31);
        super.draw(canvas);
        if (this.f12013d > 0 && !TextUtils.isEmpty(this.f12012c) && this.f12012c.startsWith("#")) {
            Paint paint = new Paint();
            paint.setColor(Color.parseColor(this.f12012c));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f12013d);
            paint.setAntiAlias(true);
            RectF rectF2 = this.f12010a;
            float f3 = this.f12011b;
            canvas.drawRoundRect(rectF2, f3, f3, paint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f12010a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setBorderColor(String str) {
        this.f12012c = str;
        invalidate();
    }

    public void setBorderWidth(int i2) {
        this.f12013d = i2;
        invalidate();
    }

    public void setRectRadius(float f2) {
        this.f12011b = f2;
        invalidate();
    }

    public CustomRoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12010a = new RectF();
        this.f12011b = 0.0f;
        this.f12012c = null;
        this.f12013d = 0;
        this.f12014e = new Paint();
        this.f12015f = new Paint();
        a();
    }

    public CustomRoundImageView(Context context) {
        super(context);
        this.f12010a = new RectF();
        this.f12011b = 0.0f;
        this.f12012c = null;
        this.f12013d = 0;
        this.f12014e = new Paint();
        this.f12015f = new Paint();
        a();
    }
}
