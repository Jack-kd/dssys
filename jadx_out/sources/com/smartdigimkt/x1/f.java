package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public class f extends b {

    /* renamed from: e, reason: collision with root package name */
    public final Paint f45066e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f45067f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f45068g;

    /* renamed from: h, reason: collision with root package name */
    public Canvas f45069h;

    /* renamed from: i, reason: collision with root package name */
    public RectF f45070i;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f45071j;

    /* renamed from: k, reason: collision with root package name */
    public final int f45072k;

    /* renamed from: l, reason: collision with root package name */
    public final int f45073l;

    /* renamed from: m, reason: collision with root package name */
    public int f45074m;

    /* renamed from: n, reason: collision with root package name */
    public int f45075n;

    /* renamed from: o, reason: collision with root package name */
    public int f45076o;

    /* renamed from: p, reason: collision with root package name */
    public final int f45077p;

    public f(View view) {
        super(view);
        if (view == null) {
            return;
        }
        int iA = k.a(view.getContext(), 5.0f);
        this.f45077p = iA;
        this.f45072k = k.a(view.getContext(), 24.0f);
        this.f45075n = k.a(view.getContext(), 30.0f);
        Paint paint = new Paint(1);
        this.f45066e = paint;
        paint.setColor(Color.parseColor("#cfffffff"));
        Paint paint2 = new Paint(1);
        this.f45067f = paint2;
        paint2.setColor(-16777216);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        Paint paint3 = new Paint(1);
        this.f45068g = paint3;
        paint3.setColor(-16777216);
        paint.setStrokeWidth(iA);
        paint.setMaskFilter(new BlurMaskFilter(20, BlurMaskFilter.Blur.NORMAL));
        int i2 = -iA;
        this.f45073l = i2;
        this.f45074m = i2 - this.f45075n;
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public void a(int i2, int i3) {
        if (this.f45061c != i2 || this.f45062d != i3) {
            c();
        }
        this.f45061c = i2;
        this.f45062d = i3;
    }

    @Override // com.smartdigimkt.x1.b
    public final ValueAnimator b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(1200L);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new e(this));
        return valueAnimatorOfFloat;
    }

    @Override // com.smartdigimkt.x1.b
    public final void c() {
        int i2;
        super.c();
        if (this.f45059a == null || (i2 = this.f45061c) == 0 || this.f45062d == 0) {
            return;
        }
        int i3 = (int) (i2 * 0.1d);
        try {
            this.f45075n = i3;
            this.f45074m = this.f45073l - i3;
            RectF rectF = new RectF();
            this.f45070i = rectF;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            int i4 = this.f45061c;
            rectF.right = i4;
            int i5 = this.f45062d;
            rectF.bottom = i5;
            this.f45071j = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
            this.f45069h = new Canvas(this.f45071j);
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public void a(Canvas canvas) {
        ValueAnimator valueAnimator;
        View view = this.f45059a;
        if (view == null || view.getVisibility() != 0 || (valueAnimator = this.f45060b) == null || !valueAnimator.isStarted() || this.f45071j == null || this.f45069h == null) {
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, this.f45061c, this.f45062d, null, 31);
        this.f45071j.eraseColor(0);
        int i2 = this.f45073l;
        int i3 = this.f45076o;
        canvas.drawLine(i2 + i3, 0.0f, this.f45074m + i3, this.f45062d, this.f45066e);
        Canvas canvas2 = this.f45069h;
        RectF rectF = this.f45070i;
        float f2 = this.f45072k;
        canvas2.drawRoundRect(rectF, f2, f2, this.f45068g);
        canvas.drawBitmap(this.f45071j, 0.0f, 0.0f, this.f45067f);
        canvas.restoreToCount(iSaveLayer);
    }
}
