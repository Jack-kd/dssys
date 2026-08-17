package com.ubix.ssp.ad.e;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public class m extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private float f46978a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f46979b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f46980c;

    /* renamed from: d, reason: collision with root package name */
    Path f46981d;

    /* renamed from: e, reason: collision with root package name */
    Path f46982e;

    /* renamed from: f, reason: collision with root package name */
    boolean f46983f;

    /* renamed from: g, reason: collision with root package name */
    int f46984g;

    /* renamed from: h, reason: collision with root package name */
    private AnimatorSet f46985h;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m mVar = m.this;
            if (mVar.f46983f || mVar.f46985h == null) {
                return;
            }
            m.this.f46985h.start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public m(Context context) {
        super(context);
        this.f46978a = 4.0f;
        this.f46979b = new Paint();
        this.f46980c = new Paint();
        this.f46981d = new Path();
        this.f46982e = new Path();
        this.f46983f = false;
        this.f46984g = 0;
        this.f46985h = new AnimatorSet();
        float fA = com.ubix.ssp.ad.e.a0.r.a().a(context);
        this.f46978a = fA;
        this.f46979b.setStrokeWidth(fA * 3.0f);
        Paint paint = this.f46979b;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f46979b.setColor(-1);
        this.f46979b.setAntiAlias(true);
        this.f46980c.setStrokeWidth(this.f46978a * 3.0f);
        this.f46980c.setStyle(style);
        this.f46980c.setColor(-7829368);
        this.f46980c.setAntiAlias(true);
        setBackgroundColor(0);
    }

    private void b() {
        AnimatorSet animatorSet;
        if (getWidth() == 0 || (animatorSet = this.f46985h) == null || animatorSet.isRunning()) {
            return;
        }
        float width = (int) (getWidth() * 0.6d);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(findViewById(200023), "translationX", 0.0f, width);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(findViewById(200023), "translationX", width, 0.0f);
        objectAnimatorOfFloat.setDuration(1400L);
        objectAnimatorOfFloat2.setDuration(1400L);
        this.f46985h.play(objectAnimatorOfFloat2).after(objectAnimatorOfFloat);
        this.f46985h.addListener(new a());
        this.f46985h.start();
    }

    private void c() {
        this.f46983f = true;
        View viewFindViewById = findViewById(200023);
        if (viewFindViewById != null) {
            removeView(viewFindViewById);
        }
        AnimatorSet animatorSet = this.f46985h;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f46985h.removeAllListeners();
        }
    }

    private void d() {
        this.f46981d.moveTo((float) ((getWidth() - (getWidth() * 0.6d)) / 2.0d), (getHeight() - this.f46978a) / 2.0f);
        this.f46981d.lineTo((float) ((getWidth() + (getWidth() * 0.6d)) / 2.0d), (getHeight() + this.f46978a) / 2.0f);
        this.f46982e.moveTo(((float) ((getWidth() - (getWidth() * 0.6d)) / 2.0d)) + 2.0f, ((getHeight() - this.f46978a) / 2.0f) + 1.0f);
        this.f46982e.lineTo(((float) ((getWidth() + (getWidth() * 0.6d)) / 2.0d)) + 2.0f, ((getHeight() + this.f46978a) / 2.0f) + 1.0f);
        com.ubix.ssp.ad.e.a0.r.a().h(getContext());
        DashPathEffect dashPathEffect = new DashPathEffect(new float[]{(float) ((getWidth() * 0.6d) / 24.0d), (float) ((getWidth() * 0.6d) / 48.0d)}, (float) ((getWidth() * 0.6d) / 12.0d));
        this.f46979b.setPathEffect(dashPathEffect);
        this.f46980c.setPathEffect(dashPathEffect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f46983f = false;
        postInvalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() > 0 && !this.f46981d.isEmpty()) {
            d();
        }
        if (this.f46984g <= 0 || getWidth() <= 0) {
            postInvalidate();
            return;
        }
        Path path = this.f46982e;
        if (path != null) {
            canvas.drawPath(path, this.f46980c);
        }
        Path path2 = this.f46981d;
        if (path2 != null) {
            canvas.drawPath(path2, this.f46979b);
        }
        if (findViewById(200023) == null) {
            a();
            b();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f46984g = (int) ((getWidth() * 0.6d) / 90.0d);
        d();
    }

    private void a() {
        if (getWidth() == 0) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        imageView.setId(200023);
        imageView.setImageDrawable(q.a("ubix/ic_slide_hand.webp"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(90, 90);
        layoutParams.leftMargin = (int) (((getWidth() - (getWidth() * 0.6d)) / 2.0d) - (this.f46978a * 4.0f));
        layoutParams.topMargin = (int) ((getHeight() * 1.1d) / 2.0d);
        addView(imageView, layoutParams);
    }
}
