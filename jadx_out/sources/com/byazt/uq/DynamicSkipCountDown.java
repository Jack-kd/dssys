package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2044})
/* loaded from: classes3.dex */
public class DynamicSkipCountDown extends DynamicButton implements com.byazt.wsc.jx {
    public DynamicSkipCountDown(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override // com.byazt.uq.DynamicButton, com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        if (i2 != 0) {
            ((TextView) this.f26309v).setText(" | " + String.format("%1$ss后可跳过", Integer.valueOf(i2)));
        } else if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (TextUtils.isEmpty(((TextView) this.f26309v).getText())) {
            setMeasuredDimension(0, this.f26307s);
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
        int i2 = this.f26306q;
        layoutParams.leftMargin = i2;
        layoutParams.gravity = 16;
        layoutParams.setMarginStart(i2);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
