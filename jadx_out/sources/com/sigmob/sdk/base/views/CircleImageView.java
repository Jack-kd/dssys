package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;

/* loaded from: classes4.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    protected float f36663a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f36664b;

    /* renamed from: c, reason: collision with root package name */
    private float f36665c;

    /* renamed from: d, reason: collision with root package name */
    private float f36666d;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f36667e;

    /* renamed from: f, reason: collision with root package name */
    private final Matrix f36668f;

    /* renamed from: g, reason: collision with root package name */
    private RectF f36669g;

    public CircleImageView(Context context) {
        this(context, null);
    }

    private BitmapShader a() {
        Bitmap bitmap;
        BitmapDrawable bitmapDrawable = (BitmapDrawable) getDrawable();
        if (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null) {
            return null;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        float fMax = Math.max(this.f36665c / bitmap.getWidth(), this.f36665c / bitmap.getHeight());
        this.f36668f.setScale(fMax, fMax);
        bitmapShader.setLocalMatrix(this.f36668f);
        return bitmapShader;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        BitmapShader bitmapShaderA = a();
        if (bitmapShaderA == null) {
            super.onDraw(canvas);
            return;
        }
        this.f36667e.setShader(bitmapShaderA);
        if (this.f36664b) {
            float f2 = this.f36665c;
            canvas.drawCircle(f2 / 2.0f, f2 / 2.0f, f2 / 2.0f, this.f36667e);
        } else {
            RectF rectF = this.f36669g;
            float f3 = this.f36663a;
            canvas.drawRoundRect(rectF, f3, f3, this.f36667e);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f36665c = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        this.f36666d = measuredHeight;
        this.f36665c = Math.min(this.f36665c, measuredHeight);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f36669g = new RectF(0.0f, 0.0f, getHeight(), getHeight());
    }

    public void setCircle(boolean z2) {
        this.f36664b = z2;
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36664b = false;
        Paint paint = new Paint();
        this.f36667e = paint;
        paint.setAntiAlias(true);
        this.f36668f = new Matrix();
        this.f36663a = TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
    }
}
