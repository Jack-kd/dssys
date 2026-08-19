package com.sigmob.sdk.base.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.views.r;

/* loaded from: classes4.dex */
public class y extends AbstractC1296h {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f37216a;

    /* renamed from: b, reason: collision with root package name */
    private final Paint f37217b;

    /* renamed from: c, reason: collision with root package name */
    private int f37218c;

    /* renamed from: d, reason: collision with root package name */
    private int f37219d;

    /* renamed from: e, reason: collision with root package name */
    private int f37220e;

    /* renamed from: f, reason: collision with root package name */
    private int f37221f;

    /* renamed from: g, reason: collision with root package name */
    private float f37222g;

    /* renamed from: h, reason: collision with root package name */
    private final int f37223h;

    public y(Context context) {
        Paint paint = new Paint();
        this.f37216a = paint;
        paint.setColor(-1);
        paint.setAlpha(128);
        paint.setStyle(r.b.f37173e);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f37217b = paint2;
        paint2.setColor(r.b.f37174f);
        paint2.setAlpha(255);
        paint2.setStyle(r.b.f37176h);
        paint2.setAntiAlias(true);
        this.f37223h = Dips.dipsToIntPixels(4.0f, context);
    }

    private void d() {
        this.f37220e = this.f37218c;
    }

    public void a() {
        this.f37221f = 0;
    }

    @Deprecated
    public float b() {
        return this.f37222g;
    }

    @Deprecated
    public int c() {
        return this.f37220e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f37216a);
        int i2 = this.f37218c;
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (i2 > 0 ? this.f37220e / i2 : 0.0f), getBounds().bottom, this.f37217b);
        int i3 = this.f37219d;
        if (i3 <= 0 || i3 >= this.f37218c) {
            return;
        }
        float f2 = getBounds().right * this.f37222g;
        canvas.drawRect(f2, getBounds().top, f2 + this.f37223h, getBounds().bottom, this.f37217b);
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

    @SuppressLint({"DefaultLocale"})
    public void a(int i2) {
        int i3 = this.f37221f;
        if (i2 >= i3) {
            this.f37220e = i2;
            this.f37221f = i2;
        } else if (i2 != 0) {
            SigmobLog.d(String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(i3), Integer.valueOf(i2)));
            d();
        }
        invalidateSelf();
    }

    public void a(int i2, int i3) {
        this.f37218c = i2;
        this.f37219d = i3;
        this.f37222g = i2 > 0 ? i3 / i2 : 0.0f;
    }
}
