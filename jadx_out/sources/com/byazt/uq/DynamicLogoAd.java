package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.byazt.nw.s;
import com.byazt.yj.gu;

@com.byazt.kj.hp(hp = {0, 1, 85, 1459})
/* loaded from: classes3.dex */
public class DynamicLogoAd extends DynamicBaseWidgetImp {
    public DynamicLogoAd(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        TextView textView = new TextView(context);
        this.f26309v = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.f26309v, getWidgetLayoutParams());
    }

    private boolean q() {
        if (com.byazt.wkx.j.hp()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.jl.f23825l) && this.jl.f23825l.contains("adx:")) || gu.l();
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        this.f26309v.setTextAlignment(this.jl.s());
        ((TextView) this.f26309v).setTextColor(this.jl.eb());
        ((TextView) this.f26309v).setTextSize(this.jl.w());
        if (com.byazt.wkx.j.hp()) {
            ((TextView) this.f26309v).setIncludeFontPadding(false);
            ((TextView) this.f26309v).setTextSize(Math.min(((com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), this.f26307s) - this.jl.l()) - this.jl.hp()) - 0.5f, this.jl.w()));
            ((TextView) this.f26309v).setText("AD");
            return true;
        }
        if (!q()) {
            ((TextView) this.f26309v).setText("广告");
            return true;
        }
        if (gu.l()) {
            ((TextView) this.f26309v).setText(gu.hp());
            return true;
        }
        ((TextView) this.f26309v).setText(gu.hp(this.jl.f23825l));
        return true;
    }
}
