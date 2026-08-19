package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes4.dex */
public class MeishuImageView2 extends AppCompatImageView {

    /* renamed from: a, reason: collision with root package name */
    public RectF f32683a;

    /* renamed from: b, reason: collision with root package name */
    public Path f32684b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f32685c;

    /* renamed from: d, reason: collision with root package name */
    public float f32686d;

    public MeishuImageView2(Context context) {
        super(context);
        this.f32683a = new RectF();
        this.f32684b = new Path();
        this.f32685c = new Paint();
        a();
    }

    public final void a() {
        this.f32686d = getResources().getDisplayMetrics().scaledDensity;
        this.f32685c.setAntiAlias(true);
        this.f32685c.setDither(true);
        this.f32685c.setStyle(Paint.Style.STROKE);
        this.f32685c.setStrokeWidth(this.f32686d * 0.0f);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.f32683a.set(0.0f, 0.0f, getWidth(), getHeight());
        this.f32684b.reset();
        Path path = this.f32684b;
        RectF rectF = this.f32683a;
        float f2 = this.f32686d * 6.0f;
        path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        canvas.clipPath(this.f32684b);
        super.onDraw(canvas);
    }

    public MeishuImageView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32683a = new RectF();
        this.f32684b = new Path();
        this.f32685c = new Paint();
        a();
    }

    public MeishuImageView2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32683a = new RectF();
        this.f32684b = new Path();
        this.f32685c = new Paint();
        a();
    }
}
