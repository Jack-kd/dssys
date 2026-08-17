package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2424})
/* loaded from: classes3.dex */
public class DynamicTimeOuterSkip extends DynamicButton implements com.byazt.wsc.jx {
    public boolean hp;

    public DynamicTimeOuterSkip(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null) {
            this.hp = dynamicRootView.getRenderRequest().v();
        }
    }

    private String hp(boolean z2) {
        String str = "跳过";
        if (!"skip-with-time-skip-btn".equals(this.zy.e().getType())) {
            return "跳过";
        }
        if (com.byazt.wkx.j.hp() && this.hp) {
            str = "X";
        }
        return z2 ? str : "| ".concat(str);
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
        if (!TextUtils.equals(this.zy.e().getType(), "skip-with-time-skip-btn")) {
            return true;
        }
        ((TextView) this.f26309v).setText("");
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        if (TextUtils.equals("skip-with-time-skip-btn", this.zy.e().getType())) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
            layoutParams.gravity = 8388629;
            setLayoutParams(layoutParams);
            this.f26309v.setTextAlignment(1);
            ((TextView) this.f26309v).setGravity(17);
        } else {
            super.w();
        }
        if (!"skip-with-time-skip-btn".equals(this.zy.e().getType())) {
            this.f26309v.setTextAlignment(1);
            ((TextView) this.f26309v).setGravity(17);
        }
        setVisibility(8);
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        int i3 = 0;
        if (z2) {
            ((TextView) this.f26309v).setText(hp(z3));
        } else {
            if (z3) {
                ((TextView) this.f26309v).setText(hp(z3));
            }
            if (!z3) {
                i3 = 8;
            }
        }
        setVisibility(i3);
    }
}
