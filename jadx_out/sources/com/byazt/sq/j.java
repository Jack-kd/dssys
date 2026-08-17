package com.byazt.sq;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

@com.byazt.kj.hp(hp = {0, 1, 1453, 38})
/* loaded from: classes3.dex */
public class j {
    public static Drawable hp(Context context, com.byazt.nw.eb ebVar) {
        if (context == null || ebVar == null) {
            return null;
        }
        return hp(context, (int) s.hp(context, ebVar.xs()), ebVar.u(), ebVar.wv());
    }

    public static Drawable hp(Context context, int i2, int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i2, i3);
        }
        gradientDrawable.setColor(i4);
        return gradientDrawable;
    }
}
