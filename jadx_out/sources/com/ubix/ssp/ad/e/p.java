package com.ubix.ssp.ad.e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public class p extends View {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f47023a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f47024b;

    /* renamed from: c, reason: collision with root package name */
    private Bitmap f47025c;

    /* renamed from: d, reason: collision with root package name */
    private float f47026d;

    /* renamed from: e, reason: collision with root package name */
    private int f47027e;

    /* renamed from: f, reason: collision with root package name */
    private Matrix f47028f;

    /* renamed from: g, reason: collision with root package name */
    private Rect f47029g;

    /* renamed from: h, reason: collision with root package name */
    private Rect f47030h;

    /* renamed from: i, reason: collision with root package name */
    private RectF f47031i;

    /* renamed from: j, reason: collision with root package name */
    private RectF f47032j;

    /* renamed from: k, reason: collision with root package name */
    private RectF f47033k;

    /* renamed from: l, reason: collision with root package name */
    float f47034l;

    /* renamed from: m, reason: collision with root package name */
    ValueAnimator f47035m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f47036n;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            p.this.f47026d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            p.this.invalidate();
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (p.this.f47036n) {
                return;
            }
            p.this.f47035m.setStartDelay(500L);
            p.this.f47035m.start();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ValueAnimator valueAnimator = p.this.f47035m;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    public p(Context context) {
        super(context);
        this.f47026d = 0.0f;
        this.f47027e = -1;
        this.f47028f = new Matrix();
        this.f47029g = new Rect();
        this.f47030h = new Rect();
        this.f47031i = new RectF();
        this.f47032j = new RectF();
        this.f47033k = new RectF();
        this.f47036n = false;
        a();
    }

    private void c() {
        if (this.f47025c == null || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        getHeight();
        float width = (int) (getWidth() * 0.15f);
        float height = ((this.f47023a.getHeight() * 1.0f) / this.f47023a.getWidth()) * width;
        this.f47034l = 0.0f;
        this.f47029g.set(0, 0, this.f47023a.getWidth(), this.f47023a.getHeight());
        this.f47032j.set(this.f47034l, (getHeight() - height) / 2.0f, width + this.f47034l, (getHeight() + height) / 2.0f);
        this.f47033k.set(getWidth() - r0, (getHeight() - height) / 2.0f, getWidth(), (getHeight() + height) / 2.0f);
        this.f47030h.set(0, 0, this.f47025c.getWidth(), this.f47025c.getHeight());
        this.f47031i.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void b() {
        if (this.f47035m == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -1.0f, 0.0f, 1.0f, 0.0f);
            this.f47035m = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(2000L);
            this.f47035m.setInterpolator(new LinearInterpolator());
            this.f47035m.addUpdateListener(new a());
            this.f47035m.addListener(new b());
            post(new c());
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f47035m;
        if (valueAnimator != null) {
            this.f47036n = true;
            valueAnimator.cancel();
            this.f47035m.removeAllUpdateListeners();
            this.f47035m.removeAllListeners();
            this.f47035m = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f47025c == null) {
            return;
        }
        canvas.drawBitmap(this.f47023a, this.f47029g, this.f47032j, (Paint) null);
        canvas.drawBitmap(this.f47024b, this.f47029g, this.f47033k, (Paint) null);
        canvas.save();
        float[] fArr = {0.0f, 0.0f};
        this.f47028f.mapPoints(fArr);
        canvas.translate(fArr[0], fArr[1]);
        Camera camera = new Camera();
        camera.setLocation(0.0f, 0.0f, getResources().getDisplayMetrics().density * (-1.0f));
        camera.rotateY(this.f47026d * 45.0f);
        Matrix matrix = new Matrix();
        camera.getMatrix(matrix);
        matrix.preTranslate((-getWidth()) / 2, (-getHeight()) / 2);
        matrix.postTranslate(getWidth() / 2, getHeight() / 2);
        canvas.concat(matrix);
        canvas.drawBitmap(this.f47025c, this.f47030h, this.f47031i, (Paint) null);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        c();
    }

    private void a() {
        this.f47023a = q.a(getContext(), "ubix/ic_shake_revolve.webp", 0, true);
        this.f47024b = q.a(getContext(), "ubix/ic_shake_revolve.webp", 180, true);
        this.f47025c = q.a(getContext(), "ubix/ic_shake_phone.webp");
    }
}
