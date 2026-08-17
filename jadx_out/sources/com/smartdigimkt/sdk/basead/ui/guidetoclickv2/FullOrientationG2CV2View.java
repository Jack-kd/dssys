package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.g0;
import com.smartdigimkt.h2.l;
import com.smartdigimkt.h2.m;

/* loaded from: classes5.dex */
public class FullOrientationG2CV2View extends BaseG2CV2View {
    public static final int DEFAULT_SIZE = 120;

    /* renamed from: h, reason: collision with root package name */
    public ValueAnimator f43863h;

    /* renamed from: i, reason: collision with root package name */
    public int f43864i;

    /* renamed from: j, reason: collision with root package name */
    public ViewGroup f43865j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43866k;

    /* renamed from: l, reason: collision with root package name */
    public float f43867l;

    /* renamed from: m, reason: collision with root package name */
    public float f43868m;

    /* renamed from: n, reason: collision with root package name */
    public float f43869n;

    /* renamed from: o, reason: collision with root package name */
    public float f43870o;

    /* renamed from: p, reason: collision with root package name */
    public int f43871p;

    /* renamed from: q, reason: collision with root package name */
    public g0 f43872q;

    /* renamed from: r, reason: collision with root package name */
    public RelativeLayout.LayoutParams f43873r;

    /* renamed from: s, reason: collision with root package name */
    public final int f43874s;

    public FullOrientationG2CV2View(Context context) {
        super(context);
        this.f43864i = 0;
        this.f43874s = k.a(getContext(), 120.0f);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_full_orientation", "layout"), this);
        this.f43871p = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        ViewGroup viewGroup = (ViewGroup) findViewById(k.a(getContext(), "myoffer_g2c_fullori_container", "id"));
        this.f43865j = viewGroup;
        RelativeLayout.LayoutParams layoutParams = this.f43873r;
        if (layoutParams != null) {
            viewGroup.setLayoutParams(layoutParams);
        }
        this.f43866k = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_fullori_finger", "id"));
        if (this.f43863h == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, k.a(getContext(), 12.0f), 0.0f);
            this.f43863h = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(500L);
            this.f43863h.setRepeatCount(-1);
            this.f43863h.addUpdateListener(new com.smartdigimkt.h2.k(this));
            this.f43863h.addListener(new l(this));
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
        this.f43872q = g0Var;
        if (g0Var != null) {
            g0Var.setCallback(new m(this));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g0 g0Var = this.f43872q;
        if (g0Var != null) {
            g0Var.setCallback(null);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        ValueAnimator valueAnimator = this.f43863h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        ValueAnimator valueAnimator = this.f43863h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        ValueAnimator valueAnimator = this.f43863h;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void setViewMode(int i2) {
        int i3 = this.f43874s;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i3);
        this.f43873r = layoutParams;
        if (i2 == 502 || i2 == 504 || i2 == 505) {
            layoutParams.addRule(13);
            return;
        }
        layoutParams.addRule(12);
        this.f43873r.addRule(14);
        this.f43873r.addRule(14);
        this.f43873r.setMargins(0, 0, 0, k.a(getContext(), 140.0f));
    }

    public void updateSize(int i2) {
        int i3 = (int) (i2 * 0.72f);
        RelativeLayout.LayoutParams layoutParams = this.f43873r;
        layoutParams.width = -2;
        layoutParams.height = i3;
        this.f43865j.setBackgroundColor(0);
        View viewFindViewById = findViewById(k.a(getContext(), "myoffer_g2c_fullori_bg", "id"));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i3);
        layoutParams2.width = i3;
        layoutParams2.height = i3;
        layoutParams2.topMargin = 0;
        layoutParams2.addRule(15);
        viewFindViewById.setLayoutParams(layoutParams2);
        this.f43866k = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_fullori_finger", "id"));
        float f2 = i3;
        float f3 = f2 * 0.5f;
        int i4 = (int) f3;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams3.topMargin = 0;
        layoutParams3.leftMargin = (int) ((f2 - f3) * 0.5f);
        layoutParams3.addRule(15);
        this.f43866k.setLayoutParams(layoutParams3);
        TextView textView = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_fullori_text", "id"));
        textView.setTextSize(2, 10.0f);
        textView.setText(k.a(getContext(), "myoffer_g2c_fuu_ori_hint_small", "string"));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.width = -2;
        layoutParams4.topMargin = 0;
        layoutParams4.leftMargin = k.a(getContext(), 10.0f);
        layoutParams4.addRule(15);
        layoutParams4.addRule(1, viewFindViewById.getId());
        textView.setLayoutParams(layoutParams4);
        this.f43865j.setLayoutParams(this.f43873r);
    }
}
