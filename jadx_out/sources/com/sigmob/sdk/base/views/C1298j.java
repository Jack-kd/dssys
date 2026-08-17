package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* renamed from: com.sigmob.sdk.base.views.j, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1298j extends View {

    /* renamed from: a, reason: collision with root package name */
    private static float f37076a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f37077b;

    /* renamed from: c, reason: collision with root package name */
    private Path f37078c;

    /* renamed from: d, reason: collision with root package name */
    private PointF f37079d;

    /* renamed from: e, reason: collision with root package name */
    private float f37080e;

    /* renamed from: f, reason: collision with root package name */
    private float f37081f;

    /* renamed from: g, reason: collision with root package name */
    private float f37082g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f37083h;

    /* renamed from: i, reason: collision with root package name */
    private Paint f37084i;

    public C1298j(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.f37077b = new Paint();
        this.f37084i = new Paint();
        f37076a = Dips.dipsToIntPixels(6.0f, getContext());
        this.f37077b.setColor(-1);
        this.f37077b.setStrokeWidth(f37076a);
        this.f37077b.setStyle(Paint.Style.STROKE);
        this.f37077b.setAntiAlias(true);
        this.f37084i.setAntiAlias(true);
        this.f37084i.setColor(-16777216);
        this.f37084i.setStyle(Paint.Style.FILL);
        this.f37084i.setAlpha(51);
    }

    private void b() {
        double d2 = 0.62831855f;
        this.f37080e = ((this.f37081f / 2.0f) * ((float) Math.tan(d2))) / ((float) Math.sin(d2));
        this.f37079d = new PointF(this.f37081f / 2.0f, this.f37080e + Dips.dipsToIntPixels(30.0f, getContext()));
        this.f37078c = new Path();
        PointF pointF = this.f37079d;
        float f2 = pointF.x;
        float f3 = this.f37080e;
        float f4 = pointF.y;
        this.f37078c.addArc(new RectF(f2 - f3, f4 - f3, f2 + f3, f4 + f3), 0.0f, -180.0f);
    }

    public float getLineWidth() {
        return this.f37077b.getStrokeWidth();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f37083h) {
            canvas.drawPath(this.f37078c, this.f37084i);
        }
        canvas.drawPath(this.f37078c, this.f37077b);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f37081f = i2;
        this.f37082g = i3;
        b();
    }

    public void setLineWidth(float f2) {
        this.f37077b.setStrokeWidth(f2);
        invalidate();
    }

    public C1298j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public void a(boolean z2) {
        this.f37083h = z2;
    }

    public C1298j(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
