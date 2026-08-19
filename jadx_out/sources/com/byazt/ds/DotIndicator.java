package com.byazt.ds;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.byazt.kj.hp;

@hp(hp = {0, 1, 887, 888})
/* loaded from: classes2.dex */
public class DotIndicator extends BaseIndicator {
    public DotIndicator(Context context) {
        super(context);
    }

    @Override // com.byazt.ds.BaseIndicator
    public Drawable l(int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }
}
