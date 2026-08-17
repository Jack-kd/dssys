package com.beizi.fusion;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class zn {
    public static void a(View view, String str, int i2, String str2, int i3) {
        view.setBackground(a(str, i2, str2, i3));
    }

    public static void a(View view, String str, int i2, String str2, float[] fArr) {
        view.setBackground(a(str, i2, str2, fArr));
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

    private static Drawable a(String str, int i2, String str2, float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (!TextUtils.isEmpty(str) && str.startsWith("#")) {
            gradientDrawable.setColor(Color.parseColor(str));
        } else {
            gradientDrawable.setColor(Color.parseColor("#00000000"));
        }
        for (int i3 = 0; i3 < fArr.length; i3++) {
            float f2 = fArr[i3];
            if (f2 >= 0.0f) {
                fArr2[i3] = f2;
            } else {
                fArr2[i3] = 0.0f;
            }
        }
        gradientDrawable.setCornerRadii(fArr2);
        if (i2 > 0 && !TextUtils.isEmpty(str2) && str2.startsWith("#")) {
            gradientDrawable.setStroke(i2, Color.parseColor(str2));
        }
        return gradientDrawable;
    }
}
