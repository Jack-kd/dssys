package com.sigmob.sdk.base.views;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.sigmob.sdk.base.views.r;

/* renamed from: com.sigmob.sdk.base.views.k, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1299k extends AbstractC1296h {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f37085a;

    /* renamed from: b, reason: collision with root package name */
    private final float f37086b;

    public C1299k() {
        this(8.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        float f2 = this.f37086b;
        float f3 = iHeight;
        float f4 = iWidth;
        canvas.drawLine(f2 + 0.0f, f3 - f2, f4 - f2, f2 + 0.0f, this.f37085a);
        float f5 = this.f37086b;
        canvas.drawLine(f5 + 0.0f, f5 + 0.0f, f4 - f5, f3 - f5, this.f37085a);
    }

    @Override // com.sigmob.sdk.base.views.AbstractC1296h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.sigmob.sdk.base.views.AbstractC1296h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i2) {
        super.setAlpha(i2);
    }

    @Override // com.sigmob.sdk.base.views.AbstractC1296h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    private C1299k(float f2) {
        this.f37086b = f2 / 2.0f;
        Paint paint = new Paint();
        this.f37085a = paint;
        paint.setColor(-1);
        paint.setStrokeWidth(f2);
        paint.setStrokeCap(r.a.f37168f);
    }
}
