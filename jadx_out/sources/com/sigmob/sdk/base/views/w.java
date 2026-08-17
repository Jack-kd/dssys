package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class w extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f37205a;

    /* renamed from: b, reason: collision with root package name */
    private RectF f37206b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f37207c;

    /* renamed from: d, reason: collision with root package name */
    private int f37208d;

    /* renamed from: e, reason: collision with root package name */
    private int f37209e;

    /* renamed from: f, reason: collision with root package name */
    private String f37210f;

    public w(Context context) {
        super(context);
        this.f37210f = "";
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f37205a == null) {
            Paint paint = new Paint();
            this.f37205a = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f37205a.setColor(-1);
            int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
            this.f37209e = iAsIntPixels;
            this.f37205a.setStrokeWidth(iAsIntPixels);
            this.f37205a.setAlpha(127);
            Paint paint2 = new Paint();
            this.f37207c = paint2;
            paint2.setColor(-1);
            this.f37207c.setStyle(Paint.Style.FILL);
            this.f37207c.setTextSize(TypedValue.applyDimension(2, 12.0f, getResources().getDisplayMetrics()));
            this.f37208d = Dips.asIntPixels(10.0f, getContext());
        }
        int i2 = this.f37209e;
        this.f37206b = new RectF(i2, i2, getWidth() - this.f37209e, getHeight() - this.f37209e);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Paint paint = this.f37205a;
        if (paint == null) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        this.f37205a.setColor(-16777216);
        this.f37205a.setAlpha(102);
        RectF rectF = this.f37206b;
        float f2 = rectF.right;
        canvas.drawRoundRect(rectF, f2 / 2.0f, f2 / 2.0f, this.f37205a);
        this.f37205a.setStyle(Paint.Style.STROKE);
        this.f37205a.setColor(-1);
        this.f37205a.setAlpha(76);
        RectF rectF2 = this.f37206b;
        float f3 = rectF2.right;
        canvas.drawRoundRect(rectF2, f3 / 2.0f, f3 / 2.0f, this.f37205a);
        canvas.drawText(this.f37210f, (getWidth() - this.f37207c.measureText(this.f37210f)) / 2.0f, ((this.f37206b.bottom / 2.0f) + ((this.f37207c.getFontMetrics().bottom - this.f37207c.getFontMetrics().top) / 2.0f)) - this.f37207c.getFontMetrics().bottom, this.f37207c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a();
    }

    public void setText(String str) {
        this.f37210f = str;
        invalidate();
    }

    public w(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37210f = "";
        a(context);
    }

    private void a(Context context) {
        com.sigmob.sdk.base.utils.w.a(this, new Runnable() { // from class: com.sigmob.sdk.base.views.w.1
            @Override // java.lang.Runnable
            public void run() {
                w.this.a();
            }
        });
    }

    public w(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f37210f = "";
        a(context);
    }
}
