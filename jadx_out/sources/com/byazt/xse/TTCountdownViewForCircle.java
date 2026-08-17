package com.byazt.xse;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 718, 1625})
/* loaded from: classes3.dex */
public class TTCountdownViewForCircle extends View implements j {

    /* renamed from: a, reason: collision with root package name */
    public float f27800a;

    /* renamed from: b, reason: collision with root package name */
    public AnimatorSet f27801b;
    public hp cx;

    /* renamed from: d, reason: collision with root package name */
    public ValueAnimator f27802d;
    public ValueAnimator di;

    /* renamed from: e, reason: collision with root package name */
    public float f27803e;
    public float eb;
    public Paint ec;
    public float gu;
    public int hp;
    public AtomicBoolean hq;

    /* renamed from: j, reason: collision with root package name */
    public int f27804j;
    public float jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f27805k;

    /* renamed from: l, reason: collision with root package name */
    public int f27806l;

    /* renamed from: n, reason: collision with root package name */
    public float f27807n;
    public RectF ns;

    /* renamed from: o, reason: collision with root package name */
    public ValueAnimator f27808o;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27809q;

    /* renamed from: s, reason: collision with root package name */
    public int f27810s;
    public float sz;

    /* renamed from: u, reason: collision with root package name */
    public Paint f27811u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f27812v;
    public Paint vv;

    /* renamed from: w, reason: collision with root package name */
    public float f27813w;
    public boolean wv;
    public Paint xs;
    public String zy;

    public TTCountdownViewForCircle(Context context) {
        this(context, null);
    }

    private int a() {
        return (int) ((((this.f27813w / 2.0f) + this.eb) * 2.0f) + hp(4.0f));
    }

