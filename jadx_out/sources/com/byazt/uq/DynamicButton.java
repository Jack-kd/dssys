package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.byazt.ebw.AnimationButton;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2101})
/* loaded from: classes3.dex */
public class DynamicButton extends DynamicBaseWidgetImp {
    public DynamicButton(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        AnimationButton animationButton = new AnimationButton(context);
        this.f26309v = animationButton;
        animationButton.setTag(Integer.valueOf(getClickArea()));
        addView(this.f26309v, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.byazt.wkx.j.hp() || !"fillButton".equals(this.zy.e().getType())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.f26309v).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.f26309v).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.jl.vv() * 2;
        widgetLayoutParams.height -= this.jl.vv() * 2;
        widgetLayoutParams.topMargin += this.jl.vv();
        int iVv = widgetLayoutParams.leftMargin + this.jl.vv();
        widgetLayoutParams.leftMargin = iVv;
        widgetLayoutParams.setMarginStart(iVv);
        widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        return widgetLayoutParams;
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        if (TextUtils.equals("download-progress-button", this.zy.e().getType()) && TextUtils.isEmpty(this.jl.e())) {
            this.f26309v.setVisibility(4);
            return true;
        }
        this.f26309v.setTextAlignment(this.jl.s());
        ((TextView) this.f26309v).setText(this.jl.e());
        ((TextView) this.f26309v).setTextColor(this.jl.eb());
        ((TextView) this.f26309v).setTextSize(this.jl.w());
        ((TextView) this.f26309v).setGravity(17);
        ((TextView) this.f26309v).setIncludeFontPadding(false);
        if ("fillButton".equals(this.zy.e().getType())) {
            this.f26309v.setPadding(0, 0, 0, 0);
        } else {
            this.f26309v.setPadding(this.jl.jx(), this.jl.l(), this.jl.j(), this.jl.hp());
        }
        return true;
    }
}
