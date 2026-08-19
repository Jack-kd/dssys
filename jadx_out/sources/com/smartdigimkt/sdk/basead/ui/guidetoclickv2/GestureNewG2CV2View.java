package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.g0;
import com.smartdigimkt.h2.y;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class GestureNewG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public ImageView f43893h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43894i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f43895j;

    /* renamed from: k, reason: collision with root package name */
    public AnimatorSet f43896k;

    /* renamed from: l, reason: collision with root package name */
    public int f43897l;

    /* renamed from: m, reason: collision with root package name */
    public int f43898m;

    /* renamed from: n, reason: collision with root package name */
    public float f43899n;

    /* renamed from: o, reason: collision with root package name */
    public float f43900o;

    /* renamed from: p, reason: collision with root package name */
    public int f43901p;

    /* renamed from: q, reason: collision with root package name */
    public g0 f43902q;

    /* renamed from: r, reason: collision with root package name */
    public int f43903r;

    public GestureNewG2CV2View(Context context) {
        super(context);
        this.f43903r = -1;
    }

    public final void b() {
        AnimatorSet animatorSet = this.f43896k;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f43896k = null;
        }
        if (this.f43896k == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43893h, "translationX", this.f43897l, -r1);
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(2);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43893h, "translationY", 0.0f, (-this.f43898m) / 2, 0.0f);
            objectAnimatorOfFloat2.setDuration(1000L);
            objectAnimatorOfFloat2.setRepeatCount(-1);
            objectAnimatorOfFloat2.setRepeatMode(2);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f43896k = animatorSet2;
            animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f43896k.start();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_gesture_v2", "layout"), this);
        this.f43901p = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f43893h = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_slide_finger", "id"));
        this.f43894i = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_white_line", "id"));
        this.f43895j = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_slide_hint", "id"));
        this.f43897l = k.a(getContext(), 32.0f);
        this.f43898m = k.a(getContext(), 10.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        g0 g0Var;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (true) {
            if (parent.getParent() == null) {
                g0Var = null;
                break;
            } else {
                if (parent instanceof g0) {
                    g0Var = (g0) parent;
                    break;
                }
                parent = parent.getParent();
            }
        }
        this.f43902q = g0Var;
        if (g0Var != null) {
            g0Var.setCallback(new y(this));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g0 g0Var = this.f43902q;
        if (g0Var != null) {
            g0Var.setCallback(null);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        float f2 = 50;
        if (getMeasuredWidth() < k.a(getContext(), f2)) {
            a();
            return;
        }
        int measuredHeight = getMeasuredHeight();
        if (measuredHeight < k.a(getContext(), f2)) {
            a();
            return;
        }
        if (measuredHeight >= k.a(getContext(), f2) && measuredHeight < k.a(getContext(), 80.0f)) {
            if (this.f43903r == 12) {
                return;
            }
            this.f43903r = 12;
            this.f43897l = k.a(getContext(), 18.0f);
            this.f43898m = k.a(getContext(), 6.0f);
            ImageView imageView = this.f43894i;
            if (imageView != null) {
                d.a(k.a(getContext(), 118.0f), k.a(getContext(), 21.0f), imageView);
            }
            ImageView imageView2 = this.f43893h;
            if (imageView2 != null) {
                d.a(k.a(getContext(), 18.0f), k.a(getContext(), 19.0f), imageView2);
            }
            TextView textView = this.f43895j;
            if (textView != null) {
                textView.setVisibility(8);
            }
            b();
            return;
        }
        if (measuredHeight < k.a(getContext(), 80.0f) || measuredHeight > k.a(getContext(), 110.0f)) {
            if (this.f43903r == 10) {
                return;
            }
            this.f43903r = 10;
            TextView textView2 = this.f43895j;
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            b();
            return;
        }
        if (this.f43903r == 11) {
            return;
        }
        this.f43903r = 11;
        this.f43897l = k.a(getContext(), 22.0f);
        this.f43898m = k.a(getContext(), 6.0f);
        ImageView imageView3 = this.f43894i;
        if (imageView3 != null) {
            d.a(k.a(getContext(), 142.0f), k.a(getContext(), 24.0f), imageView3);
        }
        ImageView imageView4 = this.f43893h;
        if (imageView4 != null) {
            d.a(k.a(getContext(), 22.0f), k.a(getContext(), 24.0f), imageView4);
        }
        TextView textView3 = this.f43895j;
        if (textView3 != null) {
            textView3.setVisibility(0);
            if (this.f43895j.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43895j.getLayoutParams();
                layoutParams.topMargin = k.a(getContext(), 2.0f);
                this.f43895j.setLayoutParams(layoutParams);
            }
        }
        b();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        AnimatorSet animatorSet = this.f43896k;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        AnimatorSet animatorSet = this.f43896k;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        AnimatorSet animatorSet = this.f43896k;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }
}
