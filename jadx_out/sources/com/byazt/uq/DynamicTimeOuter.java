package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.nw.s;
import com.byazt.sq.eb;
import com.byazt.yj.gu;

@com.byazt.kj.hp(hp = {0, 1, 85, 2440})
/* loaded from: classes3.dex */
public class DynamicTimeOuter extends DynamicButton implements com.byazt.wsc.jx {
    public boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26339l;
    public boolean sz;

    public DynamicTimeOuter(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        dynamicRootView.setTimeOutListener(this);
        if ("timedown".equals(sVar.e().getType())) {
            dynamicRootView.setTimedown(this.f26307s);
        }
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        if (z3 || this.sz) {
            ((TextView) this.f26309v).setText("");
            setVisibility(8);
            return;
        }
        try {
            if (Integer.parseInt((String) charSequence) <= 0) {
                setVisibility(8);
                return;
            }
        } catch (Exception unused) {
        }
        setVisibility(0);
        if (!z2 && this.f26303k.getRenderRequest().jx() && eb.l(this.f26303k.getRenderRequest().a())) {
            ((TextView) this.f26309v).setText(i2 + "s");
            this.hp = true;
            return;
        }
        if (com.byazt.wkx.j.hp() && !"open_ad".equals(this.f26303k.getRenderRequest().a()) && this.f26303k.getRenderRequest().jx()) {
            this.sz = true;
            setVisibility(8);
            return;
        }
        if ("timedown".equals(this.zy.e().getType())) {
            ((TextView) this.f26309v).setText(charSequence);
            return;
        }
        ((TextView) this.f26309v).setText(((Object) charSequence) + "s");
        this.f26339l = true;
        if (this.hp) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (gu.l(((TextView) this.f26309v).getText() != null ? r5.toString() : "", this.jl.w(), true)[0] + com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx() + this.jl.j())), this.f26307s);
            layoutParams.gravity = 8388629;
            this.f26309v.setLayoutParams(layoutParams);
            this.hp = false;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (TextUtils.isEmpty(((TextView) this.f26309v).getText())) {
            setMeasuredDimension(0, this.f26307s);
        }
    }

    @Override // com.byazt.uq.DynamicButton, com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        if (eb.l(this.f26303k.getRenderRequest().a())) {
            setVisibility(8);
        }
        if ("timedown".equals(this.zy.e().getType())) {
            ((TextView) this.f26309v).setText(String.valueOf((int) Double.parseDouble(this.jl.e())));
            return true;
        }
        ((TextView) this.f26309v).setText(((int) Double.parseDouble(this.jl.e())) + "s");
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        if (!TextUtils.equals("skip-with-countdowns-video-countdown", this.zy.e().getType()) && !TextUtils.equals("skip-with-time-countdown", this.zy.e().getType())) {
            super.w();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
        layoutParams.gravity = 8388627;
        if (com.byazt.wkx.j.hp()) {
            layoutParams.leftMargin = this.f26306q;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
