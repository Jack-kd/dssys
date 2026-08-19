package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.v1.g5;

/* loaded from: classes5.dex */
public class SimpleGuideToClickView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public WaveAnimImageView f43593a;

    /* renamed from: b, reason: collision with root package name */
    public WaveAnimImageView f43594b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f43595c;

    /* renamed from: d, reason: collision with root package name */
    public float f43596d;

    /* renamed from: e, reason: collision with root package name */
    public float f43597e;

    /* renamed from: f, reason: collision with root package name */
    public float f43598f;

    /* renamed from: g, reason: collision with root package name */
    public float f43599g;

    /* renamed from: h, reason: collision with root package name */
    public float f43600h;

    /* renamed from: i, reason: collision with root package name */
    public float f43601i;

    /* renamed from: j, reason: collision with root package name */
    public ValueAnimator f43602j;

    /* renamed from: k, reason: collision with root package name */
    public ValueAnimator f43603k;

    /* renamed from: l, reason: collision with root package name */
    public ScaleAnimation f43604l;

    public SimpleGuideToClickView(Context context) {
        super(context);
    }

    public void init(int i2, int i3, int i4, int i5, int i6) {
        Context context = getContext();
        LayoutInflater.from(context).inflate(i2, this);
        this.f43596d = 0.8f;
        this.f43597e = 0.05f;
        this.f43598f = i3;
        this.f43599g = i5;
        this.f43600h = i4;
        this.f43601i = i6;
        this.f43593a = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image", "id"));
        this.f43594b = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image2", "id"));
        this.f43602j = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43603k = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43595c = (ImageView) findViewById(k.a(context, "myoffer_guide_to_click_finger", "id"));
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f);
        this.f43604l = scaleAnimation;
        scaleAnimation.setRepeatMode(2);
        this.f43604l.setRepeatCount(-1);
        this.f43604l.setDuration(333L);
        setClipChildren(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f43595c != null) {
            startAnim(this.f43602j, this.f43593a, 0L);
            startAnim(this.f43603k, this.f43594b, 800L);
            this.f43595c.startAnimation(this.f43604l);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f43602j;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f43602j.removeAllUpdateListeners();
            this.f43602j.cancel();
        }
        ValueAnimator valueAnimator2 = this.f43603k;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
            this.f43603k.removeAllUpdateListeners();
            this.f43603k.cancel();
        }
        ScaleAnimation scaleAnimation = this.f43604l;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
        }
    }

    public void startAnim(ValueAnimator valueAnimator, WaveAnimImageView waveAnimImageView, long j2) {
        if (valueAnimator != null) {
            valueAnimator.setRepeatMode(1);
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setDuration(1400L);
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.addUpdateListener(new g5(this, waveAnimImageView));
            valueAnimator.setStartDelay(j2);
            valueAnimator.start();
        }
    }

    public SimpleGuideToClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SimpleGuideToClickView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
