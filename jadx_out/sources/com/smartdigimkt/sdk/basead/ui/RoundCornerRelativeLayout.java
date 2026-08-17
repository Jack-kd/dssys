package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public class RoundCornerRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public Path f43566a;

    /* renamed from: b, reason: collision with root package name */
    public Paint f43567b;

    /* renamed from: c, reason: collision with root package name */
    public RectF f43568c;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f43569d;

    public RoundCornerRelativeLayout(Context context) {
        super(context);
        this.f43569d = new float[8];
        a();
    }

    public final void a() {
        float fA = k.a(getContext(), 12.0f);
        setRadius(fA, fA, fA, fA);
        this.f43566a = new Path();
        this.f43567b = new Paint(1);
        this.f43568c = new RectF();
        this.f43567b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.save();
        this.f43566a.reset();
        this.f43566a.addRoundRect(this.f43568c, this.f43569d, Path.Direction.CW);
        canvas.clipPath(this.f43566a);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f43568c.set(0.0f, 0.0f, i2, i3);
    }

    public void setRadius(int i2) {
        float fA = k.a(getContext(), i2);
        setRadius(fA, fA, fA, fA);
    }

    public void setRadius(float f2, float f3, float f4, float f5) {
        float[] fArr = this.f43569d;
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
        this.f43569d = new float[8];
        a();
    }

    public RoundCornerRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43569d = new float[8];
        a();
    }

    @RequiresApi(api = 21)
    public RoundCornerRelativeLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f43569d = new float[8];
        a();
    }
}
