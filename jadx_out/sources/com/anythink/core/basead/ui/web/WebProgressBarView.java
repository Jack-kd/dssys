package com.anythink.core.basead.ui.web;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class WebProgressBarView extends View {

    /* renamed from: a, reason: collision with root package name */
    int f1711a;

    /* renamed from: b, reason: collision with root package name */
    int f1712b;

    /* renamed from: c, reason: collision with root package name */
    Paint f1713c;

    public WebProgressBarView(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.f1712b = -14522893;
        Paint paint = new Paint();
        this.f1713c = paint;
        paint.setColor(this.f1712b);
        this.f1713c.setAntiAlias(true);
        this.f1713c.setDither(true);
        this.f1711a = 0;
        setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.drawRect(0.0f, 0.0f, (getWidth() * this.f1711a) / 100, getHeight(), this.f1713c);
        canvas.restore();
    }

    public void setProgress(int i2) {
        this.f1711a = i2;
        postInvalidate();
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
