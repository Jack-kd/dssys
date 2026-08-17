package com.byazt.uq;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.byazt.nw.s;
import com.byazt.wnd.DislikeView;

@com.byazt.kj.hp(hp = {0, 1, 85, 2003})
/* loaded from: classes3.dex */
public class DynamicDislike extends DynamicBaseWidgetImp {
    public DynamicDislike(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        if (com.byazt.wkx.j.hp()) {
            this.f26309v = new ImageView(context);
        } else {
            this.f26309v = new DislikeView(context);
        }
        this.f26309v.setTag(3);
        addView(this.f26309v, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.f26309v);
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        int iHp = (int) com.byazt.sq.s.hp(this.gu, this.jl.xs());
        View view = this.f26309v;
        if (!(view instanceof DislikeView)) {
            return true;
        }
        ((DislikeView) view).setRadius((int) com.byazt.sq.s.hp(this.gu, this.jl.v()));
        ((DislikeView) this.f26309v).setStrokeWidth(iHp);
        ((DislikeView) this.f26309v).setStrokeColor(this.jl.u());
        ((DislikeView) this.f26309v).setBgColor(this.jl.wv());
        ((DislikeView) this.f26309v).setDislikeColor(this.jl.eb());
        ((DislikeView) this.f26309v).setDislikeWidth((int) com.byazt.sq.s.hp(this.gu, 1.0f));
        return true;
    }
}
