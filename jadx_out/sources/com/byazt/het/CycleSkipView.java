package com.byazt.het;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, 1158})
/* loaded from: classes2.dex */
public class CycleSkipView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f20680a;

    /* renamed from: e, reason: collision with root package name */
    public int f20681e;
    public boolean eb;
    public ValueAnimator ec;
    public boolean gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public float f20682j;
    public Paint jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public Paint f20683k;

    /* renamed from: l, reason: collision with root package name */
    public int f20684l;

    /* renamed from: n, reason: collision with root package name */
    public final RectF f20685n;
    public float ns;

    /* renamed from: q, reason: collision with root package name */
    public float f20686q;

    /* renamed from: s, reason: collision with root package name */
    public float f20687s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public AnimatorSet f20688u;

    /* renamed from: v, reason: collision with root package name */
    public float f20689v;
    public ValueAnimator vv;

    /* renamed from: w, reason: collision with root package name */
    public float f20690w;
    public ValueAnimator xs;
    public Paint zy;

    public CycleSkipView(Context context) {
        super(context);
        this.hp = Color.parseColor("#f9e8b9");
        this.f20684l = Color.parseColor("#ffffff");
        this.jx = Color.parseColor("#7b7b7b");
        this.f20680a = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
        this.eb = false;
        this.f20687s = 5.0f;
        this.f20686q = 0.0f;
        this.f20681e = 0;
        this.gu = true;
        this.f20689v = 0.0f;
        this.sz = false;
        this.f20685n = new RectF();
        this.ns = 1.0f;
        this.f20682j = hp(2.0f);
        this.f20690w = hp(10.0f);
        this.f20680a %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        l();
        setBackgroundColor(-16711681);
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.vv;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.vv = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f20689v, this.ns);
        this.vv = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.vv.setDuration(1000L);
        this.vv.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.het.CycleSkipView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                CycleSkipView.this.f20689v = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                CycleSkipView.this.postInvalidate();
            }
        });
        return this.vv;
    }

    private int getMinLine() {
        return Math.min(getMeasuredHeight(), getMeasuredWidth());
    }

    private int jx() {
        return (int) ((((this.f20682j / 2.0f) + this.f20690w) * 2.0f) + hp(4.0f));
    }

    private void l() {
        Paint paint = new Paint(1);
        this.jl = paint;
        paint.setColor(this.hp);
        this.jl.setStrokeWidth(this.f20682j);
        this.jl.setAntiAlias(true);
        this.jl.setStrokeCap(Paint.Cap.ROUND);
        this.jl.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.zy = paint2;
        paint2.setColor(this.f20684l);
        this.zy.setAntiAlias(true);
        this.zy.setStrokeWidth(this.f20682j);
        this.zy.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f20683k = paint3;
        paint3.setColor(this.jx);
        this.f20683k.setTextAlign(Paint.Align.CENTER);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            AnimatorSet animatorSet = this.f20688u;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f20688u = null;
            }
            ValueAnimator valueAnimator = this.ec;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.ec = null;
            }
            ValueAnimator valueAnimator2 = this.xs;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.xs = null;
            }
            ValueAnimator valueAnimator3 = this.vv;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.vv = null;
            }
            this.f20689v = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        l(canvas);
        hp(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (mode != 1073741824) {
            size = jx();
        }
        if (mode2 != 1073741824) {
            size2 = jx();
        }
        l(size, size2);
        setMeasuredDimension(size, size2);
        RectF rectF = this.f20685n;
        float f2 = this.f20690w;
        rectF.left = -f2;
        rectF.right = f2;
        rectF.top = -f2;
        rectF.bottom = f2;
        this.f20683k.setTextSize(getMinLine() / 3.0f);
    }

    private void hp(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.f20683k.getFontMetrics();
        canvas.drawText("跳过", 0.0f, (getMinLine() / 3.0f) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f), this.f20683k);
        canvas.restore();
    }

    private float hp(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    public void hp() {
        AnimatorSet animatorSet = this.f20688u;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.f20688u.cancel();
            this.f20688u = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f20688u = animatorSet2;
        animatorSet2.playTogether(getArcAnim());
        this.f20688u.setInterpolator(new LinearInterpolator());
        this.f20688u.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.het.CycleSkipView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                CycleSkipView.this.sz = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CycleSkipView.this.sz) {
                    CycleSkipView.this.sz = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.f20688u.start();
    }

    private void l(int i2, int i3) {
        this.f20690w = (Math.min(i2, i3) / 2.0f) - this.f20682j;
    }

    private void l(Canvas canvas) {
        float f2;
        float fMax;
        float f3;
        canvas.save();
        float f4 = this.f20689v * 360.0f;
        if (this.eb) {
            if (this.gu) {
                f2 = this.f20680a;
                f4 = -f4;
            } else {
                f2 = this.f20680a - f4;
            }
        } else {
            if (this.gu) {
                float f5 = this.f20680a + MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
                fMax = Math.max(0.0f, 360.0f - f4);
                f3 = f5;
                canvas.drawCircle(0.0f, 0.0f, this.f20690w, this.zy);
                canvas.drawArc(this.f20685n, f3, fMax, false, this.jl);
                canvas.restore();
            }
            f2 = this.f20680a;
        }
        fMax = f4;
        f3 = f2;
        canvas.drawCircle(0.0f, 0.0f, this.f20690w, this.zy);
        canvas.drawArc(this.f20685n, f3, fMax, false, this.jl);
        canvas.restore();
    }

    public void hp(int i2, int i3) {
        if (i2 == 0) {
            return;
        }
        float f2 = i2;
        this.f20687s = f2;
        float f3 = i3;
        this.f20686q = f3;
        this.f20681e = i2 - i3;
        this.ns = f3 / f2;
        hp();
    }
}
