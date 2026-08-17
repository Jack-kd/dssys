package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 908})
/* loaded from: classes3.dex */
public class DynamicDislikeFeedBack extends DynamicBaseWidgetImp {
    public DynamicDislikeFeedBack(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        if (com.byazt.wkx.j.hp()) {
            ImageView imageView = new ImageView(context);
            this.f26309v = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.eb = this.f26307s;
        } else {
            this.f26309v = new TextView(context);
        }
        this.f26309v.setTag(3);
        addView(this.f26309v, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.f26309v);
        if (dynamicRootView.getRenderRequest() != null) {
            if (dynamicRootView.getRenderRequest().e() && dynamicRootView.getRenderRequest().d()) {
                return;
            }
            this.f26309v.setVisibility(8);
            setVisibility(8);
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        ((TextView) this.f26309v).setText("反馈");
        this.f26309v.setTextAlignment(this.jl.s());
        ((TextView) this.f26309v).setTextColor(this.jl.eb());
        ((TextView) this.f26309v).setTextSize(this.jl.w());
        this.f26309v.setBackground(getBackgroundDrawable());
        if (this.jl.ns()) {
            int iCx = this.jl.cx();
            if (iCx > 0) {
                ((TextView) this.f26309v).setLines(iCx);
                ((TextView) this.f26309v).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.f26309v).setMaxLines(1);
            ((TextView) this.f26309v).setGravity(17);
            ((TextView) this.f26309v).setEllipsize(TextUtils.TruncateAt.END);
        }
        this.f26309v.setPadding((int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.jx()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.l()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.j()), (int) com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.jl.hp()));
        ((TextView) this.f26309v).setGravity(17);
        return true;
    }
}
