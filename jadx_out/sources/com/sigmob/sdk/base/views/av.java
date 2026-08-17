package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class av extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36892a;

    /* renamed from: b, reason: collision with root package name */
    private Path f36893b;

    /* renamed from: c, reason: collision with root package name */
    private int f36894c;

    /* renamed from: d, reason: collision with root package name */
    private RectF f36895d;

    /* renamed from: e, reason: collision with root package name */
    private RectF f36896e;

    /* renamed from: f, reason: collision with root package name */
    private RectF f36897f;

    /* renamed from: g, reason: collision with root package name */
    private int f36898g;

    /* renamed from: h, reason: collision with root package name */
    private int f36899h;

    public av(Context context) {
        super(context);
    }

    private void a() {
        this.f36892a = new Paint();
        this.f36893b = new Path();
        int width = getWidth();
        int height = getHeight();
        int iDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        float f2 = iDipsToIntPixels;
        this.f36892a.setStrokeWidth(f2);
        float f3 = width;
        float f4 = f3 / (100.0f * f2);
        this.f36898g = (int) (15.0f * f4);
        this.f36899h = (int) (6.0f * f4);
        this.f36894c = Math.max((int) (f4 * f2 * 3.0f), iDipsToIntPixels * 2);
        float f5 = height;
        float f6 = 0.4f * f5;
        float f7 = (10.0f * f6) / 16.0f;
        float f8 = (f3 - f7) / 2.0f;
        float f9 = (f5 - f6) / 2.0f;
        this.f36897f = new RectF(f8, f9, f7 + f8, f6 + f9);
        RectF rectF = this.f36897f;
        float f10 = rectF.left;
        int i2 = this.f36894c;
        this.f36896e = new RectF(f10 + i2, rectF.top + i2, rectF.right - i2, rectF.bottom - (i2 * 3));
        RectF rectF2 = this.f36897f;
        float f11 = rectF2.left;
        float fWidth = rectF2.width();
        int i3 = this.f36894c;
        float f12 = f11 + ((fWidth - (i3 * 2)) / 2.2f);
        RectF rectF3 = this.f36897f;
        this.f36895d = new RectF(f12, rectF3.bottom - (i3 * 2), rectF3.right - ((rectF3.width() - (r6 * 2)) / 2.2f), this.f36897f.bottom - this.f36894c);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a();
    }

    public av(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(Canvas canvas) {
        this.f36893b.reset();
        this.f36892a.setColor(-1);
        this.f36892a.setStyle(Paint.Style.FILL);
        Path path = this.f36893b;
        RectF rectF = this.f36897f;
        int i2 = this.f36898g;
        path.addRoundRect(rectF, i2, i2, Path.Direction.CW);
        Path path2 = this.f36893b;
        RectF rectF2 = this.f36896e;
        int i3 = this.f36899h;
        Path.Direction direction = Path.Direction.CCW;
        path2.addRoundRect(rectF2, i3, i3, direction);
        Path path3 = this.f36893b;
        RectF rectF3 = this.f36895d;
        int i4 = this.f36899h;
        path3.addRoundRect(rectF3, i4, i4, direction);
        this.f36893b.close();
        canvas.drawPath(this.f36893b, this.f36892a);
    }

    public av(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
