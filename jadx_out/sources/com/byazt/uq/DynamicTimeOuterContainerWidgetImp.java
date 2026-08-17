package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.nw.s;
import com.byazt.sq.eb;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 85, 1454})
/* loaded from: classes3.dex */
public class DynamicTimeOuterContainerWidgetImp extends DynamicBaseWidgetImp implements com.byazt.wsc.jx {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26340l;

    /* renamed from: n, reason: collision with root package name */
    public int f26341n;
    public boolean ns;
    public int sz;

    public DynamicTimeOuterContainerWidgetImp(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.f26341n = 0;
        setTag(Integer.valueOf(getClickArea()));
        q();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().d()) {
            return;
        }
        View view = this.f26309v;
        if (view != null) {
            view.setVisibility(8);
        }
        setVisibility(8);
    }

    private void q() {
        List<s> listGu = this.zy.gu();
        if (listGu == null || listGu.size() <= 0) {
            return;
        }
        Iterator<s> it = listGu.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            s next = it.next();
            if (TextUtils.equals("skip-with-time-skip-btn", next.e().getType())) {
                int iHp = (int) com.byazt.sq.s.hp(this.gu, next.s() + (com.byazt.wkx.j.hp() ? next.zy() : 0));
                this.sz = iHp;
                this.hp = this.eb - iHp;
            }
        }
        this.f26341n = this.eb - this.hp;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.byazt.wsc.jx
    public void hp(CharSequence charSequence, boolean z2, int i2, boolean z3) {
        if (z3 && this.ns != z3) {
            this.ns = z3;
            w();
            return;
        }
        if (z2 && this.f26340l != z2) {
            this.f26340l = z2;
            w();
        }
        this.f26340l = z2;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.ns && this.jl != null) {
            setMeasuredDimension(this.sz + ((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx())) + ((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j())), this.f26307s);
        } else if (this.f26340l) {
            setMeasuredDimension(this.eb, this.f26307s);
        } else {
            setMeasuredDimension(this.hp, this.f26307s);
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        if (eb.l(this.f26303k.getRenderRequest().a())) {
            return true;
        }
        super.s();
        setPadding((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.l()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.hp()));
        return true;
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public void w() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.f26340l) {
            layoutParams.leftMargin = this.f26306q;
        } else {
            layoutParams.leftMargin = this.f26306q + this.f26341n;
        }
        if (this.ns && this.jl != null) {
            layoutParams.leftMargin = ((this.f26306q + this.f26341n) - ((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx()))) - ((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j()));
        }
        if (com.byazt.wkx.j.hp()) {
            layoutParams.topMargin = this.f26301e - ((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.l()));
        } else {
            layoutParams.topMargin = this.f26301e;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
