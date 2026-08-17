package com.byazt.zn;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT})
/* loaded from: classes3.dex */
public class xh {

    /* renamed from: a, reason: collision with root package name */
    public static volatile int f28580a = -1;
    public static int eb = 13;
    public static volatile int hp = -1;

    /* renamed from: j, reason: collision with root package name */
    public static volatile float f28581j = -1.0f;
    public static volatile int jx = -1;

    /* renamed from: l, reason: collision with root package name */
    public static volatile float f28582l = -1.0f;

    /* renamed from: s, reason: collision with root package name */
    public static float f28583s = 0.0f;

    /* renamed from: w, reason: collision with root package name */
    public static volatile int f28584w = -1;

    public interface hp {
        void hp(View view);
    }

    public static float a(Context context) {
        hp(context);
        return f28582l;
    }

    public static float e(Context context) {
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        try {
            if (context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android") > 0) {
                return context.getApplicationContext().getResources().getDimensionPixelSize(r1);
            }
            return 0.0f;
        } catch (Throwable th) {
            th.getMessage();
            return 0.0f;
        }
    }

    private static boolean eb() {
        return f28582l < 0.0f || jx < 0 || f28581j < 0.0f || f28584w < 0 || f28580a < 0;
    }

    public static boolean gu(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", null).invoke(clsLoadClass, null)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int hp(float f2, float f3) {
        return (int) ((f3 * f2) + 0.5f);
    }

    public static int j(Context context, float f2) {
        hp(context);
        float fU = u(context);
        if (fU <= 0.0f) {
            fU = 1.0f;
        }
        return (int) ((f2 / fU) + 0.5f);
    }

