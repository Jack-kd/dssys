package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class aj extends View {

    /* renamed from: a, reason: collision with root package name */
    private int f36795a;

    /* renamed from: b, reason: collision with root package name */
    private int f36796b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f36797c;

    /* renamed from: d, reason: collision with root package name */
    private Path f36798d;

    public aj(Context context) {
        super(context);
        a();
    }

    private void a() {
    }

    private void b() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        this.f36795a = Dips.dipsToIntPixels(5.0f, getContext());
        this.f36796b = height / 2;
        this.f36798d = new Path();
        Paint paint = new Paint(1);
        this.f36797c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f36797c.setStrokeWidth(this.f36795a);
        this.f36797c.setColor(-1);
        a(this.f36798d, new PointF(width / 2.0f, this.f36796b));
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f36798d, this.f36797c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        b();
    }

    public aj(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a(Path path, PointF pointF) {
        float fTan = (float) (pointF.x - (this.f36796b * Math.tan(2.0943951023931953d)));
        float f2 = pointF.y;
        int i2 = this.f36796b;
        float f3 = f2 + i2;
        float fTan2 = (float) (pointF.x + (i2 * Math.tan(2.0943951023931953d)));
        float f4 = pointF.y + this.f36796b;
        path.moveTo(fTan, f3);
        path.lineTo(pointF.x, pointF.y);
        path.lineTo(fTan2, f4);
    }

    public aj(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
