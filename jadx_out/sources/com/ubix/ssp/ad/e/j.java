package com.ubix.ssp.ad.e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public class j extends View {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f46932a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f46933b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f46934c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f46935d;

    /* renamed from: e, reason: collision with root package name */
    private float f46936e;

    /* renamed from: f, reason: collision with root package name */
    private int f46937f;

    /* renamed from: g, reason: collision with root package name */
    private Matrix f46938g;

    /* renamed from: h, reason: collision with root package name */
    private Rect f46939h;

    /* renamed from: i, reason: collision with root package name */
    private RectF f46940i;

    /* renamed from: j, reason: collision with root package name */
    private RectF f46941j;

    /* renamed from: k, reason: collision with root package name */
    private RectF f46942k;

    /* renamed from: l, reason: collision with root package name */
    private float f46943l;

    /* renamed from: m, reason: collision with root package name */
    private float f46944m;

    /* renamed from: n, reason: collision with root package name */
    float f46945n;

    /* renamed from: o, reason: collision with root package name */
    float f46946o;

    /* renamed from: p, reason: collision with root package name */
    float f46947p;

    /* renamed from: q, reason: collision with root package name */
    Bitmap f46948q;

    /* renamed from: r, reason: collision with root package name */
    int f46949r;

    /* renamed from: s, reason: collision with root package name */
    int f46950s;

    /* renamed from: t, reason: collision with root package name */
    int f46951t;

    /* renamed from: u, reason: collision with root package name */
    float f46952u;

    /* renamed from: v, reason: collision with root package name */
    private final float f46953v;

    /* renamed from: w, reason: collision with root package name */
    ValueAnimator f46954w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f46955x;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            j.this.f46936e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            j.this.invalidate();
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            j.this.f46938g.reset();
            j jVar = j.this;
            jVar.f46952u = 0.0f;
            jVar.f46936e = 0.0f;
            j.this.f46938g.setScale(j.this.f46943l, j.this.f46944m);
            j.this.f46938g.postTranslate(0.0f, j.this.f46945n);
            if (j.this.f46955x) {
                return;
            }
            j.this.f46954w.setStartDelay(500L);
            j.this.f46954w.start();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ValueAnimator valueAnimator = j.this.f46954w;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    public j(Context context) {
        super(context);
        this.f46936e = 0.0f;
        this.f46937f = -1;
        this.f46938g = new Matrix();
        this.f46939h = new Rect();
        this.f46940i = new RectF();
        this.f46941j = new RectF();
        this.f46942k = new RectF();
        this.f46949r = 0;
        this.f46950s = 0;
        this.f46951t = 0;
        this.f46952u = 0.0f;
        this.f46953v = 45.0f;
        this.f46955x = false;
        a();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f46954w;
        if (valueAnimator != null) {
            this.f46955x = true;
            valueAnimator.cancel();
            this.f46954w.removeAllUpdateListeners();
            this.f46954w.removeAllListeners();
            this.f46954w = null;
        }
        Bitmap bitmap = this.f46948q;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        float f4;
        super.onDraw(canvas);
        if (this.f46932a == null) {
            return;
        }
        canvas.save();
        canvas.drawBitmap(this.f46932a, this.f46939h, this.f46942k, (Paint) null);
        this.f46948q.eraseColor(0);
        Canvas canvas2 = new Canvas(this.f46948q);
        float f5 = this.f46936e;
        if (f5 > 0.0f) {
            if (f5 <= 1.0f) {
                f3 = f5 * 45.0f;
                int i2 = this.f46951t;
                f2 = i2;
                f4 = i2 - ((int) ((f2 - this.f46945n) * f5));
            } else if (f5 <= 2.0f) {
                int i3 = this.f46951t;
                f2 = i3;
                float f6 = 2.0f - f5;
                int i4 = (int) ((f2 - this.f46945n) * f6);
                f3 = f6 * 45.0f;
                f4 = i3 - i4;
            } else if (f5 <= 3.0f) {
                float f7 = this.f46951t;
                float f8 = f5 - 2.0f;
                int i5 = (int) ((f7 - this.f46945n) * f8);
                float f9 = f8 * 45.0f;
                canvas2.drawRect(f7, 0.0f, r6 + i5, this.f46950s, this.f46934c);
                this.f46938g.postRotate(f9 - this.f46952u, this.f46946o, this.f46947p);
                this.f46952u = f9;
            } else {
                float f10 = (4.0f - f5) * 45.0f;
                canvas2.drawRect(this.f46951t, 0.0f, r2 + ((int) ((r5 - this.f46945n) * r8)), this.f46950s, this.f46934c);
                this.f46938g.postRotate(f10 - this.f46952u, this.f46946o, this.f46947p);
                this.f46952u = f10;
            }
            canvas2.drawRect(f4, 0.0f, f2, this.f46950s, this.f46934c);
            this.f46938g.postRotate(this.f46952u - f3, this.f46946o, this.f46947p);
            this.f46952u = f3;
        }
        canvas2.drawBitmap(this.f46932a, this.f46939h, this.f46942k, this.f46935d);
        canvas.drawBitmap(this.f46948q, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(this.f46933b, this.f46938g, null);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        c();
    }

    private void c() {
        if (this.f46932a == null || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        getHeight();
        this.f46945n = (getWidth() - r0) / 2.0f;
        this.f46939h.set(0, 0, this.f46932a.getWidth(), this.f46932a.getHeight());
        RectF rectF = this.f46942k;
        float f2 = this.f46945n;
        float width = (int) (getWidth() * 0.8f);
        rectF.set(f2, 0.0f, width + f2, ((this.f46932a.getHeight() * 1.0f) / this.f46932a.getWidth()) * width);
        this.f46940i.set(0.0f, 0.0f, this.f46933b.getWidth(), this.f46933b.getHeight());
        this.f46941j.set(0.0f, 0.0f, getWidth(), getHeight());
        this.f46943l = (getWidth() * 1.0f) / this.f46933b.getWidth();
        float width2 = (getWidth() * 1.0f) / this.f46933b.getWidth();
        this.f46944m = width2;
        this.f46938g.setScale(this.f46943l, width2);
        this.f46938g.postTranslate(0.0f, this.f46945n);
        this.f46949r = getWidth();
        int iHeight = (int) this.f46942k.height();
        this.f46950s = iHeight;
        int i2 = this.f46949r;
        this.f46951t = i2 / 2;
        this.f46948q = Bitmap.createBitmap(i2, iHeight, Bitmap.Config.ARGB_8888);
        this.f46946o = (this.f46933b.getWidth() * this.f46943l) / 2.0f;
        this.f46947p = ((this.f46945n + this.f46933b.getHeight()) * this.f46943l) / 2.0f;
    }

    public void b() {
        if (this.f46954w == null) {
            setWillNotDraw(false);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 4.0f);
            this.f46954w = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(2000L);
            this.f46954w.setInterpolator(new LinearInterpolator());
            this.f46954w.addUpdateListener(new a());
            this.f46954w.addListener(new b());
            post(new c());
        }
    }

    private void a() {
        setWillNotDraw(true);
        this.f46932a = q.a(getContext(), "ubix/ic_shake_arrow.webp");
        this.f46933b = q.a(getContext(), "ubix/ic_shake_phone.webp");
        Paint paint = new Paint(1);
        this.f46934c = paint;
        paint.setColor(this.f46937f);
        this.f46934c.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.f46935d = paint2;
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }
}
