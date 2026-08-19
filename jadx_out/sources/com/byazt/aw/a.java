package com.byazt.aw;

import android.content.Context;
import android.util.DisplayMetrics;

@com.byazt.kj.hp(hp = {0, 1, 1452, 54})
/* loaded from: classes2.dex */
public class a {
    public static float hp = -1.0f;

    /* renamed from: j, reason: collision with root package name */
    public static int f18324j = -1;
    public static float jx = -1.0f;

    /* renamed from: l, reason: collision with root package name */
    public static int f18325l = -1;

    /* renamed from: w, reason: collision with root package name */
    public static int f18326w = -1;

    static {
        hp(com.byazt.di.l.getContext());
    }

    public static void hp(Context context) {
        Context context2 = context == null ? com.byazt.di.l.getContext() : context;
        if (context2 == null) {
            return;
        }
        DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
        hp = displayMetrics.density;
        f18325l = displayMetrics.densityDpi;
        jx = displayMetrics.scaledDensity;
        f18324j = displayMetrics.widthPixels;
        f18326w = displayMetrics.heightPixels;
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i2 = f18324j;
            int i3 = f18326w;
            if (i2 > i3) {
                f18324j = i3;
                f18326w = i2;
                return;
            }
            return;
        }
        int i4 = f18324j;
        int i5 = f18326w;
        if (i4 < i5) {
            f18324j = i5;
            f18326w = i4;
        }
    }

    public static float j(Context context) {
        hp(context);
        return hp;
    }

    public static int jx(Context context) {
        hp(context);
        return f18326w;
    }

    public static int l(Context context) {
        hp(context);
        return f18324j;
    }

    public static int w(Context context) {
        hp(context);
        return f18325l;
    }

    public static int l(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int hp(Context context, float f2) {
        hp(context);
        float fJ = j(context);
        if (fJ <= 0.0f) {
            fJ = 1.0f;
        }
        return (int) ((f2 / fJ) + 0.5f);
    }
}
