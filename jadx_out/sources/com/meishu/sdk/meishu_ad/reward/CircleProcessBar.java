package com.meishu.sdk.meishu_ad.reward;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.BeiZiBiddingConstant;

/* loaded from: classes4.dex */
public class CircleProcessBar extends View {

    /* renamed from: a, reason: collision with root package name */
    public Paint f32443a;

    /* renamed from: b, reason: collision with root package name */
    public Paint f32444b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f32445c;

    /* renamed from: d, reason: collision with root package name */
    public float f32446d;

    /* renamed from: e, reason: collision with root package name */
    public float f32447e;

    /* renamed from: f, reason: collision with root package name */
    public float f32448f;

    /* renamed from: g, reason: collision with root package name */
    public float f32449g;

    /* renamed from: h, reason: collision with root package name */
    public float f32450h;

    /* renamed from: i, reason: collision with root package name */
    public RectF f32451i;

    /* renamed from: j, reason: collision with root package name */
    public int f32452j;

    /* renamed from: k, reason: collision with root package name */
    public int f32453k;

    /* renamed from: l, reason: collision with root package name */
    public a f32454l;

    public interface a {
        void onSkip();
    }

    public CircleProcessBar(Context context) {
        super(context);
        this.f32446d = 2.2f;
        this.f32447e = 12.1f;
        this.f32448f = 10.0f;
        this.f32449g = 15.5f;
        this.f32452j = 0;
        this.f32453k = 5000;
        a();
    }

    public final void a() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = this.f32446d;
        float f3 = displayMetrics.density;
        this.f32446d = f2 * f3;
        this.f32447e *= f3;
        this.f32448f *= f3;
        this.f32449g *= f3;
        Paint paint = new Paint();
        this.f32443a = paint;
        paint.setTextSize(this.f32447e);
        this.f32443a.setColor(-1);
        this.f32443a.setAntiAlias(true);
        this.f32443a.setShadowLayer(displayMetrics.density * 3.0f, 0.0f, 0.0f, -7829368);
        Paint paint2 = new Paint();
        this.f32444b = paint2;
        paint2.setColor(Color.parseColor("#b7ffffff"));
        this.f32444b.setAntiAlias(true);
        this.f32444b.setStrokeWidth(this.f32446d);
        Paint paint3 = this.f32444b;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        Paint paint4 = new Paint();
        this.f32445c = paint4;
        paint4.setColor(Color.parseColor("#42c1f0"));
        this.f32445c.setAntiAlias(true);
        this.f32445c.setStrokeWidth(this.f32446d);
        this.f32445c.setStyle(style);
        this.f32443a.measureText(BeiZiBiddingConstant.LossReason.OTHER);
        this.f32450h = this.f32449g;
        float f4 = this.f32446d / 2.0f;
        float f5 = 0.0f + f4 + 1.0f;
        float f6 = ((this.f32450h * 2.0f) - f4) - 1.0f;
        this.f32451i = new RectF(f5, f5, f6, f6);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.f32451i, 0.0f, 360.0f, false, this.f32444b);
        canvas.save();
        canvas.rotate(-90.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        canvas.drawArc(this.f32451i, 0.0f, ((this.f32452j * 1.0f) / this.f32453k) * 360.0f, false, this.f32445c);
        canvas.restore();
        Paint.FontMetrics fontMetrics = this.f32443a.getFontMetrics();
        int measuredHeight = (int) ((getMeasuredHeight() / 2) - ((fontMetrics.top + fontMetrics.bottom) / 2.0f));
        int iMax = Math.max(0, ((this.f32453k - this.f32452j) + 999) / 1000);
        if (iMax == 0) {
            setVisibility(8);
            a aVar = this.f32454l;
            if (aVar != null) {
                aVar.onSkip();
                return;
            }
            return;
        }
        canvas.drawText("" + iMax, (getMeasuredWidth() / 2) - (this.f32443a.measureText(iMax + "") / 2.0f), measuredHeight, this.f32443a);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            size = (int) (this.f32450h * 2.0f);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = (int) (this.f32450h * 2.0f);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setAlpha(0.5f);
        } else if (action == 1) {
            setAlpha(1.0f);
        }
        return true;
    }

    public void setOnSkipListener(a aVar) {
        this.f32454l = aVar;
    }

    public void setmTotalTime(int i2) {
        this.f32453k = i2;
    }

    public CircleProcessBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32446d = 2.2f;
        this.f32447e = 12.1f;
        this.f32448f = 10.0f;
        this.f32449g = 15.5f;
        this.f32452j = 0;
        this.f32453k = 5000;
        a();
    }

    public CircleProcessBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32446d = 2.2f;
        this.f32447e = 12.1f;
        this.f32448f = 10.0f;
        this.f32449g = 15.5f;
        this.f32452j = 0;
        this.f32453k = 5000;
        a();
    }

    public synchronized void a(int i2) {
        a aVar;
        this.f32452j = i2;
        invalidate();
        if (this.f32452j >= this.f32453k && (aVar = this.f32454l) != null) {
            aVar.onSkip();
        }
    }
}
