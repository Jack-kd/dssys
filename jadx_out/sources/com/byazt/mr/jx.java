package com.byazt.mr;

import android.view.View;
import com.byazt.mc.ViewPager;

@com.byazt.kj.hp(hp = {0, 1, 1749, 30})
/* loaded from: classes3.dex */
public class jx implements ViewPager.w {
    public final float hp = 0.8f;

    /* renamed from: l, reason: collision with root package name */
    public final float f23273l = 0.5f;

    @Override // com.byazt.mc.ViewPager.w
    public void hp(View view, float f2) {
        float f3 = ((f2 < 0.0f ? 0.19999999f : -0.19999999f) * f2) + 1.0f;
        float f4 = (f2 * (f2 < 0.0f ? 0.5f : -0.5f)) + 1.0f;
        if (f2 < 0.0f) {
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight() / 2);
        } else {
            view.setPivotX(0.0f);
            view.setPivotY(view.getHeight() / 2);
        }
        view.setScaleX(f3);
        view.setScaleY(f3);
        view.setAlpha(Math.abs(f4));
    }
}