    public static boolean jl(Context context) {
        try {
            if ("V1938CT".equals(((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDeviceModel())) {
                return false;
            }
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int jx(Context context, float f2) {
        hp(context);
        return (int) ((f2 * u(context)) + 0.5f);
    }

    public static TextView k(Context context) {
        if (context == null) {
            return null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.byazt.ruu.hp.l().hp(context, 4.0f));
        TextView textView = new TextView(context);
        textView.setClickable(false);
        textView.setFocusable(false);
        textView.setBackground(gradientDrawable);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) (w(context) * (-0.3d));
        int iJx = jx(context, 20.0f);
        int iJx2 = jx(context, 11.0f);
        textView.setPadding(iJx, iJx2, iJx, iJx2);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(-1);
        textView.setTextSize(eb);
        textView.setGravity(17);
        return textView;
    }

    public static int l(float f2, float f3) {
        if (f2 <= 0.0f) {
            f2 = 1.0f;
        }
        return (int) ((f3 / f2) + 0.5f);
    }

    public static int q(Context context) {
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int s(Context context) {
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private static float u(Context context) {
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static int v(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int w(Context context) {
        hp(context);
        return f28580a;
    }

    public static boolean zy(Context context) {
        String strZy = ky.zy("com.kllk.feature.screen.heteromorphism");
        if (context == null || context.getPackageManager() == null) {
            return false;
        }
        try {
            return context.getPackageManager().hasSystemFeature(strZy);
        } catch (Throwable unused) {
            return true;
        }
    }

    public static float eb(Context context) {
        hp(context);
        return f28581j;
    }

    public static void hp(Context context) {
        Resources resources;
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        if (context == null || (resources = context.getResources()) == null) {
            return;
        }
        if (eb()) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            f28582l = displayMetrics.density;
            jx = displayMetrics.densityDpi;
            f28581j = displayMetrics.scaledDensity;
            f28584w = displayMetrics.widthPixels;
            f28580a = displayMetrics.heightPixels;
        }
        if (resources.getConfiguration() != null) {
            if (resources.getConfiguration().orientation == 1) {
                if (f28584w > f28580a) {
                    int i2 = f28584w;
                    f28584w = f28580a;
                    f28580a = i2;
                    return;
                }
                return;
            }
            if (f28584w < f28580a) {
                int i3 = f28584w;
                f28584w = f28580a;
                f28580a = i3;
            }
        }
    }

    private static boolean l(int i2) {
        return i2 == 0 || i2 == 8 || i2 == 4;
    }

    public static void a(View view) {
        if (view == null) {
            return;
        }
        hp(view, 0);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.zn.xh.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
    }

    public static int j(Context context) {
        hp(context);
        return f28584w;
    }

    public static int[] jx(Context context) {
        hp(context);
        return new int[]{f28584w, f28580a};
    }

    public static int l(Context context, float f2) {
        hp(context);
        float fEb = eb(context);
        if (fEb <= 0.0f) {
            fEb = 1.0f;
        }
        return (int) ((f2 / fEb) + 0.5f);
    }

    public static void w(final View view) {
        if (view == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.zn.xh.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                xh.hp(view, 8);
                ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f).setDuration(0L).start();
            }
        });
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.start();
    }

    public static Bitmap eb(View view) {
        if (view == null) {
            return null;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.draw(canvas);
        canvas.save();
        return bitmapCreateBitmap;
    }

    private static boolean e(Activity activity) {
        try {
            if (Build.VERSION.SDK_INT >= 26 && activity.getWindow().getDecorView().getHeight() > 0 && activity.getWindow().getDecorView().getWidth() > 0) {
                if (s((Context) activity) - activity.getWindow().getDecorView().getHeight() <= 0) {
                    return q((Context) activity) - activity.getWindow().getDecorView().getWidth() > 0;
                }
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static void gu(Activity activity) {
        Object objInvoke;
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("getActivityOptions", null);
            declaredMethod.setAccessible(true);
            objInvoke = declaredMethod.invoke(activity, null);
        } catch (Throwable unused) {
            objInvoke = null;
        }
        try {
            Class<?> cls = null;
            for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().startsWith("TranslucentConversionListener")) {
                    cls = cls2;
                }
            }
            Method declaredMethod2 = Activity.class.getDeclaredMethod("convertToTranslucent", cls, ActivityOptions.class);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(activity, null, objInvoke);
        } catch (Throwable unused2) {
        }
    }

    public static boolean j(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static int[] jx(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static int[] l(Context context) {
        WindowManager windowManager = null;
        if (context == null) {
            return null;
        }
        try {
            windowManager = (WindowManager) context.getSystemService("window");
        } catch (Exception unused) {
        }
        int[] iArr = new int[2];
        if (windowManager != null) {
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
                    iArr[0] = bounds.width();
                    iArr[1] = bounds.height();
                } else {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    iArr[0] = displayMetrics.widthPixels;
                    iArr[1] = displayMetrics.heightPixels;
                }
            } catch (Throwable unused2) {
            }
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static boolean j(Activity activity) {
        return a(activity) || hp("ro.miui.notch") == 1 || gu((Context) activity) || jl(activity) || j() || w() || e(activity) || zy(activity);
    }

    public static boolean q(Activity activity) {
        return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static void s(Activity activity) {
        try {
            Class<?> cls = null;
            for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().contains("TranslucentConversionListener")) {
                    cls = cls2;
                }
            }
            Method declaredMethod = Activity.class.getDeclaredMethod("convertToTranslucent", cls);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, null);
        } catch (Throwable unused) {
        }
    }

    public static void w(@ForbidWrapParam Activity activity) {
        if (jx()) {
            return;
        }
        try {
            final WeakReference weakReference = new WeakReference(activity);
            activity.getWindow().getDecorView().post(new Runnable() { // from class: com.byazt.zn.xh.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.dnb.s.hp(new com.byazt.uid.eb("check_notch") { // from class: com.byazt.zn.xh.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Activity activity2 = (Activity) weakReference.get();
                                if (activity2 != null && !xh.jx()) {
                                    xh.hp = xh.j(activity2) ? 1 : 0;
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean a(Activity activity) {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
            return (rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void jx(Activity activity) {
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(com.umeng.analytics.pro.l.f49442b);
        } catch (Exception unused) {
        }
    }

    public static boolean jx() {
        return hp != -1;
    }

    public static boolean w() {
        return Build.MANUFACTURER.equals("samsung");
    }

    public static String a() {
        return hp(((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi());
    }

    public static void s(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public static void eb(Activity activity) {
        try {
            gu(activity);
        } catch (Throwable unused) {
        }
    }

    public static boolean j() {
        String deviceModel = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDeviceModel();
        return deviceModel.equals("IN2010") || deviceModel.equals("IN2020") || deviceModel.equals("KB2000");
    }

    public static float hp(Context context, float f2) {
        hp(context);
        return TypedValue.applyDimension(2, f2, context.getResources().getDisplayMetrics());
    }

    public static int[] l(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static void hp(View view, int i2, int i3, int i4, int i5) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.top -= i2;
        rect.bottom += i3;
        rect.left -= i4;
        rect.right += i5;
        ((View) view.getParent()).setTouchDelegate(new com.byazt.ymw.q(rect, view));
    }

    public static void l(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        hp(view, (ViewGroup.MarginLayoutParams) layoutParams, i2, i3, i4, i5);
    }

    public static void l(Activity activity) {
        try {
            jx(activity);
            activity.getWindow().addFlags(134217728);
        } catch (Exception unused) {
        }
    }

    public static boolean l() {
        return hp == 1 || hp == -1;
    }

    public static void l(View view, final float f2) {
        if (view != null && f2 > 0.0f) {
            view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.byazt.zn.xh.7
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f2);
                }
            });
            view.setClipToOutline(true);
        }
    }

    public static int[] hp(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static void hp(View view, int i2) {
        if (view == null || view.getVisibility() == i2 || !l(i2)) {
            return;
        }
        view.setVisibility(i2);
    }

    public static void hp(View view, float f2) {
        if (view == null) {
            return;
        }
        view.setAlpha(f2);
    }

    public static boolean hp(SSWebView sSWebView) {
        if (sSWebView == null || !sSWebView.canGoBack()) {
            return false;
        }
        sSWebView.goBack();
        return true;
    }

    public static void hp(final com.byazt.ikh.j jVar) {
        if (jVar == null) {
            return;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.zn.xh.1
            @Override // java.lang.Runnable
            public void run() {
                WebSettings settings;
                WebView webView = jVar.getWebView();
                if (webView == null || (settings = webView.getSettings()) == null) {
                    return;
                }
                settings.setTextZoom(100);
            }
        });
    }

    public static void hp(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    private static void hp(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3, int i4, int i5) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i2 && marginLayoutParams.topMargin == i3 && marginLayoutParams.rightMargin == i4 && marginLayoutParams.bottomMargin == i5) {
            return;
        }
        if (i2 != -3) {
            marginLayoutParams.leftMargin = i2;
        }
        if (i3 != -3) {
            marginLayoutParams.topMargin = i3;
        }
        if (i4 != -3) {
            marginLayoutParams.rightMargin = i4;
        }
        if (i5 != -3) {
            marginLayoutParams.bottomMargin = i5;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public static boolean hp() {
        try {
            return !((KeyguardManager) com.byazt.jz.sz.getContext().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static JSONObject hp(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!jSONObject.has("app_scene")) {
                jSONObject.put("app_scene", com.byazt.jz.s.u().hp() ? 1 : 0);
            }
            if (!jSONObject.has("lock_scene")) {
                jSONObject.put("lock_scene", !hp() ? 1 : 0);
            }
            if (str != null && !str.isEmpty() && !jSONObject.has("auto_show_check")) {
                jSONObject.put("auto_show_check", str);
            }
            return jSONObject;
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("addShowScene error " + th.toString());
            return jSONObject;
        }
    }

    public static void hp(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3846);
            l(activity);
        } catch (Exception unused) {
        }
    }

    public static void hp(View view, View view2) {
        if (view == null || view2 == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28 && f28583s == 0.0f) {
                WindowInsets rootWindowInsets = view.getRootWindowInsets();
                if ((rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null) {
                    f28583s = r3.getSafeInsetTop();
                }
            }
            if (f28583s == 0.0f) {
                return;
            }
            float fMax = Math.max(e(view2.getContext()), f28583s);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                ((FrameLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + fMax);
            }
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + fMax);
            }
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams).topMargin = (int) (r1.topMargin + fMax);
            }
            view2.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
    }

    public static int hp(String str) {
        com.byazt.pg.dy dyVar;
        if (!di.sz() || (dyVar = (com.byazt.pg.dy) com.byazt.ym.j.getService("system_info")) == null) {
            return 0;
        }
        return dyVar.getInt(str);
    }

    public static void hp(View view, View.OnClickListener onClickListener, String str) {
        if (view == null) {
            com.byazt.ymw.u.l("OnclickListener ", str + " is null , can not set OnClickListener !!!");
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    public static void hp(View view, View.OnTouchListener onTouchListener, String str) {
        if (view == null) {
            com.byazt.ymw.u.l("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
            return;
        }
        view.setOnTouchListener(onTouchListener);
    }

    public static void hp(final View view, final hp hpVar) {
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.zn.xh.5
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(view);
                }
            }
        });
    }

    public static void hp(View view, final mp mpVar) {
        if (view == null || mpVar == null) {
            return;
        }
        view.setClickable(true);
        view.setFocusable(true);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.zn.xh.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                w.hp(com.byazt.jz.sz.getContext(), mpVar);
            }
        });
    }

    public static void hp(TextView textView, String str, Context context) {
        if (textView == null || TextUtils.isEmpty(str) || context == null) {
            return;
        }
        textView.setText(str);
        textView.setTextSize(2, 8.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1F161823"));
        gradientDrawable.setCornerRadius(jx(context, 3.0f));
        textView.setBackgroundDrawable(gradientDrawable);
        textView.setTextColor(-1073741825);
        textView.setGravity(17);
        textView.setPadding(jx(context, 2.0f), jx(context, 3.0f), jx(context, 2.0f), jx(context, 3.0f));
    }

    public static void hp(TextView textView, mp mpVar) {
        if (textView != null && mpVar != null) {
            String strNn = mpVar.nn();
            if (TextUtils.isEmpty(strNn)) {
                hp(textView);
                hp((View) textView, mpVar);
                return;
            } else {
                hp(textView, strNn, com.byazt.jz.sz.getContext());
                return;
            }
        }
        hp(textView);
    }

    public static void hp(TextView textView, mp mpVar, int i2, int i3) {
        if (textView != null && mpVar != null) {
            String strNn = mpVar.nn();
            if (TextUtils.isEmpty(strNn)) {
                hp(textView, i2, i3);
                hp((View) textView, mpVar);
                return;
            } else {
                hp(textView, strNn, com.byazt.jz.sz.getContext());
                return;
            }
        }
        hp(textView, i2, i3);
    }

    private static void hp(TextView textView) {
        if (textView == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.width = jx(com.byazt.jz.sz.getContext(), 32.0f);
        layoutParams.height = jx(com.byazt.jz.sz.getContext(), 14.0f);
        textView.setLayoutParams(layoutParams);
    }

    private static void hp(TextView textView, int i2, int i3) {
        if (i2 <= 0) {
            i2 = 32;
        }
        if (i3 <= 0) {
            i3 = 14;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.width = jx(com.byazt.jz.sz.getContext(), i2);
        layoutParams.height = jx(com.byazt.jz.sz.getContext(), i3);
        textView.setLayoutParams(layoutParams);
    }

    @Deprecated
    public static void hp(Context context, String str, int i2) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        Toast toast = new Toast(context);
        LinearLayout linearLayout = new LinearLayout(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.byazt.ruu.hp.l().hp(context, 4.0f));
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(context);
        textView.setClickable(false);
        textView.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int iJx = jx(context, 20.0f);
        int iJx2 = jx(context, 11.0f);
        textView.setPadding(iJx, iJx2, iJx, iJx2);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(-1);
        textView.setTextSize(eb);
        textView.setGravity(17);
        textView.setText(str);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        toast.setGravity(17, 0, 0);
        toast.setDuration(i2);
        toast.show();
    }

    public static String hp(int i2) {
        if (i2 == 120) {
            return "ldpi";
        }
        if (i2 == 160) {
            return "mdpi";
        }
        if (i2 == 240) {
            return "hdpi";
        }
        if (i2 == 320) {
            return "xhdpi";
        }
        if (i2 == 480) {
            return "xxhdpi";
        }
        if (i2 != 640) {
            return "mdpi";
        }
        return "xxxhdpi";
    }
}
