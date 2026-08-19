package com.byazt.uq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2523})
/* loaded from: classes3.dex */
public class DynamicSkipCountDownBtn extends DynamicButton implements com.byazt.wsc.jx {
    public int[] hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26336l;
    public int sz;

    public DynamicSkipCountDownBtn(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        dynamicRootView.setTimeOutListener(this);
    }

    private void q() {
        int iHp = (int) com.byazt.sq.s.hp(this.gu, this.jl.w());
        this.f26336l = ((this.f26307s - iHp) / 2) - this.jl.hp();
        this.sz = 0;
    }

    @Override // com.byazt.wsc.jx
    @SuppressLint({"SetTextI18n"})
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        if (i2 == 0) {
            this.f26309v.setVisibility(0);
            ((TextView) this.f26309v).setText("| 跳过");
            this.f26309v.measure(-2, -2);
            this.hp = new int[]{this.f26309v.getMeasuredWidth() + 1, this.f26309v.getMeasuredHeight()};
            View view = this.f26309v;
            int[] iArr = this.hp;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.f26309v).setGravity(17);
            ((TextView) this.f26309v).setIncludeFontPadding(false);
            q();
            this.f26309v.setPadding(this.jl.jx(), this.f26336l, this.jl.j(), this.sz);
        }
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (TextUtils.isEmpty(((TextView) this.f26309v).getText())) {
            setMeasuredDimension(0, this.f26307s);
        } else {
            setMeasuredDimension(this.eb, this.f26307s);
        }
    }

    @Override // com.byazt.uq.DynamicButton, com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        ((TextView) this.f26309v).setText("");
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
