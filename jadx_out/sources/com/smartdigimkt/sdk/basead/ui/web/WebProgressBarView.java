package com.smartdigimkt.sdk.basead.ui.web;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes5.dex */
public class WebProgressBarView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f44062a;

    /* renamed from: b, reason: collision with root package name */
    public int f44063b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f44064c;

    public WebProgressBarView(Context context) {
        super(context);
        a();
    }

    public final void a() {
        this.f44063b = -14522893;
        Paint paint = new Paint();
        this.f44064c = paint;
        paint.setColor(this.f44063b);
        this.f44064c.setAntiAlias(true);
        this.f44064c.setDither(true);
        this.f44062a = 0;
        setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.drawRect(0.0f, 0.0f, (getWidth() * this.f44062a) / 100, getHeight(), this.f44064c);
        canvas.restore();
    }

    public void setProgress(int i2) {
        this.f44062a = i2;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public WebProgressBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public WebProgressBarView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
