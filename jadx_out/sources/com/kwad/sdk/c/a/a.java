package com.kwad.sdk.c.a;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.view.b;
import com.kwad.sdk.utils.ab;

/* loaded from: classes4.dex */
public final class a {
    private static int aJb;
    private static long alz;

    public static boolean HW() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (Math.abs(jUptimeMillis - alz) < 500) {
            alz = jUptimeMillis;
            return true;
        }
        alz = jUptimeMillis;
        return false;
    }

    public static boolean J(View view) {
        return (view.getSystemUiVisibility() & 1024) == 1024;
    }

    public static void K(View view) {
        if (view == null || ((View) view.getParent()) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view.setLayoutParams(layoutParams);
    }

    @Nullable
    public static int[] L(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int width = view.getWidth();
        int height = view.getHeight();
        iArr[0] = iArr[0] + (width / 2);
        iArr[1] = iArr[1] + (height / 2);
        return iArr;
    }

    public static int M(View view) {
        if (view == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            return ((FrameLayout.LayoutParams) layoutParams).gravity;
        }
        return 0;
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(Context context, float f2) {
        return a(2, f2, context);
    }

    @Deprecated
    public static int bA(@Nullable Context context) {
        if (context == null) {
            return 0;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static float bB(@NonNull Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static Point bC(Context context) {
        Point pointBD = bD(context);
        Point pointBE = bE(context);
        return a(pointBD, pointBE) ? new Point(pointBE.x - pointBD.x, pointBD.y) : b(pointBD, pointBE) ? new Point(pointBD.x, pointBE.y - pointBD.y) : new Point();
    }

    private static Point bD(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static Point bE(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return point;
    }

    public static int by(Context context) {
        try {
            Integer num = (Integer) ab.callMethod((InputMethodManager) context.getSystemService("input_method"), "getInputMethodWindowVisibleHeight", new Object[0]);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int bz(@Nullable Context context) {
        return px2dip(context, getStatusBarHeight(context));
    }

    public static void c(View view, int i2, int i3, int i4, int i5) {
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).setMargins(i2, i3, i4, 0);
            view.requestLayout();
        }
    }

    public static void d(View view, int i2, int i3) {
        View view2;
        if (view == null || i2 == 0 || i3 == 0 || (view2 = (View) view.getParent()) == null) {
            return;
        }
        int width = view2.getWidth();
        int height = view2.getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (width > height) {
            if (i2 > i3) {
                layoutParams.width = -1;
                layoutParams.height = -1;
            } else {
                layoutParams.width = (int) ((i2 / (i3 * 1.0f)) * height);
                layoutParams.height = height;
            }
        } else if (i3 > i2) {
            layoutParams.width = -1;
            layoutParams.height = -1;
        } else {
            layoutParams.width = width;
            layoutParams.height = (int) ((i3 / (i2 * 1.0f)) * width);
        }
        view.setLayoutParams(layoutParams);
    }

    private static boolean e(Window window) {
        return (window.getAttributes().flags & 1024) == 1024;
    }

    public static boolean f(Activity activity) {
        return e(activity.getWindow());
    }

    @Deprecated
    public static int g(@NonNull Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    @ColorInt
    public static int getColor(Context context, @ColorRes int i2) {
        return context.getResources().getColor(i2);
    }

    @Deprecated
    public static int getScreenHeight(@Nullable Context context) {
        if (context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (Build.VERSION.SDK_INT < 35) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                return displayMetrics.heightPixels;
            }
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            Rect bounds = currentWindowMetrics.getBounds();
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
            return (bounds.height() - insets.top) - insets.bottom;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Deprecated
    public static int getScreenWidth(@Nullable Context context) {
        if (context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (Build.VERSION.SDK_INT < 35) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                return displayMetrics.widthPixels;
            }
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            Rect bounds = currentWindowMetrics.getBounds();
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
            return (bounds.width() - insets.left) - insets.right;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int getStatusBarHeight(@Nullable Context context) {
        int i2 = aJb;
        if (i2 > 0 || context == null) {
            return i2;
        }
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            aJb = context.getResources().getDimensionPixelSize(identifier);
        } else {
            try {
                aJb = context.getResources().getDimensionPixelSize(((Integer) ab.getField("com.android.internal.R$dimen", "status_bar_height")).intValue());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (aJb <= 0) {
            aJb = a(context, 25.0f);
        }
        return aJb;
    }

    public static int h(Context context, int i2) {
        return context.getResources().getDimensionPixelSize(i2);
    }

    private static View i(@NonNull Activity activity) {
        return f(activity.getWindow());
    }

    public static int j(@NonNull Activity activity) {
        return i(activity).getWidth();
    }

    public static int k(@NonNull Activity activity) {
        return i(activity).getHeight();
    }

    public static int l(Activity activity) {
        if (activity == null) {
            return 0;
        }
        return activity.getResources().getDimensionPixelSize(activity.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static void p(View view, int i2) {
        if (view == null || i2 == 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    public static int px2dip(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void q(View view, int i2) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = i2;
        }
    }

    private static int a(int i2, float f2, Context context) {
        float fApplyDimension = TypedValue.applyDimension(2, f2, context.getResources().getDisplayMetrics());
        int i3 = (int) (fApplyDimension >= 0.0f ? fApplyDimension + 0.5f : fApplyDimension - 0.5f);
        if (i3 != 0) {
            return i3;
        }
        if (f2 == 0.0f) {
            return 0;
        }
        return f2 > 0.0f ? 1 : -1;
    }

    private static boolean b(Point point, Point point2) {
        return point.y < point2.y;
    }

    public static void e(View view, int i2, int i3) {
        View view2;
        if (view == null || i2 == 0 || i3 == 0 || (view2 = (View) view.getParent()) == null) {
            return;
        }
        int width = view2.getWidth();
        int height = view2.getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i2 > i3) {
            layoutParams.width = width;
            layoutParams.height = (int) ((i3 / (i2 * 1.0f)) * width);
        } else {
            layoutParams.width = (int) ((i2 / (i3 * 1.0f)) * height);
            layoutParams.height = height;
        }
        view.setLayoutParams(layoutParams);
    }

    private static View f(@NonNull Window window) {
        return window.getDecorView().findViewById(R.id.content);
    }

    @Deprecated
    public static int h(@NonNull Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static void b(View view, float f2, float f3) {
        View view2;
        if (view == null || f2 == 0.0f || f3 == 0.0f || (view2 = (View) view.getParent()) == null) {
            return;
        }
        float width = view2.getWidth();
        float height = view2.getHeight();
        if (width == 0.0f || height == 0.0f) {
            return;
        }
        float f4 = height / width;
        float f5 = f3 / f2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (f5 > f4) {
            layoutParams.width = (int) width;
            layoutParams.height = (int) (width * f5);
        } else {
            layoutParams.height = (int) height;
            layoutParams.width = (int) (height / f5);
        }
        view.setLayoutParams(layoutParams);
    }

    public static void f(View view, int i2, int i3) {
        View view2;
        if (view == null || i2 == 0 || i3 == 0 || (view2 = (View) view.getParent()) == null) {
            return;
        }
        int width = view2.getWidth();
        int height = view2.getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (width > height && i2 <= i3) {
            layoutParams.width = (int) ((i2 / (i3 * 1.0f)) * height);
            layoutParams.height = height;
        } else {
            layoutParams.width = width;
            layoutParams.height = (int) ((i3 / (i2 * 1.0f)) * width);
        }
        view.setLayoutParams(layoutParams);
    }

    public static void a(View.OnClickListener onClickListener, View... viewArr) {
        for (View view : viewArr) {
            view.setOnClickListener(onClickListener);
        }
    }

    private static boolean a(Point point, Point point2) {
        return point.x < point2.x;
    }

    public static View a(ViewGroup viewGroup, int i2, boolean z2) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, true);
    }

    public static void a(TextView textView, String str, Bitmap bitmap) {
        String str2 = str + " ";
        TextPaint paint = textView.getPaint();
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        int iCeil = ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(textView.getContext().getResources(), bitmap);
        int intrinsicWidth = (bitmapDrawable.getIntrinsicWidth() * iCeil) / bitmapDrawable.getIntrinsicHeight();
        bitmapDrawable.setBounds(0, a(textView.getContext(), 1.0f), intrinsicWidth, iCeil);
        float width = textView.getWidth();
        if (paint.measureText(str2) > width) {
            int i2 = 1;
            int i3 = 1;
            int i4 = 0;
            boolean z2 = false;
            while (true) {
                float fMeasureText = paint.measureText(str2.substring(i4, i2));
                if (fMeasureText >= width) {
                    i4 = i2 - 1;
                    i3++;
                } else if (i3 == textView.getMaxLines()) {
                    float f2 = fMeasureText + intrinsicWidth;
                    if (paint.measureText(" ") + f2 >= width || f2 + paint.measureText("...") + paint.measureText(" ") >= width) {
                        i2--;
                        z2 = true;
                    } else {
                        if (z2) {
                            str2 = str2.substring(0, i2) + "... ";
                            break;
                        }
                        i2++;
                    }
                } else {
                    i2++;
                }
                if (i2 > str2.length() || i3 > textView.getMaxLines()) {
                    break;
                }
            }
        }
        String str3 = str2 + "*";
        SpannableString spannableString = new SpannableString(str3);
        spannableString.setSpan(new b(textView.getContext(), bitmap), str3.length() - 1, str3.length(), 33);
        textView.setText(spannableString);
    }
}