    private void eb() {
        try {
            AnimatorSet animatorSet = this.f27801b;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f27801b = null;
            }
            ValueAnimator valueAnimator = this.f27802d;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f27802d = null;
            }
            ValueAnimator valueAnimator2 = this.di;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.di = null;
            }
            ValueAnimator valueAnimator3 = this.f27808o;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.f27808o = null;
            }
            this.sz = 1.0f;
            this.f27807n = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.f27808o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f27808o = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.sz, 0.0f);
        this.f27808o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f27808o.setDuration((long) (hp(this.sz, this.f27803e) * 1000.0f));
        this.f27808o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.xse.TTCountdownViewForCircle.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.sz = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.f27808o;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.di;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.di = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f27807n, 0.0f);
        this.di = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.di.setDuration((long) (hp(this.f27807n, this.gu) * 1000.0f));
        this.di.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.xse.TTCountdownViewForCircle.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.f27807n = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.di;
    }

    private void j() {
        Paint paint = new Paint(1);
        this.f27811u = paint;
        paint.setColor(this.hp);
        this.f27811u.setStrokeWidth(this.f27813w);
        this.f27811u.setAntiAlias(true);
        Paint paint2 = this.f27811u;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.xs = paint3;
        paint3.setColor(this.jx);
        this.xs.setAntiAlias(true);
        this.xs.setStrokeWidth(this.f27813w);
        this.xs.setStyle(Paint.Style.FILL);
        Paint paint4 = new Paint(1);
        this.vv = paint4;
        paint4.setColor(this.f27806l);
        this.vv.setAntiAlias(true);
        this.vv.setStrokeWidth(this.f27813w / 2.0f);
        this.vv.setStyle(style);
        Paint paint5 = new Paint(1);
        this.ec = paint5;
        paint5.setColor(this.f27804j);
        this.vv.setAntiAlias(true);
        this.ec.setTextSize(this.f27800a);
        this.ec.setTextAlign(Paint.Align.CENTER);
    }

    private void w() {
        float f2 = this.eb;
        this.ns = new RectF(-f2, -f2, f2, f2);
    }

    public hp getCountdownListener() {
        return this.cx;
    }

    @Override // com.byazt.xse.j
    public View getView() {
        return this;
    }

    public float hp(float f2, float f3) {
        return f2 * f3;
    }

    public void jx() {
        AnimatorSet animatorSet;
        try {
            if (this.f27812v || (animatorSet = this.f27801b) == null) {
                return;
            }
            animatorSet.resume();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        eb();
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
            size = a();
        }
        if (mode2 != 1073741824) {
            size2 = a();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        this.hq.set(z2);
        if (this.f27812v) {
            return;
        }
        if (this.hq.get()) {
            jx();
        } else {
            l();
        }
    }

    @Override // com.byazt.xse.j
    public void setCountDownTime(int i2) {
        float f2 = i2;
        this.gu = f2;
        this.f27803e = f2;
        eb();
    }

    @Override // com.byazt.xse.j
    public void setCountdownListener(hp hpVar) {
        this.cx = hpVar;
        this.hq.get();
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public float hp(float f2, int i2) {
        return i2 * f2;
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.hp = Color.parseColor("#fce8b6");
        this.f27806l = Color.parseColor("#f0f0f0");
        this.jx = Color.parseColor("#ffffff");
        this.f27804j = Color.parseColor("#7c7c7c");
        this.f27813w = 2.0f;
        this.f27800a = 12.0f;
        this.eb = 18.0f;
        this.f27810s = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
        this.f27809q = false;
        this.f27803e = 5.0f;
        this.gu = 5.0f;
        this.jl = 0.8f;
        this.zy = "跳过";
        this.f27805k = false;
        this.f27812v = false;
        this.sz = 1.0f;
        this.f27807n = 1.0f;
        this.wv = false;
        this.hq = new AtomicBoolean(true);
        this.f27813w = hp(2.0f);
        this.eb = hp(18.0f);
        this.f27800a = l(12.0f);
        this.f27810s %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        j();
        w();
    }

    private void l(Canvas canvas) {
        float f2;
        canvas.save();
        float fHp = hp(this.sz, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
        if (this.f27809q) {
            f2 = this.f27810s - fHp;
        } else {
            f2 = this.f27810s;
        }
        float f3 = f2;
        canvas.drawCircle(0.0f, 0.0f, this.eb, this.xs);
        canvas.drawCircle(0.0f, 0.0f, this.eb, this.vv);
        canvas.drawArc(this.ns, f3, fHp, false, this.f27811u);
        canvas.restore();
    }

    private void hp(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.ec.getFontMetrics();
        String strFu = sz.l().fu();
        this.zy = strFu;
        if (TextUtils.isEmpty(strFu)) {
            this.zy = "跳过";
        }
        canvas.drawText(this.zy, 0.0f, 0.0f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.ec);
        canvas.restore();
    }

    private float l(float f2) {
        return TypedValue.applyDimension(2, f2, getResources().getDisplayMetrics());
    }

    @Override // com.byazt.xse.j
    public void hp() {
        if (this.f27812v) {
            return;
        }
        AnimatorSet animatorSet = this.f27801b;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.f27801b.cancel();
            this.f27801b = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f27801b = animatorSet2;
        animatorSet2.playTogether(getNumAnim(), getArcAnim());
        this.f27801b.setInterpolator(new LinearInterpolator());
        this.f27801b.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.xse.TTCountdownViewForCircle.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TTCountdownViewForCircle.this.wv = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TTCountdownViewForCircle.this.wv) {
                    TTCountdownViewForCircle.this.wv = false;
                } else if (TTCountdownViewForCircle.this.cx != null) {
                    TTCountdownViewForCircle.this.cx.hp();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        try {
            Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
            declaredField.setAccessible(true);
            if (declaredField.getFloat(null) < 1.0f) {
                declaredField.setFloat(null, 1.0f);
            }
        } catch (Throwable unused) {
        }
        this.f27801b.start();
        if (this.hq.get()) {
            return;
        }
        l();
    }

    public void l() {
        try {
            AnimatorSet animatorSet = this.f27801b;
            if (animatorSet != null) {
                animatorSet.pause();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.xse.j
    public void hp(boolean z2) {
        this.f27812v = z2;
        if (z2) {
            eb();
        }
    }

    private float hp(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }
}
