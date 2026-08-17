package com.ubix.ssp.ad.e;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;

/* loaded from: classes5.dex */
public class g extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f46868a;

    /* renamed from: b, reason: collision with root package name */
    private int f46869b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f46870c;

    /* renamed from: d, reason: collision with root package name */
    private int f46871d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f46872e;

    /* renamed from: f, reason: collision with root package name */
    private int f46873f;

    /* renamed from: g, reason: collision with root package name */
    private Paint f46874g;

    /* renamed from: h, reason: collision with root package name */
    private int f46875h;

    /* renamed from: i, reason: collision with root package name */
    private float f46876i;

    /* renamed from: j, reason: collision with root package name */
    private String f46877j;

    /* renamed from: k, reason: collision with root package name */
    private int f46878k;

    /* renamed from: l, reason: collision with root package name */
    private int f46879l;

    /* renamed from: m, reason: collision with root package name */
    private long f46880m;

    /* renamed from: n, reason: collision with root package name */
    private long f46881n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f46882o;

    /* renamed from: p, reason: collision with root package name */
    private b f46883p;

    /* renamed from: q, reason: collision with root package name */
    private ValueAnimator f46884q;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            g.this.f46879l = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            g gVar = g.this;
            gVar.f46881n = gVar.f46880m - valueAnimator.getCurrentPlayTime();
            if (g.this.f46883p != null) {
                g.this.f46883p.a(g.this.f46879l, g.this.f46879l == 0);
            }
            g.this.invalidate();
        }
    }

    public interface b {
        void a(int i2, boolean z2);
    }

    public g(Context context) {
        super(context);
        this.f46869b = 1073741823;
        this.f46871d = -1493172225;
        this.f46873f = -1;
        this.f46875h = -14606047;
        this.f46876i = 12.0f;
        this.f46877j = "";
        this.f46879l = 100;
        this.f46880m = 5000L;
        this.f46881n = 5000L;
        this.f46882o = true;
        a();
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float b() {
        return this.f46879l / 100.0f;
    }

    private void f() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(100, 0);
        this.f46884q = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(this.f46880m);
        this.f46884q.setInterpolator(new LinearInterpolator());
        this.f46884q.addUpdateListener(new a());
        this.f46884q.start();
    }

    public void d() {
        ValueAnimator valueAnimator = this.f46884q;
        if (valueAnimator != null) {
            valueAnimator.resume();
        }
    }

    public void e() {
        f();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f46870c.setColor(this.f46871d);
        this.f46872e.setColor(this.f46873f);
        this.f46874g.setColor(this.f46875h);
        this.f46874g.setTextSize(this.f46876i);
        this.f46868a.setColor(this.f46869b);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, (getMeasuredWidth() / 2) - this.f46878k, this.f46868a);
        if (this.f46877j == null) {
            this.f46882o = true;
        }
        if (this.f46882o) {
            long j2 = this.f46881n;
            String strValueOf = String.valueOf((j2 / 1000) + (j2 == this.f46880m ? 0 : 1));
            if (this.f46881n <= 0) {
                strValueOf = "0";
            }
            this.f46877j = strValueOf + "s";
        }
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = a(getContext(), 50.0f);
        }
        if (mode2 != 1073741824) {
            size2 = a(getContext(), 50.0f);
        }
        if (size != size2) {
            size = Math.max(size, size2);
            size2 = size;
        }
        setMeasuredDimension(size, size2);
    }

    public void setBgColor(int i2) {
        this.f46869b = i2;
    }

    public void setCountdownListener(b bVar) {
        this.f46883p = bVar;
    }

    public void setDuration(long j2) {
        this.f46880m = j2;
    }

    public void setProgressColor(int i2) {
        this.f46871d = i2;
    }

    public void setProgressLightColor(int i2) {
        this.f46873f = i2;
    }

    public void setText(String str) {
        this.f46877j = str;
        this.f46882o = false;
    }

    public void setTextColor(int i2) {
        this.f46875h = i2;
    }

    public void setTextSize(float f2) {
        this.f46876i = b(getContext(), f2);
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46869b = 1073741823;
        this.f46871d = -1493172225;
        this.f46873f = -1;
        this.f46875h = -14606047;
        this.f46876i = 12.0f;
        this.f46877j = "";
        this.f46879l = 100;
        this.f46880m = 5000L;
        this.f46881n = 5000L;
        this.f46882o = true;
        a();
    }

    public static int b(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void c() {
        ValueAnimator valueAnimator = this.f46884q;
        if (valueAnimator != null) {
            valueAnimator.pause();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46869b = 1073741823;
        this.f46871d = -1493172225;
        this.f46873f = -1;
        this.f46875h = -14606047;
        this.f46876i = 12.0f;
        this.f46877j = "";
        this.f46879l = 100;
        this.f46880m = 5000L;
        this.f46881n = 5000L;
        this.f46882o = true;
        a();
    }

    private void b(Canvas canvas) {
        Rect rect = new Rect();
        Paint paint = this.f46874g;
        String str = this.f46877j;
        paint.getTextBounds(str, 0, str.length(), rect);
        Paint.FontMetrics fontMetrics = this.f46874g.getFontMetrics();
        String str2 = this.f46877j;
        float measuredWidth = (getMeasuredWidth() / 2) - (rect.width() / 2);
        float measuredHeight = getMeasuredHeight() / 2;
        float f2 = fontMetrics.descent;
        canvas.drawText(str2, measuredWidth, (measuredHeight - f2) + ((f2 - fontMetrics.ascent) / 2.0f), this.f46874g);
    }

    private void a() {
        Paint paint = new Paint();
        this.f46870c = paint;
        int iA = a(getContext(), 2.0f);
        this.f46878k = iA;
        paint.setStrokeWidth(iA);
        Paint paint2 = this.f46870c;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.f46870c.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f46872e = paint3;
        int iA2 = a(getContext(), 2.0f);
        this.f46878k = iA2;
        paint3.setStrokeWidth(iA2);
        this.f46872e.setStyle(style);
        this.f46872e.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f46874g = paint4;
        Paint.Style style2 = Paint.Style.FILL;
        paint4.setStyle(style2);
        this.f46874g.setAntiAlias(true);
        Paint paint5 = new Paint();
        this.f46868a = paint5;
        paint5.setStyle(style2);
        this.f46868a.setAntiAlias(true);
    }

    private void a(Canvas canvas) {
        canvas.save();
        canvas.rotate(-90.0f, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        float f2 = this.f46878k;
        RectF rectF = new RectF(f2, f2, getMeasuredWidth() - this.f46878k, getMeasuredHeight() - this.f46878k);
        float fB = b() * 360.0f;
        canvas.drawArc(rectF, 0.0f, 360.0f, false, this.f46870c);
        canvas.drawArc(rectF, 0.0f, fB, false, this.f46872e);
        canvas.restore();
    }
}
