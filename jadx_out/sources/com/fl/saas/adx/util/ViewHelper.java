package com.fl.saas.adx.util;

import android.content.Context;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.fl.saas.B;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ViewHelper {
    public static int AT_MOST_SPEC = View.MeasureSpec.makeMeasureSpec(1073741823, Integer.MIN_VALUE);

    public static /* synthetic */ void a(long[] jArr, int i2, View.OnClickListener onClickListener, View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - jArr[0] <= i2 || onClickListener == null) {
            return;
        }
        onClickListener.onClick(view);
        jArr[0] = jElapsedRealtime;
    }

    public static boolean checkMateria(NativeMaterial nativeMaterial) {
        if (nativeMaterial != null) {
            return (nativeMaterial.getAdMediaView() == null && TextUtils.isEmpty(nativeMaterial.getMainImageUrl())) ? false : true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static <T extends View> T findChildView(@Nullable View view, Function<View, Boolean> function) {
        T t2;
        if (function.apply(view) == Boolean.TRUE) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            T t3 = (T) viewGroup.getChildAt(i2);
            if (function.apply(t3) == Boolean.TRUE) {
                return t3;
            }
            if ((t3 instanceof ViewGroup) && (t2 = (T) findChildView(t3, function)) != null) {
                return t2;
            }
        }
        return null;
    }

    @Nullable
    public static <T extends View> T findChildViewOfType(@Nullable View view, @NonNull final Class<T> cls) {
        return (T) findChildView(view, new Function() { // from class: com.fl.saas.adx.util.t
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                View view2 = (View) obj;
                return Boolean.valueOf(view2 != null && cls.isAssignableFrom(view2.getClass()));
            }
        });
    }

    public static ViewGroup.LayoutParams getMatchParent() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    public static ViewGroup getParent(View view) {
        if (view == null) {
            return null;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            return (ViewGroup) parent;
        }
        return null;
    }

    public static View getTopView() {
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Object objInvoke = cls.getMethod("getInstance", null).invoke(null, null);
            if (objInvoke != null) {
                Field declaredField = cls.getDeclaredField("mViews");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(objInvoke);
                if (obj != null && (obj instanceof ArrayList)) {
                    return (View) ((ArrayList) obj).get(((ArrayList) obj).size() - 1);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return null;
    }

    public static Rect getViewRectOnScreen(View view) {
        Rect rect = new Rect();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        rect.left = i2;
        rect.top = iArr[1];
        rect.right = i2 + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        return rect;
    }

    public static ViewGroup.LayoutParams getWrapParent() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    public static <T extends View> boolean hasChildViewOfType(View view, Class<T> cls) {
        return findChildViewOfType(view, cls) != null;
    }

    public static <T extends View> T inflate(Context context, @LayoutRes int i2) {
        return (T) LayoutInflater.from(context).inflate(i2, (ViewGroup) null);
    }

    public static boolean isPointInsideView(View view, float f2, float f3) {
        return getViewRectOnScreen(view).contains(Math.round(f2), Math.round(f3));
    }

    public static boolean isViewInParent(ViewGroup viewGroup, View view) {
        if (view != null && viewGroup != null) {
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                if (parent == viewGroup) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void onSingleClickListener(View view, final int i2, final View.OnClickListener onClickListener) {
        final long[] jArr = {0};
        view.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.util.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewHelper.a(jArr, i2, onClickListener, view2);
            }
        });
    }

    public static void removeParent(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static int[] selfMeasure(View view) {
        if (view == null) {
            return new int[]{0, 0};
        }
        int i2 = AT_MOST_SPEC;
        view.measure(i2, i2);
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    public static TextView setTextView(TextView textView, String str) {
        return setTextView(textView, str, null);
    }

    public static void onSingleClickListener(View view, View.OnClickListener onClickListener) {
        onSingleClickListener(view, 1000, onClickListener);
    }

    public static TextView setTextView(TextView textView, String str, @Nullable B b3) {
        if (TextUtils.isEmpty(str)) {
            if (b3 != null) {
                b3.a(textView);
            }
        } else if (textView != null) {
            textView.setText(str);
            textView.setVisibility(0);
            return textView;
        }
        return textView;
    }
}
