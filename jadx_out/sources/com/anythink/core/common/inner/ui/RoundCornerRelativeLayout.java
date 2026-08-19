package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class RoundCornerRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private Path f5043a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f5044b;

    /* renamed from: c, reason: collision with root package name */
    private RectF f5045c;

    /* renamed from: d, reason: collision with root package name */
    private float[] f5046d;

    public RoundCornerRelativeLayout(Context context) {
        super(context);
        this.f5046d = new float[8];
        a();
    }

    private void a() {
        float fA = p.a(getContext(), 12.0f);
        setRadius(fA, fA, fA, fA);
        this.f5043a = new Path();
        this.f5044b = new Paint(1);
        this.f5045c = new RectF();
        this.f5044b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    private Path b() {
        this.f5043a.reset();
        this.f5043a.addRoundRect(this.f5045c, this.f5046d, Path.Direction.CW);
        return this.f5043a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        this.f5043a.reset();
        this.f5043a.addRoundRect(this.f5045c, this.f5046d, Path.Direction.CW);
        canvas.clipPath(this.f5043a);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f5045c.set(0.0f, 0.0f, i2, i3);
    }

    public void setRadius(int i2) {
        float fA = p.a(getContext(), i2);
        setRadius(fA, fA, fA, fA);
    }

    public void setRadius(float f2, float f3, float f4, float f5) {
        float[] fArr = this.f5046d;
        fArr[1] = f2;
        fArr[0] = f2;
        fArr[3] = f3;
        fArr[2] = f3;
        fArr[5] = f4;
        fArr[4] = f4;
        fArr[7] = f5;
        fArr[6] = f5;
        invalidate();
    }

    public RoundCornerRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5046d = new float[8];
        a();
    }

    public RoundCornerRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5046d = new float[8];
        a();
    }

    public RoundCornerRelativeLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f5046d = new float[8];
        a();
    }
}
