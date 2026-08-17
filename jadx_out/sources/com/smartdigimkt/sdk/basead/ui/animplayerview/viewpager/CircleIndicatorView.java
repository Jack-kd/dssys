package com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes5.dex */
public class CircleIndicatorView extends View {

    /* renamed from: a, reason: collision with root package name */
    public boolean f43787a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f43788b;

    public CircleIndicatorView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int iMin = Math.min(width, height);
        this.f43788b.reset();
        this.f43788b.addCircle(width, height, iMin, Path.Direction.CCW);
        canvas.clipPath(this.f43788b);
        canvas.drawColor(this.f43787a ? -7829368 : -1);
        canvas.restore();
    }

    public void setSelectStatus(boolean z2) {
        this.f43787a = z2;
        invalidate();
    }

    public CircleIndicatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleIndicatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43788b = new Path();
    }
}
