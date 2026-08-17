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
public class au extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36886a;

    /* renamed from: b, reason: collision with root package name */
    private Path f36887b;

    /* renamed from: c, reason: collision with root package name */
    private int f36888c;

    /* renamed from: d, reason: collision with root package name */
    private RectF f36889d;

    /* renamed from: e, reason: collision with root package name */
    private RectF f36890e;

    /* renamed from: f, reason: collision with root package name */
    private RectF f36891f;

    public au(Context context) {
        super(context);
    }

    private void a() {
        this.f36886a = new Paint();
        this.f36887b = new Path();
        float fDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f36886a.setStrokeWidth(fDipsToIntPixels);
        this.f36888c = (int) ((getWidth() / (100.0f * fDipsToIntPixels)) * fDipsToIntPixels * 20.0f);
        int width = getWidth() - this.f36888c;
        int height = getHeight();
        this.f36886a.setStyle(Paint.Style.STROKE);
        this.f36886a.setColor(-1);
        this.f36886a.setAntiAlias(true);
        float f2 = height;
        float f3 = f2 / 2.2f;
        this.f36889d = new RectF(this.f36888c, f3, width / 2.0f, f2 - f3);
        float f4 = this.f36888c;
        RectF rectF = this.f36889d;
        this.f36890e = new RectF(f4, rectF.top, rectF.right, rectF.bottom);
        float fWidth = this.f36889d.right + this.f36890e.width();
        RectF rectF2 = this.f36889d;
        this.f36891f = new RectF(fWidth, rectF2.top, rectF2.right + rectF2.width() + this.f36890e.width(), this.f36889d.bottom);
    }

    private void b(Canvas canvas, RectF rectF) {
        this.f36887b.reset();
        this.f36886a.setColor(-1);
        this.f36886a.setStyle(Paint.Style.STROKE);
        this.f36887b.addArc(this.f36891f, 90.0f, -180.0f);
        canvas.drawPath(this.f36887b, this.f36886a);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas, this.f36889d);
        b(canvas, this.f36889d);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a();
    }

    public au(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(Canvas canvas, RectF rectF) {
        this.f36887b.reset();
        this.f36886a.setColor(-1);
        this.f36886a.setStyle(Paint.Style.STROKE);
        this.f36887b.addArc(this.f36890e, 90.0f, 180.0f);
        canvas.drawPath(this.f36887b, this.f36886a);
    }

    public au(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
