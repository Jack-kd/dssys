package com.byazt.cj;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.hm.BaseSwiper;

@com.byazt.kj.hp(hp = {0, 1, 407, 1235})
/* loaded from: classes2.dex */
public class SwiperView extends BaseSwiper<ViewGroup> {
    public SwiperView(Context context) {
        super(context);
    }

    @Override // com.byazt.hm.BaseSwiper
    public View gu(int i2) {
        return (ViewGroup) this.hp.get(i2);
    }

    @Override // com.byazt.hm.BaseSwiper
    public View hp(int i2, int i3) {
        if (this.hp.isEmpty()) {
            return new View(getContext());
        }
        View viewGu = gu(i3);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (viewGu instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (viewGu.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewGu.getParent()).removeView(viewGu);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        frameLayout.addView(viewGu, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.byazt.hm.BaseSwiper, com.byazt.mc.ViewPager.j
    public void jl(int i2) {
        super.jl(i2);
    }

    @Override // com.byazt.hm.BaseSwiper, com.byazt.mc.ViewPager.j
    public void zy(int i2) {
        super.zy(i2);
    }
}
