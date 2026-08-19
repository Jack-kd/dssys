package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.jn;

/* loaded from: classes2.dex */
public abstract class xn {
    public static void a(Context context, View view, String str, int i2, String str2, int i3) {
        view.setBackground(a(context, str, i2, str2, i3));
    }

    private static Drawable a(Context context, String str, int i2, String str2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (qo.d(str)) {
            gradientDrawable.setColor(Color.parseColor(str));
        } else {
            gradientDrawable.setColor(0);
        }
        if (i3 > 0) {
            gradientDrawable.setCornerRadius(jn.a.a(context, i3));
        }
        if (i2 > 0 && qo.d(str2)) {
            gradientDrawable.setStroke(jn.a.a(context, i2), Color.parseColor(str2));
        }
        return gradientDrawable;
    }

    public static int a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (qo.f(str)) {
            return (int) (i2 * qo.k(str));
        }
        return qo.i(str);
    }
}
