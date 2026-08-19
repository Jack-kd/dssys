package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.utils.Dips;
import java.util.Objects;

/* loaded from: classes4.dex */
public class aa extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36700a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f36701b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f36702c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f36703d;
    private String description;

    /* renamed from: e, reason: collision with root package name */
    private Paint f36704e;

    /* renamed from: f, reason: collision with root package name */
    private RectF f36705f;

    /* renamed from: g, reason: collision with root package name */
    private RectF f36706g;

    /* renamed from: h, reason: collision with root package name */
    private RectF f36707h;

    /* renamed from: i, reason: collision with root package name */
    private Path f36708i;

    /* renamed from: j, reason: collision with root package name */
    private float f36709j;

    /* renamed from: k, reason: collision with root package name */
    private float f36710k;

    /* renamed from: l, reason: collision with root package name */
    private float f36711l;

    /* renamed from: m, reason: collision with root package name */
    private float f36712m;

    /* renamed from: n, reason: collision with root package name */
    private float f36713n;

    /* renamed from: o, reason: collision with root package name */
    private float f36714o;

    /* renamed from: p, reason: collision with root package name */
    private final Handler f36715p;

    /* renamed from: q, reason: collision with root package name */
    private int f36716q;

    /* renamed from: r, reason: collision with root package name */
    private int f36717r;
    private String title;

    public aa(Context context) {
        super(context);
        this.f36715p = new Handler(Looper.getMainLooper());
        this.f36716q = Color.parseColor("#FF5A57");
        c();
    }

    private Animator a(final RectF rectF, final Paint paint, int i2, int i3) {
        AnimatorSet animatorSet = new AnimatorSet();
        final RectF rectF2 = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, Dips.dipsToIntPixels(20.0f, getContext()));
        long j2 = i3;
        valueAnimatorOfFloat.setStartDelay(j2);
        valueAnimatorOfFloat.setDuration(i2);
        valueAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.aa.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                aa.this.a(rectF2, rectF, ((Float) valueAnimator.getAnimatedValue()).floatValue());
                aa.this.invalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
        valueAnimatorOfInt.setStartDelay(j2);
        valueAnimatorOfInt.setDuration((long) (i2 * 0.8f));
        valueAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.aa.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                paint.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                aa.this.invalidate();
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        return animatorSet;
    }

    private void c() {
        this.f36717r = Dips.dipsToIntPixels(2.0f, getContext());
        Paint paint = new Paint(1);
        this.f36700a = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.f36700a.setStrokeWidth(this.f36717r);
        this.f36700a.setColor(-1);
        this.f36713n = Dips.dipsToIntPixels(20.0f, getContext());
        this.f36701b = new Paint(this.f36700a);
        Paint paint2 = new Paint(this.f36700a);
        this.f36702c = paint2;
        paint2.setStyle(style);
        this.f36702c.setColor(this.f36716q);
        Paint paint3 = new Paint(1);
        this.f36703d = paint3;
        paint3.setColor(-1);
        this.f36703d.setTypeface(Typeface.DEFAULT);
        this.f36703d.setTextSize(TypedValue.applyDimension(2, 20.0f, getResources().getDisplayMetrics()));
        Paint paint4 = new Paint(1);
        this.f36704e = paint4;
        paint4.setColor(-1);
        this.f36704e.setAlpha(127);
        this.f36704e.setStyle(style);
        this.f36708i = new Path();
        this.f36705f = new RectF();
        this.f36706g = new RectF();
        this.f36707h = new RectF();
    }

    private void d() {
        this.f36708i.reset();
        this.f36708i.moveTo(0.0f, 0.0f);
        this.f36708i.lineTo(0.0f, this.f36714o);
        Path path = this.f36708i;
        float f2 = this.f36714o;
        path.lineTo(f2 / 2.0f, f2 / 2.0f);
        this.f36708i.close();
    }

    public void b() {
        this.f36705f.set(0.0f, 0.0f, getWidth(), getHeight());
        this.f36706g.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.f36715p;
        if (handler == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.f36705f;
        canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.f36705f.height() / 2.0f, this.f36700a);
        RectF rectF2 = this.f36706g;
        canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.f36706g.height() / 2.0f, this.f36701b);
        RectF rectF3 = this.f36707h;
        canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, this.f36707h.height() / 2.0f, this.f36702c);
        float width = (getWidth() / 2.0f) + (this.f36711l / 2.0f) + (this.f36717r * 2);
        if (!TextUtils.isEmpty(this.title)) {
            float width2 = (getWidth() / 2.0f) - (this.f36711l / 2.0f);
            canvas.drawText(this.title, width2, ((getHeight() / 2.0f) - (this.f36712m / 2.0f)) - this.f36703d.ascent(), this.f36703d);
            width = width2 + this.f36703d.measureText(this.title) + (this.f36717r * 2);
        }
        float height = (getHeight() / 2.0f) - (this.f36714o / 2.0f);
        canvas.save();
        canvas.translate(width, height);
        canvas.drawPath(this.f36708i, this.f36704e);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        float f2 = i2;
        float f3 = f2 / 4.0f;
        this.f36709j = f3;
        float f4 = i3;
        float f5 = f4 / 3.0f;
        this.f36710k = f5;
        this.f36705f.set(f3 / 2.0f, f5 / 2.0f, f2 - (f3 / 2.0f), f4 - (f5 / 2.0f));
        RectF rectF = this.f36706g;
        float f6 = this.f36709j;
        float f7 = this.f36710k;
        rectF.set(f6 / 2.0f, f7 / 2.0f, f2 - (f6 / 2.0f), f4 - (f7 / 2.0f));
        RectF rectF2 = this.f36707h;
        float f8 = this.f36709j;
        float f9 = this.f36710k;
        rectF2.set(f8 / 2.0f, f9 / 2.0f, f2 - (f8 / 2.0f), f4 - (f9 / 2.0f));
        if (!TextUtils.isEmpty(this.title)) {
            int i6 = 5;
            while (true) {
                if (i6 >= this.title.length()) {
                    break;
                }
                float fMeasureText = this.f36703d.measureText(this.title, 0, i6);
                RectF rectF3 = this.f36705f;
                if (fMeasureText > (rectF3.right - rectF3.left) - (this.f36713n * 4.0f)) {
                    this.title = this.title.substring(0, i6 - 2) + "...";
                    break;
                }
                i6++;
            }
            this.f36711l = this.f36703d.measureText(this.title);
            this.f36712m = this.f36703d.descent() - this.f36703d.ascent();
        }
        this.f36714o = this.f36712m * 0.6f;
        d();
        a();
    }

    public void setButtonColor(int i2) {
        this.f36716q = i2;
    }

    public aa(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36715p = new Handler(Looper.getMainLooper());
        this.f36716q = Color.parseColor("#FF5A57");
        c();
    }

    public aa(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36715p = new Handler(Looper.getMainLooper());
        this.f36716q = Color.parseColor("#FF5A57");
        c();
    }

    public void a() {
        Animator animatorA = a(this.f36705f, this.f36700a, 1000, 0);
        Animator animatorA2 = a(this.f36706g, this.f36701b, 800, MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorA, animatorA2);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.aa.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(final Animator animator) {
                Handler handler = aa.this.f36715p;
                Objects.requireNonNull(animator);
                handler.postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.B
                    @Override // java.lang.Runnable
                    public final void run() {
                        animator.start();
                    }
                }, 300L);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RectF rectF, RectF rectF2, float f2) {
        rectF2.left = rectF.left - f2;
        rectF2.top = rectF.top - f2;
        rectF2.right = rectF.right + f2;
        rectF2.bottom = rectF.bottom + f2;
    }

    public void a(String str, String str2) {
        this.title = str;
        this.description = str2;
        invalidate();
    }
}
