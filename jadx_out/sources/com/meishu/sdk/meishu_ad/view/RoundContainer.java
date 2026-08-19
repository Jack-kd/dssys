package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class RoundContainer extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public float f32710a;

    /* renamed from: b, reason: collision with root package name */
    public int f32711b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f32712c;

    /* renamed from: d, reason: collision with root package name */
    public final Path f32713d;

    public RoundContainer(Context context) {
        this(context, null);
    }

    public final void a(int i2, int i3) {
        this.f32713d.reset();
        RectF rectF = new RectF(0.0f, 0.0f, i2, i3);
        Path path = this.f32713d;
        float f2 = this.f32710a;
        path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawPath(this.f32713d, this.f32712c);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        a(i2, i3);
    }

    public void setContainerBackgroundColor(int i2) {
        this.f32711b = i2;
        this.f32712c.setColor(i2);
        invalidate();
    }

    public void setCornerRadius(float f2) {
        this.f32710a = f2;
        a(getWidth(), getHeight());
        invalidate();
    }

    public RoundContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32710a = 16.0f;
        this.f32711b = -1;
        Paint paint = new Paint(1);
        this.f32712c = paint;
        paint.setColor(this.f32711b);
        paint.setStyle(Paint.Style.FILL);
        this.f32713d = new Path();
        setWillNotDraw(false);
    }
}
