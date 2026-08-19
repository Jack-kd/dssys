package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLogger;

/* loaded from: classes4.dex */
public class ag extends View {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36763a = "ag";

    /* renamed from: b, reason: collision with root package name */
    private Paint f36764b;

    /* renamed from: c, reason: collision with root package name */
    private RectF f36765c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f36766d;

    /* renamed from: e, reason: collision with root package name */
    private int f36767e;

    /* renamed from: f, reason: collision with root package name */
    private int f36768f;

    /* renamed from: g, reason: collision with root package name */
    private int f36769g;

    public ag(Context context) {
        super(context);
        this.f36768f = 15;
    }

    private void a() {
        Paint paint = new Paint();
        this.f36764b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f36764b.setColor(-1);
        int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
        this.f36769g = iAsIntPixels;
        this.f36764b.setStrokeWidth(iAsIntPixels);
        this.f36764b.setAlpha(127);
        Paint paint2 = new Paint();
        this.f36766d = paint2;
        paint2.setColor(-1);
        this.f36766d.setStyle(Paint.Style.FILL);
        this.f36766d.setTextSize(TypedValue.applyDimension(2, 12.0f, getResources().getDisplayMetrics()));
        this.f36767e = Dips.asIntPixels(10.0f, getContext());
        int i2 = this.f36769g;
        this.f36765c = new RectF(i2, i2, getWidth() - this.f36769g, getHeight() - this.f36769g);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        String strValueOf;
        float f2;
        super.onDraw(canvas);
        this.f36764b.setStyle(Paint.Style.FILL);
        this.f36764b.setColor(-16777216);
        this.f36764b.setAlpha(127);
        RectF rectF = this.f36765c;
        float f3 = rectF.right;
        canvas.drawRoundRect(rectF, f3 / 2.0f, f3 / 2.0f, this.f36764b);
        canvas.drawText("跳过", this.f36767e, ((this.f36765c.bottom / 2.0f) + ((this.f36766d.getFontMetrics().bottom - this.f36766d.getFontMetrics().top) / 2.0f)) - this.f36766d.getFontMetrics().bottom, this.f36766d);
        this.f36764b.setStyle(Paint.Style.STROKE);
        this.f36764b.setColor(-1);
        int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
        this.f36769g = iAsIntPixels;
        this.f36764b.setStrokeWidth(iAsIntPixels);
        this.f36764b.setAlpha(127);
        RectF rectF2 = this.f36765c;
        float f4 = rectF2.right;
        canvas.drawRoundRect(rectF2, f4 / 2.0f, f4 / 2.0f, this.f36764b);
        float fMeasureText = this.f36767e + this.f36766d.measureText("跳过") + (this.f36767e / 2.0f);
        int i2 = this.f36769g;
        canvas.drawLine(fMeasureText + (i2 * 2), i2 * 2, fMeasureText + (i2 * 2), this.f36765c.bottom - (i2 * 2), this.f36764b);
        int i3 = this.f36768f;
        if (i3 > 9) {
            strValueOf = String.valueOf(i3);
            f2 = this.f36767e / 2.0f;
        } else {
            strValueOf = String.valueOf(i3);
            f2 = this.f36767e;
        }
        canvas.drawText(strValueOf, fMeasureText + f2, ((this.f36765c.bottom / 2.0f) + ((this.f36766d.getFontMetrics().bottom - this.f36766d.getFontMetrics().top) / 2.0f)) - this.f36766d.getFontMetrics().bottom, this.f36766d);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a();
    }

    public ag(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36768f = 15;
    }

    public void a(int i2) {
        SigmobLogger.d(f36763a, "updateTimer: countdown = " + i2, new Object[0]);
        this.f36768f = i2;
        invalidate();
    }

    public ag(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36768f = 15;
    }
}
