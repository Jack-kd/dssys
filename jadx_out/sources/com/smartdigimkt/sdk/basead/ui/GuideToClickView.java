package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.core.common.a.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.x2;
import com.smartdigimkt.v1.y2;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class GuideToClickView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public WaveAnimImageView f43438a;

    /* renamed from: b, reason: collision with root package name */
    public WaveAnimImageView f43439b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f43440c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43441d;

    /* renamed from: e, reason: collision with root package name */
    public float f43442e;

    /* renamed from: f, reason: collision with root package name */
    public float f43443f;

    /* renamed from: g, reason: collision with root package name */
    public float f43444g;

    /* renamed from: h, reason: collision with root package name */
    public float f43445h;

    /* renamed from: i, reason: collision with root package name */
    public float f43446i;

    /* renamed from: j, reason: collision with root package name */
    public float f43447j;

    /* renamed from: k, reason: collision with root package name */
    public ValueAnimator f43448k;

    /* renamed from: l, reason: collision with root package name */
    public ValueAnimator f43449l;

    /* renamed from: m, reason: collision with root package name */
    public ScaleAnimation f43450m;

    public GuideToClickView(Context context) {
        super(context);
        a(context);
    }

    public final void a(Context context) {
        LayoutInflater.from(context).inflate(k.a(context, "myoffer_guide_to_click", "layout"), this);
        setBackgroundColor(Color.parseColor("#66000000"));
        this.f43442e = 0.8f;
        this.f43443f = 0.05f;
        this.f43444g = k.a(context, 4.0f);
        this.f43445h = (int) ((context.getResources().getDisplayMetrics().density * 18.0f) + 0.5f);
        this.f43446i = (int) ((context.getResources().getDisplayMetrics().density * 2.0f) + 0.5f);
        this.f43447j = (int) ((context.getResources().getDisplayMetrics().density * 40.0f) + 0.5f);
        this.f43438a = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image", "id"));
        this.f43439b = (WaveAnimImageView) findViewById(k.a(context, "myoffer_wave_anim_image2", "id"));
        this.f43448k = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43449l = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f43440c = (ImageView) findViewById(k.a(context, "myoffer_guide_to_click_finger", "id"));
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f);
        this.f43450m = scaleAnimation;
        scaleAnimation.setRepeatMode(2);
        this.f43450m.setRepeatCount(-1);
        this.f43450m.setDuration(333L);
        this.f43441d = (TextView) findViewById(k.a(context, "myoffer_guide_to_click_hint", "id"));
        String strB = d.a().b(b.d.f2195i);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        a0.a().a(new o(3, strB), -1, -1, new x2(this));
    }

    public void hideBackground() {
        setBackgroundColor(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        startAnim(this.f43448k, this.f43438a, 0L);
        startAnim(this.f43449l, this.f43439b, 800L);
        this.f43440c.startAnimation(this.f43450m);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f43448k;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f43449l;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ScaleAnimation scaleAnimation = this.f43450m;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
        }
    }

    public void setFingerImageResource(Bitmap bitmap) {
        ImageView imageView = this.f43440c;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    public void setFingerViewMode(int i2) {
        int iA;
        int iA2;
        hideBackground();
        k.a(getContext(), 200.0f);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43438a.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43439b.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f43440c.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f43441d.getLayoutParams();
        switch (i2) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE /* 501 */:
            case 507:
                layoutParams.addRule(14);
                layoutParams.addRule(13, 0);
                this.f43438a.setLayoutParams(layoutParams);
                layoutParams2.addRule(14);
                layoutParams2.addRule(13, 0);
                this.f43439b.setLayoutParams(layoutParams2);
                break;
            case 502:
            case 503:
                if (i2 == 502) {
                    iA = k.a(getContext(), 100.0f);
                    this.f43441d.setTextSize(1, 14.0f);
                    this.f43445h = k.a(getContext(), 12.0f);
                    this.f43447j = k.a(getContext(), 30.0f);
                } else {
                    iA = k.a(getContext(), 160.0f);
                    this.f43441d.setTextSize(1, 16.0f);
                }
                layoutParams.width = iA;
                layoutParams.height = iA;
                layoutParams.addRule(14);
                layoutParams.addRule(13, 0);
                layoutParams2.width = iA;
                layoutParams2.height = iA;
                layoutParams2.addRule(14);
                layoutParams2.addRule(13, 0);
                int i3 = iA / 2;
                layoutParams3.width = i3;
                layoutParams3.height = (int) ((iA / 2.0d) * 1.1d);
                layoutParams3.setMargins(i3, i3, 0, 0);
                break;
            case e.f35439E /* 504 */:
            case 505:
            case 506:
                if (i2 == 505 || i2 == 504) {
                    iA2 = k.a(getContext(), 50.0f);
                    this.f43445h = k.a(getContext(), 6.0f);
                    this.f43447j = k.a(getContext(), 18.0f);
                } else {
                    iA2 = k.a(getContext(), 120.0f);
                    this.f43445h = k.a(getContext(), 8.0f);
                    this.f43447j = k.a(getContext(), 24.0f);
                }
                layoutParams.width = iA2;
                layoutParams.height = iA2;
                layoutParams.addRule(15);
                layoutParams.addRule(13, 0);
                this.f43438a.setLayoutParams(layoutParams);
                layoutParams2.width = iA2;
                layoutParams2.height = iA2;
                layoutParams2.addRule(15);
                layoutParams2.addRule(13, 0);
                this.f43439b.setLayoutParams(layoutParams2);
                int i4 = iA2 / 2;
                layoutParams3.width = i4;
                layoutParams3.height = (int) ((iA2 / 2.0d) * 1.1d);
                layoutParams3.setMargins(i4, i4, 0, 0);
                this.f43440c.setLayoutParams(layoutParams3);
                layoutParams4.addRule(14, 0);
                layoutParams4.addRule(3, 0);
                layoutParams4.addRule(15);
                layoutParams4.addRule(1, this.f43438a.getId());
                layoutParams4.setMargins(k.a(getContext(), 6.0f), 0, k.a(getContext(), 10.0f), 0);
                this.f43441d.setLayoutParams(layoutParams4);
                this.f43441d.setTextSize(1, 12.0f);
                break;
        }
    }

    public void startAnim(ValueAnimator valueAnimator, WaveAnimImageView waveAnimImageView, long j2) {
        if (valueAnimator != null) {
            valueAnimator.setRepeatMode(1);
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setDuration(1400L);
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.addUpdateListener(new y2(this, waveAnimImageView));
            valueAnimator.setStartDelay(j2);
            valueAnimator.start();
        }
    }

    public GuideToClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public GuideToClickView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
