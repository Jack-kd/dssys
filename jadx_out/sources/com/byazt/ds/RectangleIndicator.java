package com.byazt.ds;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.byazt.kj.hp;

@hp(hp = {0, 1, 887, 2064})
/* loaded from: classes2.dex */
public class RectangleIndicator extends BaseIndicator {
    public RectangleIndicator(Context context) {
        super(context);
    }

    @Override // com.byazt.ds.BaseIndicator
    public Drawable l(int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }
}
