package com.byazt.uq;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.nw.s;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 85, 2527})
/* loaded from: classes3.dex */
public class DynamicSkipCountDownContainer extends DynamicBaseWidgetImp implements com.byazt.wsc.jx {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26337l;
    public int sz;

    public DynamicSkipCountDownContainer(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        q();
    }

    private void q() {
        List<s> listGu = this.zy.gu();
        if (listGu == null || listGu.size() <= 0) {
            return;
        }
        for (s sVar : listGu) {
            if (sVar.e().hp() == 21) {
                this.hp = (int) (this.eb - com.byazt.sq.s.hp(this.gu, sVar.s()));
            }
            if (sVar.e().hp() == 20) {
                this.f26337l = (int) (this.eb - com.byazt.sq.s.hp(this.gu, sVar.s()));
            }
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        this.sz = i2;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.sz == 0) {
            setMeasuredDimension(this.f26337l, this.f26307s);
        } else {
            setMeasuredDimension(this.hp, this.f26307s);
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        setBackground(getBackgroundDrawable());
        setPadding((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.l()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.hp()));
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i2 = this.f26306q;
        layoutParams.leftMargin = i2;
        layoutParams.topMargin = this.f26301e;
        layoutParams.setMarginStart(i2);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
