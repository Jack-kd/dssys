package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.v1.w2;

/* loaded from: classes5.dex */
public class GuideToClickV2View extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public WaveAnimImageView f43425a;

    /* renamed from: b, reason: collision with root package name */
    public WaveAnimImageView f43426b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f43427c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43428d;

    /* renamed from: e, reason: collision with root package name */
    public float f43429e;

    /* renamed from: f, reason: collision with root package name */
    public float f43430f;

    /* renamed from: g, reason: collision with root package name */
    public float f43431g;

    /* renamed from: h, reason: collision with root package name */
    public float f43432h;

    /* renamed from: i, reason: collision with root package name */
    public float f43433i;

    /* renamed from: j, reason: collision with root package name */
    public float f43434j;

    /* renamed from: k, reason: collision with root package name */
    public ValueAnimator f43435k;

    /* renamed from: l, reason: collision with root package name */
    public ValueAnimator f43436l;

    /* renamed from: m, reason: collision with root package name */
    public ScaleAnimation f43437m;

    public GuideToClickV2View(Context context) {
        super(context);
        a(context);
    }

    public final void a(Context context) {
        LayoutInflater.from(context).inflate(k.a(context, "myoffer_guide_to_click_v2", "layout"), this);
        setBackgroundColor(Color.parseColor("#66000000"));
        this.f43429e = 0.8f;
        this.f43430f = 0.05f;
        this.f43431g = k.a(context, 4.0f);
        this.f43432h = (int) ((context.getResources().getDisplayMetrics().density * 8.0f) + 0.5f);
        this.f43433i = (int) ((context.getResources().getDisplayMetrics().density * 2.0f) + 0.5f);
        this.f43434j = (int) ((context.getResources().getDisplayMetrics().density * 30.0f) + 0.5f);
        this.f43425a = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image", "id"));
        this.f43426b = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image2", "id"));
        this.f43435k = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43436l = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43427c = (ImageView) findViewById(k.a(context, "myoffer_guide_to_click_finger", "id"));
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f);
        this.f43437m = scaleAnimation;
        scaleAnimation.setRepeatMode(2);
        this.f43437m.setRepeatCount(-1);
        this.f43437m.setDuration(333L);
        this.f43428d = (TextView) findViewById(k.a(context, "myoffer_guide_to_click_hint", "id"));
    }

    public void hideBackground() {
        setBackgroundColor(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        startAnim(this.f43435k, this.f43425a, 0L);
        startAnim(this.f43436l, this.f43426b, 800L);
        this.f43427c.startAnimation(this.f43437m);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f43435k;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f43435k.removeAllUpdateListeners();
            this.f43435k.cancel();
        }
        ValueAnimator valueAnimator2 = this.f43436l;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
            this.f43436l.removeAllUpdateListeners();
            this.f43436l.cancel();
        }
        ScaleAnimation scaleAnimation = this.f43437m;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
        }
    }

    public void setFingerImageResource(Bitmap bitmap) {
        ImageView imageView = this.f43427c;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    public void setFingerViewType(int i2) {
        int iA = k.a(getContext(), 84.0f);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43425a.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43426b.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f43427c.getLayoutParams();
        if (i2 != 2) {
            if (i2 == 4 || i2 == 5 || i2 == 6) {
                int i3 = (int) (iA * 0.5d);
                this.f43431g = k.a(getContext(), 2.0f);
                this.f43432h = k.a(getContext(), 4.0f);
                this.f43434j = k.a(getContext(), 8.0f);
                layoutParams.width = i3;
                layoutParams.height = i3;
                this.f43425a.setLayoutParams(layoutParams);
                layoutParams2.width = i3;
                layoutParams2.height = i3;
                this.f43426b.setLayoutParams(layoutParams2);
                layoutParams3.width = i3 / 3;
                layoutParams3.height = (int) ((i3 / 3.0d) * 1.1d);
                int i4 = i3 / 2;
                layoutParams3.setMargins(i4, i4, 0, 0);
                this.f43427c.setLayoutParams(layoutParams3);
                this.f43428d.setVisibility(8);
                return;
            }
            return;
        }
        int i5 = (int) (iA * 0.7d);
        this.f43431g = k.a(getContext(), 4.0f);
        this.f43432h = k.a(getContext(), 4.0f);
        this.f43434j = k.a(getContext(), 14.0f);
        layoutParams.width = i5;
        layoutParams.height = i5;
        this.f43425a.setLayoutParams(layoutParams);
        layoutParams2.width = i5;
        layoutParams2.height = i5;
        this.f43426b.setLayoutParams(layoutParams2);
        int i6 = i5 / 2;
        layoutParams3.width = i6;
        layoutParams3.height = (int) ((i5 / 2.0d) * 1.1d);
        layoutParams3.setMargins((int) (i6 * 0.9d), i6, 0, 0);
        this.f43427c.setLayoutParams(layoutParams3);
        this.f43428d.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f43428d.getLayoutParams();
        layoutParams4.topMargin = k.a(getContext(), 6.0f);
        this.f43428d.setLayoutParams(layoutParams4);
        this.f43428d.setTextSize(1, 14.0f);
    }

    public void startAnim(ValueAnimator valueAnimator, WaveAnimImageView waveAnimImageView, long j2) {
        if (valueAnimator != null) {
            valueAnimator.setRepeatMode(1);
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setDuration(1400L);
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.addUpdateListener(new w2(this, waveAnimImageView));
            valueAnimator.setStartDelay(j2);
            valueAnimator.start();
        }
    }

    public GuideToClickV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public GuideToClickV2View(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
