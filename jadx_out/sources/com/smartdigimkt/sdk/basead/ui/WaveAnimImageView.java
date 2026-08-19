package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.smartdigimkt.v1.q6;

/* loaded from: classes5.dex */
public class WaveAnimImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f43674a;

    /* renamed from: b, reason: collision with root package name */
    public q6 f43675b;

    /* renamed from: c, reason: collision with root package name */
    public int f43676c;

    /* renamed from: d, reason: collision with root package name */
    public int f43677d;

    public WaveAnimImageView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f43674a = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor("#FFFFFF"));
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        q6 q6Var = this.f43675b;
        if (q6Var != null) {
            this.f43674a.setAlpha((int) (q6Var.f44588c * 255.0f));
            this.f43674a.setStrokeWidth(this.f43675b.f44587b);
            canvas.drawCircle(this.f43676c, this.f43677d, this.f43675b.f44586a, this.f43674a);
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f43676c = getWidth() / 2;
        this.f43677d = getHeight() / 2;
    }

    public void setWaveAnimParams(q6 q6Var) {
        this.f43675b = q6Var;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public WaveAnimImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f43674a = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor("#FFFFFF"));
    }

    public WaveAnimImageView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Paint paint = new Paint();
        this.f43674a = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor("#FFFFFF"));
    }
}
