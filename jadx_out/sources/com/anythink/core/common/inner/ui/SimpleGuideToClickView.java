package com.anythink.core.common.inner.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.inner.ui.WaveAnimImageView;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class SimpleGuideToClickView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    WaveAnimImageView f5051a;

    /* renamed from: b, reason: collision with root package name */
    WaveAnimImageView f5052b;

    /* renamed from: c, reason: collision with root package name */
    ImageView f5053c;

    /* renamed from: d, reason: collision with root package name */
    float f5054d;

    /* renamed from: e, reason: collision with root package name */
    float f5055e;

    /* renamed from: f, reason: collision with root package name */
    float f5056f;

    /* renamed from: g, reason: collision with root package name */
    float f5057g;

    /* renamed from: h, reason: collision with root package name */
    float f5058h;

    /* renamed from: i, reason: collision with root package name */
    float f5059i;

    /* renamed from: j, reason: collision with root package name */
    final int f5060j;

    /* renamed from: k, reason: collision with root package name */
    final int f5061k;

    /* renamed from: l, reason: collision with root package name */
    final float f5062l;

    /* renamed from: m, reason: collision with root package name */
    ValueAnimator f5063m;

    /* renamed from: n, reason: collision with root package name */
    ValueAnimator f5064n;

    /* renamed from: o, reason: collision with root package name */
    ScaleAnimation f5065o;

    public SimpleGuideToClickView(Context context) {
        super(context);
        this.f5060j = 1000;
        this.f5061k = 200;
        this.f5062l = 0.71428573f;
    }

    private void a() {
        if (this.f5053c != null) {
            startAnim(this.f5063m, this.f5051a, 0L);
            startAnim(this.f5064n, this.f5052b, 800L);
            this.f5053c.startAnimation(this.f5065o);
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f5063m;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f5063m.removeAllUpdateListeners();
            this.f5063m.cancel();
        }
        ValueAnimator valueAnimator2 = this.f5064n;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
            this.f5064n.removeAllUpdateListeners();
            this.f5064n.cancel();
        }
        ScaleAnimation scaleAnimation = this.f5065o;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
        }
    }

    public void init(int i2, int i3, int i4, int i5, int i6) {
        Context context = getContext();
        LayoutInflater.from(context).inflate(i2, this);
        this.f5054d = 0.8f;
        this.f5055e = 0.05f;
        this.f5056f = i3;
        this.f5057g = i5;
        this.f5058h = i4;
        this.f5059i = i6;
        this.f5051a = (WaveAnimImageView) findViewById(p.a(context, "myoffer_wave_anim_image", "id"));
        this.f5052b = (WaveAnimImageView) findViewById(p.a(context, "myoffer_wave_anim_image2", "id"));
        this.f5063m = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f5064n = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f5053c = (ImageView) findViewById(p.a(context, "myoffer_guide_to_click_finger", "id"));
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f);
        this.f5065o = scaleAnimation;
        scaleAnimation.setRepeatMode(2);
        this.f5065o.setRepeatCount(-1);
        this.f5065o.setDuration(333L);
        setClipChildren(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5053c != null) {
            startAnim(this.f5063m, this.f5051a, 0L);
            startAnim(this.f5064n, this.f5052b, 800L);
            this.f5053c.startAnimation(this.f5065o);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f5063m;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f5063m.removeAllUpdateListeners();
            this.f5063m.cancel();
        }
        ValueAnimator valueAnimator2 = this.f5064n;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
            this.f5064n.removeAllUpdateListeners();
            this.f5064n.cancel();
        }
        ScaleAnimation scaleAnimation = this.f5065o;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
        }
    }

    public void startAnim(ValueAnimator valueAnimator, final WaveAnimImageView waveAnimImageView, long j2) {
        if (valueAnimator != null) {
            valueAnimator.setRepeatMode(1);
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setDuration(1400L);
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.core.common.inner.ui.SimpleGuideToClickView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float f2;
                    float fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    if (fFloatValue > 0.71428573f) {
                        waveAnimImageView.setVisibility(4);
                        return;
                    }
                    float f3 = fFloatValue / 0.71428573f;
                    SimpleGuideToClickView simpleGuideToClickView = SimpleGuideToClickView.this;
                    float f4 = simpleGuideToClickView.f5058h;
                    float f5 = ((simpleGuideToClickView.f5059i - f4) * f3) + f4;
                    float f6 = simpleGuideToClickView.f5056f + ((simpleGuideToClickView.f5057g - f4) * f3);
                    double d2 = f3;
                    if (d2 < 0.2d) {
                        f2 = (float) (simpleGuideToClickView.f5054d + ((1.0d - ((f3 * 1.0f) / 0.2d)) * (simpleGuideToClickView.f5055e - r1)));
                    } else {
                        f2 = (float) (simpleGuideToClickView.f5054d + ((((d2 - 0.2d) * 1.0d) / 0.8d) * (simpleGuideToClickView.f5055e - r13)));
                    }
                    try {
                        if (simpleGuideToClickView.getVisibility() == 0) {
                            waveAnimImageView.setWaveAnimParams(new WaveAnimImageView.a(f5, f6, f2));
                            if (waveAnimImageView.getVisibility() != 0) {
                                waveAnimImageView.setVisibility(0);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
            valueAnimator.setStartDelay(j2);
            valueAnimator.start();
        }
    }

    public SimpleGuideToClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5060j = 1000;
        this.f5061k = 200;
        this.f5062l = 0.71428573f;
    }

    public SimpleGuideToClickView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5060j = 1000;
        this.f5061k = 200;
        this.f5062l = 0.71428573f;
    }
}
