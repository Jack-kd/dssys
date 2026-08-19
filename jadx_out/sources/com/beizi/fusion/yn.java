package com.beizi.fusion;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class yn {
    public static void a(View view, String str, int i2, String str2, int i3) {
        view.setBackground(a(str, i2, str2, i3));
    }

    private static Drawable a(String str, int i2, String str2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (!TextUtils.isEmpty(str) && str.startsWith("#")) {
            gradientDrawable.setColor(Color.parseColor(str));
        } else {
            gradientDrawable.setColor(Color.parseColor("#00000000"));
        }
        if (i3 > 0) {
            gradientDrawable.setCornerRadius(i3);
        }
        if (i2 > 0 && !TextUtils.isEmpty(str2) && str2.startsWith("#")) {
            gradientDrawable.setStroke(i2, Color.parseColor(str2));
        }
        return gradientDrawable;
    }
}
