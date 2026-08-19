package com.byazt.ln;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 1423, 94})
/* loaded from: classes3.dex */
public class eb {
    public static Field hp;

    /* renamed from: j, reason: collision with root package name */
    public static Field f22662j;
    public static boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public static Method f22663l;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22664w;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f22663l = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", null);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(View view) {
        return view.hasTransientState();
    }

    public static void e(View view) {
        view.stopNestedScroll();
    }

    public static Display eb(View view) {
        return view.getDisplay();
    }

    public static int hp(View view) {
        return view.getLayoutDirection();
    }

    public static int j(View view) {
        return view.getMinimumWidth();
    }

    private static float jx(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f22663l) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, null)).intValue();
            } catch (Exception unused) {
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static float l(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : jx(viewConfiguration, context);
    }

    public static int q(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static boolean s(View view) {
        return view.isAttachedToWindow();
    }

    public static int w(View view) {
        return view.getMinimumHeight();
    }

    public static void hp(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static int l(View view) {
        return view.getImportantForAccessibility();
    }

    public static void hp(View view, Runnable runnable, long j2) {
        view.postOnAnimationDelayed(runnable, j2);
    }

    public static void l(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    public static float hp(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : jx(viewConfiguration, context);
    }

    public static void hp(View view, int i2) {
        view.setImportantForAccessibility(i2);
    }

    public static void jx(View view) {
        view.postInvalidateOnAnimation();
    }

    public static boolean hp(MotionEvent motionEvent, int i2) {
        return (motionEvent.getSource() & i2) == i2;
    }
}
