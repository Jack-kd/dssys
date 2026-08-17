package com.beizi.fusion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.beizi.fusion.R;

/* loaded from: classes2.dex */
public class CircleProgressView extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f17064a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f17065b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f17066c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f17067d;

    /* renamed from: e, reason: collision with root package name */
    private int f17068e;

    /* renamed from: f, reason: collision with root package name */
    private int f17069f;

    /* renamed from: g, reason: collision with root package name */
    private int f17070g;

    /* renamed from: h, reason: collision with root package name */
    private int f17071h;

    /* renamed from: i, reason: collision with root package name */
    private float f17072i;

    /* renamed from: j, reason: collision with root package name */
    private float f17073j;

    /* renamed from: k, reason: collision with root package name */
    private float f17074k;

    /* renamed from: l, reason: collision with root package name */
    private int f17075l;

    /* renamed from: m, reason: collision with root package name */
    private int f17076m;

    /* renamed from: n, reason: collision with root package name */
    private float f17077n;

    /* renamed from: o, reason: collision with root package name */
    private float f17078o;

    /* renamed from: p, reason: collision with root package name */
    private int f17079p;

    /* renamed from: q, reason: collision with root package name */
    private int f17080q;

    /* renamed from: r, reason: collision with root package name */
    private float f17081r;

    public CircleProgressView(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BeiZiCircleProgressViewStyle, 0, 0);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float fApplyDimension = TypedValue.applyDimension(1, 18.0f, displayMetrics);
        float fApplyDimension2 = TypedValue.applyDimension(1, 4.0f, displayMetrics);
        this.f17081r = TypedValue.applyDimension(1, 50.0f, displayMetrics);
        this.f17072i = typedArrayObtainStyledAttributes.getDimension(R.styleable.BeiZiCircleProgressViewStyle_adScopeRadius, fApplyDimension);
        this.f17074k = typedArrayObtainStyledAttributes.getDimension(R.styleable.BeiZiCircleProgressViewStyle_adScopeStrokeWidth, fApplyDimension2);
        this.f17068e = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeCircleColor, 0);
        this.f17069f = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeRingColor, -41216);
        this.f17070g = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeTextColor, -1);
        this.f17071h = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeRingBgColor, 1589427388);
        this.f17073j = this.f17072i + (this.f17074k / 2.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f17075l = getWidth() / 2;
        int height = getHeight() / 2;
        this.f17076m = height;
        canvas.drawCircle(this.f17075l, height, this.f17072i, this.f17064a);
        RectF rectF = new RectF();
        float f2 = this.f17075l;
        float f3 = this.f17073j;
        float f4 = f2 - f3;
        rectF.left = f4;
        float f5 = this.f17076m - f3;
        rectF.top = f5;
        float f6 = f3 * 2.0f;
        rectF.right = f4 + f6;
        rectF.bottom = f6 + f5;
        canvas.drawArc(rectF, 0.0f, 360.0f, false, this.f17066c);
        if (this.f17080q > 0) {
            RectF rectF2 = new RectF();
            float f7 = this.f17075l;
            float f8 = this.f17073j;
            float f9 = f7 - f8;
            rectF2.left = f9;
            float f10 = this.f17076m - f8;
            rectF2.top = f10;
            float f11 = f8 * 2.0f;
            rectF2.right = f9 + f11;
            rectF2.bottom = f11 + f10;
            canvas.drawArc(rectF2, -90.0f, (this.f17080q / this.f17079p) * 360.0f, false, this.f17065b);
            float fMeasureText = this.f17067d.measureText("跳过", 0, 2);
            this.f17077n = fMeasureText;
            canvas.drawText("跳过", this.f17075l - (fMeasureText / 2.0f), this.f17076m + (this.f17078o / 4.0f), this.f17067d);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824) {
            size = (int) (getPaddingLeft() + this.f17081r + getPaddingRight());
        }
        if (mode2 != 1073741824) {
            size2 = (int) (getPaddingTop() + this.f17081r + getPaddingBottom());
        }
        setMeasuredDimension(size, size2);
    }

    public void setProgress(int i2) {
        this.f17080q = i2;
        postInvalidate();
    }

    public CircleProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17079p = 100;
        a(context, attributeSet);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f17064a = paint;
        paint.setAntiAlias(true);
        this.f17064a.setColor(this.f17068e);
        Paint paint2 = this.f17064a;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f17066c = paint3;
        paint3.setAntiAlias(true);
        this.f17066c.setColor(this.f17071h);
        Paint paint4 = this.f17066c;
        Paint.Style style2 = Paint.Style.STROKE;
        paint4.setStyle(style2);
        this.f17066c.setStrokeWidth(this.f17074k);
        Paint paint5 = new Paint();
        this.f17065b = paint5;
        paint5.setAntiAlias(true);
        this.f17065b.setColor(this.f17069f);
        this.f17065b.setStyle(style2);
        this.f17065b.setStrokeWidth(this.f17074k);
        this.f17065b.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.f17067d = paint6;
        paint6.setAntiAlias(true);
        this.f17067d.setStyle(style);
        this.f17067d.setColor(this.f17070g);
        this.f17067d.setTextSize((this.f17072i * 3.0f) / 5.0f);
        this.f17067d.setShadowLayer(2.0f, 1.0f, 1.0f, Color.parseColor("#000000"));
        Paint.FontMetrics fontMetrics = this.f17067d.getFontMetrics();
        this.f17078o = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
    }
}
