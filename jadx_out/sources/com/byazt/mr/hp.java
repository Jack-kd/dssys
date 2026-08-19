package com.byazt.mr;

import android.view.View;
import com.byazt.mc.ViewPager;

@com.byazt.kj.hp(hp = {0, 1, 1749, 28})
/* loaded from: classes3.dex */
public class hp implements ViewPager.w {
    @Override // com.byazt.mc.ViewPager.w
    public void hp(View view, float f2) {
        view.setPivotX(f2 < 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f2 * 90.0f);
    }
}
