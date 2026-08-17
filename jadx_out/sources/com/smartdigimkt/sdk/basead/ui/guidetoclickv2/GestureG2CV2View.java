package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.g0;
import com.smartdigimkt.h2.w;
import com.smartdigimkt.h2.x;

/* loaded from: classes5.dex */
public class GestureG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public ImageView f43882h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43883i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f43884j;

    /* renamed from: k, reason: collision with root package name */
    public TranslateAnimation f43885k;

    /* renamed from: l, reason: collision with root package name */
    public int f43886l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43887m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f43888n;

    /* renamed from: o, reason: collision with root package name */
    public float f43889o;

    /* renamed from: p, reason: collision with root package name */
    public float f43890p;

    /* renamed from: q, reason: collision with root package name */
    public int f43891q;

    /* renamed from: r, reason: collision with root package name */
    public g0 f43892r;

    public GestureG2CV2View(Context context) {
        super(context);
        this.f43887m = false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_gesture", "layout"), this);
        this.f43891q = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f43882h = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_slide_finger", "id"));
        this.f43883i = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_white_line", "id"));
        this.f43884j = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_slide_hint", "id"));
        this.f43888n = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_g2c_item_container", "id"));
        this.f43886l = k.a(getContext(), 36.0f);
        if (i2 == 1 || i2 == 3) {
            this.f43888n.setBackgroundResource(k.a(getContext(), "myoffer_g2c_gesture_bg", "drawable"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(k.a(getContext(), 270.0f), k.a(getContext(), 100.0f));
            layoutParams.addRule(13);
            this.f43888n.setLayoutParams(layoutParams);
            this.f43883i.setVisibility(0);
        } else if (i2 == 2) {
            this.f43888n.setBackgroundColor(Color.parseColor("#80000000"));
            this.f43883i.setVisibility(0);
            if (this.f43887m) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43883i.getLayoutParams();
                layoutParams2.width = k.a(getContext(), 240.0f);
                this.f43883i.setLayoutParams(layoutParams2);
            }
        } else {
            ViewGroup.LayoutParams layoutParams3 = this.f43882h.getLayoutParams();
            layoutParams3.height = k.a(getContext(), 24.0f);
            layoutParams3.width = k.a(getContext(), 24.0f);
            this.f43886l = k.a(getContext(), 24.0f);
            this.f43882h.setLayoutParams(layoutParams3);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f43883i.getLayoutParams();
            layoutParams4.width = k.a(getContext(), 150.0f);
            layoutParams4.height = k.a(getContext(), 4.0f);
            layoutParams4.setMargins(layoutParams4.leftMargin, layoutParams4.topMargin, layoutParams4.rightMargin, k.a(getContext(), 8.0f));
            this.f43883i.setLayoutParams(layoutParams4);
            LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f43884j.getLayoutParams();
            layoutParams5.setMargins(k.a(getContext(), 8.0f), layoutParams5.topMargin, layoutParams5.rightMargin, layoutParams5.bottomMargin);
            this.f43884j.setTextSize(1, 10.0f);
            setBackgroundColor(Color.parseColor("#80000000"));
            post(new w(this));
        }
        if (this.f43885k == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -this.f43886l, 0.0f, 0.0f);
            this.f43885k = translateAnimation;
            translateAnimation.setDuration(1000L);
            this.f43885k.setRepeatCount(-1);
            this.f43885k.setRepeatMode(2);
            this.f43882h.startAnimation(this.f43885k);
        }
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
        this.f43892r = g0Var;
        if (g0Var != null) {
            g0Var.setCallback(new x(this));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g0 g0Var = this.f43892r;
        if (g0Var != null) {
            g0Var.setCallback(null);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        TranslateAnimation translateAnimation = this.f43885k;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        TranslateAnimation translateAnimation = this.f43885k;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        TranslateAnimation translateAnimation = this.f43885k;
        if (translateAnimation != null) {
            translateAnimation.start();
        }
    }

    public void setVerticalLandscape(boolean z2) {
        this.f43887m = z2;
    }
}
