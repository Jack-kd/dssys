package com.byazt.mr;

import android.view.View;
import com.byazt.mc.ViewPager;

@com.byazt.kj.hp(hp = {0, 1, 1749, 34})
/* loaded from: classes3.dex */
public class l implements ViewPager.w {
    @Override // com.byazt.mc.ViewPager.w
    public void hp(View view, float f2) {
        int width = view.getWidth();
        if (f2 < -1.0f || f2 > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f2 < 0.0f) {
            view.setTranslationX((-width) * f2);
        } else {
            view.setTranslationX(width);
            view.setTranslationX((-width) * f2);
        }
        view.setAlpha(Math.max(0.0f, 1.0f - Math.abs(f2)));
    }
}
