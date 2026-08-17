package com.anythink.core.common.inner.ui.a.a;

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
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class d extends a {

    /* renamed from: e, reason: collision with root package name */
    private int f5087e;

    /* renamed from: f, reason: collision with root package name */
    private Paint f5088f;

    /* renamed from: g, reason: collision with root package name */
    private Paint f5089g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f5090h;

    /* renamed from: i, reason: collision with root package name */
    private Canvas f5091i;

    /* renamed from: j, reason: collision with root package name */
    private RectF f5092j;

    /* renamed from: k, reason: collision with root package name */
    private Bitmap f5093k;

    /* renamed from: l, reason: collision with root package name */
    private int f5094l;

    /* renamed from: m, reason: collision with root package name */
    private int f5095m;

    /* renamed from: n, reason: collision with root package name */
    private int f5096n;

    /* renamed from: o, reason: collision with root package name */
    private int f5097o;

    /* renamed from: p, reason: collision with root package name */
    private int f5098p;

    /* renamed from: q, reason: collision with root package name */
    private int f5099q;

    public d(View view) {
        super(view);
        if (view == null) {
            return;
        }
        this.f5099q = p.a(view.getContext(), 5.0f);
        this.f5094l = p.a(view.getContext(), 24.0f);
        this.f5097o = p.a(view.getContext(), 30.0f);
        this.f5087e = 20;
        Paint paint = new Paint(1);
        this.f5088f = paint;
        paint.setColor(Color.parseColor("#cfffffff"));
        Paint paint2 = new Paint(1);
        this.f5089g = paint2;
        paint2.setColor(-16777216);
        this.f5089g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        Paint paint3 = new Paint(1);
        this.f5090h = paint3;
        paint3.setColor(-16777216);
        this.f5088f.setStrokeWidth(this.f5099q);
        this.f5088f.setMaskFilter(new BlurMaskFilter(this.f5087e, BlurMaskFilter.Blur.NORMAL));
        int i2 = -this.f5099q;
        this.f5095m = i2;
        this.f5096n = i2 - this.f5097o;
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a
    public final ValueAnimator e() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(1200L);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.core.common.inner.ui.a.a.d.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view = d.this.f5080a;
                if (view == null || view.getVisibility() != 0) {
                    return;
                }
                if (d.this.f5093k == null && d.this.f5091i == null) {
                    return;
                }
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                d dVar = d.this;
                d.this.f5098p = (int) ((dVar.f5082c + dVar.f5097o + (d.this.f5099q * 2)) * fFloatValue);
                d.this.f5080a.postInvalidate();
            }
        });
        return valueAnimatorOfFloat;
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a
    public final void f() {
        int i2;
        super.f();
        if (this.f5080a == null || (i2 = this.f5082c) == 0 || this.f5083d == 0) {
            return;
        }
        int i3 = (int) (i2 * 0.1d);
        try {
            this.f5097o = i3;
            this.f5096n = this.f5095m - i3;
            RectF rectF = new RectF();
            this.f5092j = rectF;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            int i4 = this.f5082c;
            rectF.right = i4;
            int i5 = this.f5083d;
            rectF.bottom = i5;
            this.f5093k = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
            this.f5091i = new Canvas(this.f5093k);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public void a(int i2, int i3) {
        if (this.f5082c != i2 || this.f5083d != i3) {
            f();
        }
        super.a(i2, i3);
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public void a(Canvas canvas) {
        ValueAnimator valueAnimator;
        super.a(canvas);
        View view = this.f5080a;
        if (view == null || view.getVisibility() != 0 || (valueAnimator = this.f5081b) == null || !valueAnimator.isStarted() || this.f5093k == null || this.f5091i == null) {
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, this.f5082c, this.f5083d, null, 31);
        this.f5093k.eraseColor(0);
        int i2 = this.f5095m;
        int i3 = this.f5098p;
        canvas.drawLine(i2 + i3, 0.0f, this.f5096n + i3, this.f5083d, this.f5088f);
        Canvas canvas2 = this.f5091i;
        RectF rectF = this.f5092j;
        int i4 = this.f5094l;
        canvas2.drawRoundRect(rectF, i4, i4, this.f5090h);
        canvas.drawBitmap(this.f5093k, 0.0f, 0.0f, this.f5089g);
        canvas.restoreToCount(iSaveLayer);
    }
}
