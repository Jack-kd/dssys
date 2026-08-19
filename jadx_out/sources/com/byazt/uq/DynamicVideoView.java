package com.byazt.uq;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.nw.s;
import com.google.android.material.badge.BadgeDrawable;
import com.sigmob.sdk.archives.tar.e;

@com.byazt.kj.hp(hp = {0, 1, 85, 590})
/* loaded from: classes3.dex */
public class DynamicVideoView extends DynamicBaseWidgetImp implements com.byazt.wsc.w {
    public TextView hp;

    /* renamed from: l, reason: collision with root package name */
    public FrameLayout f26346l;
    public boolean sz;

    public DynamicVideoView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.sz = false;
        View view = new View(context);
        this.f26309v = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.hp = new TextView(context);
        this.f26346l = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.byazt.sq.s.hp(context, 40.0f), (int) com.byazt.sq.s.hp(context, 15.0f));
        layoutParams.gravity = BadgeDrawable.BOTTOM_END;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.hp.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.hp.setBackground(gradientDrawable);
        this.hp.setTextSize(10.0f);
        this.hp.setGravity(17);
        this.hp.setTextColor(-1);
        this.hp.setVisibility(8);
        if (com.byazt.wkx.j.hp()) {
            addView(this.f26346l, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.hp);
        addView(this.f26309v, getWidgetLayoutParams());
        if (!com.byazt.wkx.j.hp()) {
            addView(this.f26346l, getWidgetLayoutParams());
        }
        dynamicRootView.jx = this.f26346l;
        dynamicRootView.setVideoListener(this);
    }

    private void jx(View view) {
        if (view == this.hp || view == ((DynamicBaseWidgetImp) this).ec) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.byazt.wsc.hp.f27116a)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i2 = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                return;
            }
            jx(viewGroup.getChildAt(i2));
            i2++;
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public boolean j() {
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        double dEb = 0.0d;
        double dA = 0.0d;
        for (s sVarJl = this.zy; sVarJl != null; sVarJl = sVarJl.jl()) {
            dA = (dA + sVarJl.a()) - sVarJl.j();
            dEb = (dEb + sVarJl.eb()) - sVarJl.w();
        }
        try {
            float f2 = (float) dA;
            int iHp = (int) com.byazt.sq.s.hp(getContext(), f2);
            int iHp2 = (int) com.byazt.sq.s.hp(getContext(), f2 + this.f26310w);
            if (com.byazt.sq.jx.hp(getContext())) {
                int dynamicWidth = ((DynamicRoot) this.f26303k.getChildAt(0)).getDynamicWidth();
                int i2 = dynamicWidth - iHp2;
                iHp2 = dynamicWidth - iHp;
                iHp = i2;
            }
            if ("open_ad".equals(this.f26303k.getRenderRequest().a())) {
                this.f26303k.jx = this.f26346l;
            } else {
                float f3 = (float) dEb;
                ((DynamicRoot) this.f26303k.getChildAt(0)).hp.update(iHp, (int) com.byazt.sq.s.hp(getContext(), f3), iHp2, (int) com.byazt.sq.s.hp(getContext(), f3 + this.f26300a));
            }
        } catch (Exception unused) {
        }
        this.f26303k.hp(dA, dEb, this.f26310w, this.f26300a, this.jl.v());
        return true;
    }

    @Override // com.byazt.wsc.w
    public void setTimeUpdate(int i2) {
        if (!this.zy.e().w().nc() || i2 <= 0 || this.sz) {
            this.sz = true;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                jx(getChildAt(i3));
            }
            this.hp.setVisibility(8);
            return;
        }
        String str = (i2 >= 60 ? "0" + (i2 / 60) : "" + e.f35456V) + ":";
        int i4 = i2 % 60;
        this.hp.setText(i4 > 9 ? str + i4 : str + "0" + i4);
        this.hp.setVisibility(0);
    }
}
