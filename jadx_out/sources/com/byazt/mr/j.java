package com.byazt.mr;

import android.text.TextUtils;
import android.view.View;
import com.byazt.mc.ViewPager;

@com.byazt.kj.hp(hp = {0, 1, 1749, 38})
/* loaded from: classes3.dex */
public class j implements ViewPager.w {
    public String hp;

    public void hp(String str) {
        this.hp = str;
    }

    @Override // com.byazt.mc.ViewPager.w
    public void hp(View view, float f2) {
        if (f2 < -1.0f || f2 > 1.0f) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(1.0f);
            view.setTranslationX(view.getWidth() * (-f2));
            view.setTranslationY(view.getHeight() * f2);
        }
        if (TextUtils.equals(this.hp, "cube")) {
            float height = f2 < 0.0f ? view.getHeight() : 0.0f;
            view.setPivotX(view.getWidth() * 0.5f);
            view.setPivotY(height);
            view.setRotationX(f2 * (-90.0f));
        }
    }
}
