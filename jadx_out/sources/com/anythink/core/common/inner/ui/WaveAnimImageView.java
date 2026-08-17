package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class WaveAnimImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    int f5068a;

    /* renamed from: b, reason: collision with root package name */
    int f5069b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f5070c;

    /* renamed from: d, reason: collision with root package name */
    private a f5071d;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        float f5072a;

        /* renamed from: b, reason: collision with root package name */
        float f5073b;

        /* renamed from: c, reason: collision with root package name */
        float f5074c;

        public a(float f2, float f3, float f4) {
            this.f5072a = f2;
            this.f5073b = f3;
            this.f5074c = f4;
        }
    }

    public WaveAnimImageView(Context context) {
        super(context);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f5070c = paint;
        paint.setAntiAlias(true);
        this.f5070c.setStyle(Paint.Style.STROKE);
        this.f5070c.setColor(Color.parseColor("#FFFFFF"));
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a aVar = this.f5071d;
        if (aVar != null) {
            this.f5070c.setAlpha((int) (aVar.f5074c * 255.0f));
            this.f5070c.setStrokeWidth(this.f5071d.f5073b);
            canvas.drawCircle(this.f5068a, this.f5069b, this.f5071d.f5072a, this.f5070c);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f5068a = getWidth() / 2;
        this.f5069b = getHeight() / 2;
    }

    public void setWaveAnimParams(a aVar) {
        this.f5071d = aVar;
        postInvalidate();
    }

    public WaveAnimImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public WaveAnimImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
