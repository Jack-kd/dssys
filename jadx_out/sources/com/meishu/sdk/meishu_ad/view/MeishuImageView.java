package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes4.dex */
public class MeishuImageView extends AppCompatImageView {

    /* renamed from: a, reason: collision with root package name */
    public RectF f32678a;

    /* renamed from: b, reason: collision with root package name */
    public Path f32679b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f32680c;

    /* renamed from: d, reason: collision with root package name */
    public int f32681d;

    /* renamed from: e, reason: collision with root package name */
    public float f32682e;

    public MeishuImageView(Context context) {
        super(context);
        this.f32678a = new RectF();
        this.f32679b = new Path();
        this.f32680c = new Paint();
        a();
    }

    public final void a() {
        this.f32681d = -1;
        this.f32682e = getResources().getDisplayMetrics().scaledDensity;
        this.f32680c.setAntiAlias(true);
        this.f32680c.setDither(true);
        this.f32680c.setColor(this.f32681d);
        this.f32680c.setStyle(Paint.Style.STROKE);
        this.f32680c.setStrokeWidth(this.f32682e * 6.0f);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.f32678a.set(6.0f, 6.0f, getWidth() - 12, getHeight() - 12);
        this.f32679b.reset();
        Path path = this.f32679b;
        RectF rectF = this.f32678a;
        float f2 = this.f32682e * 6.0f;
        path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        canvas.drawPath(this.f32679b, this.f32680c);
        canvas.clipPath(this.f32679b);
        canvas.drawColor(this.f32681d);
        super.onDraw(canvas);
    }

    public MeishuImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32678a = new RectF();
        this.f32679b = new Path();
        this.f32680c = new Paint();
        a();
    }

    public MeishuImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32678a = new RectF();
        this.f32679b = new Path();
        this.f32680c = new Paint();
        a();
    }
}
