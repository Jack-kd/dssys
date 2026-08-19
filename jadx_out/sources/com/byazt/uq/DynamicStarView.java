package com.byazt.uq;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.nw.s;
import com.byazt.wnd.TTRatingBar2;

@com.byazt.kj.hp(hp = {0, 1, 85, 2225})
/* loaded from: classes3.dex */
public class DynamicStarView extends DynamicBaseWidgetImp {
    public int hp;

    public DynamicStarView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.hp = 0;
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context, null);
        this.f26309v = tTRatingBar2;
        tTRatingBar2.setTag(Integer.valueOf(getClickArea()));
        addView(this.f26309v, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        int iHp = (int) ((com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.w()) * 5.0f) + com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx() + com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j())));
        if (this.eb > iHp && 4 == this.jl.s()) {
            this.hp = (this.eb - iHp) / 2;
        }
        this.eb = iHp;
        return new FrameLayout.LayoutParams(this.eb, this.f26307s);
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() throws NumberFormatException {
        DynamicRootView dynamicRootView;
        super.s();
        double dZy = this.jl.zy();
        if (com.byazt.wkx.j.hp() && (dZy < 0.0d || dZy > 5.0d || ((dynamicRootView = this.f26303k) != null && dynamicRootView.getRenderRequest() != null && this.f26303k.getRenderRequest().jl() != 4))) {
            this.f26309v.setVisibility(8);
            return true;
        }
        double d2 = (dZy < 0.0d || dZy > 5.0d) ? 5.0d : dZy;
        this.f26309v.setVisibility(0);
        ((TTRatingBar2) this.f26309v).hp(d2, this.jl.eb(), (int) this.jl.w(), ((int) com.byazt.sq.s.hp(this.gu, this.jl.l())) + ((int) com.byazt.sq.s.hp(this.gu, this.jl.hp())) + ((int) com.byazt.sq.s.hp(this.gu, this.jl.w())));
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.eb, this.f26307s);
        layoutParams.topMargin = this.f26301e;
        int i2 = this.f26306q + this.hp;
        layoutParams.leftMargin = i2;
        layoutParams.setMarginStart(i2);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
