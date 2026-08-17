package com.byazt.wnd;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, AVMDLDataLoader.KeyIsGetCustomHttpHeader})
/* loaded from: classes3.dex */
public class RippleView extends View {

    /* renamed from: a, reason: collision with root package name */
    public long f27035a;

    /* renamed from: e, reason: collision with root package name */
    public int f27036e;
    public float eb;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public ValueAnimator f27037j;
    public ValueAnimator jx;

    /* renamed from: l, reason: collision with root package name */
    public float f27038l;

    /* renamed from: q, reason: collision with root package name */
    public Animator.AnimatorListener f27039q;

    /* renamed from: s, reason: collision with root package name */
    public float f27040s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f27041w;

    public RippleView(Context context, int i2) {
        super(context);
        this.f27035a = 300L;
        this.eb = 0.0f;
        this.f27036e = i2;
        hp();
    }

    public void jx() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f27040s, 0.0f);
        this.f27037j = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f27035a);
        this.f27037j.setInterpolator(new LinearInterpolator());
        this.f27037j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.wnd.RippleView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.eb = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.f27039q;
        if (animatorListener != null) {
            this.f27037j.addListener(animatorListener);
        }
        this.f27037j.start();
    }

    public void l() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.f27040s);
        this.jx = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f27035a);
        this.jx.setInterpolator(new LinearInterpolator());
        this.jx.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.wnd.RippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.eb = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        this.jx.start();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.hp, this.f27038l, this.eb, this.f27041w);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.hp = i2 / 2.0f;
        this.f27038l = i3 / 2.0f;
        this.f27040s = (float) (Math.hypot(i2, i3) / 2.0d);
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.f27039q = animatorListener;
    }

    public void hp() {
        Paint paint = new Paint(1);
        this.f27041w = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f27041w.setColor(this.f27036e);
    }
}
