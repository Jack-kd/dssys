package com.sigmob.sdk.videoplayer;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.czhj.sdk.common.utils.Dips;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.sigmob.sdk.videoplayer.c, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1383c {

    /* renamed from: a, reason: collision with root package name */
    public static int f39010a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f39011b = 32;

    /* renamed from: c, reason: collision with root package name */
    public static final int f39012c = 8;

    /* renamed from: d, reason: collision with root package name */
    private static int f39013d;

    /* renamed from: e, reason: collision with root package name */
    private static int f39014e;

    /* renamed from: f, reason: collision with root package name */
    private static final AtomicBoolean f39015f = new AtomicBoolean(false);

    public static int a(Activity activity) {
        Resources resources;
        int identifier;
        if (!d(activity) || (resources = activity.getResources()) == null || (identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android")) == 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    public static Activity b(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static Window c(Context context) {
        Activity activityB = b(context);
        if (activityB == null) {
            return null;
        }
        return activityB.getWindow();
    }

    public static void d(Context context) {
        Window windowC;
        if (!f.f39053p || (windowC = c(context)) == null) {
            return;
        }
        windowC.clearFlags(1024);
    }

    public static void e(Activity activity) throws NoSuchFieldException, SecurityException {
        if (Build.VERSION.SDK_INT == 26 && g(activity)) {
            h(activity);
        }
    }

    public static void f(Context context) {
        AudioManager audioManager;
        if (context != null) {
            try {
                AtomicBoolean atomicBoolean = f39015f;
                if (!atomicBoolean.get() && (audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO)) != null) {
                    atomicBoolean.set(true);
                    audioManager.requestAudioFocus(null, 3, 2);
                }
            } catch (Throwable unused) {
                f39015f.set(false);
            }
        }
    }

    public static void g(Context context) {
        AudioManager audioManager;
        if (context != null) {
            try {
                AtomicBoolean atomicBoolean = f39015f;
                if (atomicBoolean.get() && (audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO)) != null) {
                    atomicBoolean.set(false);
                    audioManager.abandonAudioFocus(null);
                }
            } catch (Throwable unused) {
                f39015f.set(true);
            }
        }
    }

    private static void h(Activity activity) throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(activity)).screenOrientation = -1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void i(Context context) {
        c(context);
    }

    public static void j(Context context) {
        Window windowC = c(context);
        if (windowC == null) {
            return;
        }
        windowC.getDecorView().setSystemUiVisibility(f39010a);
        int i2 = Build.VERSION.SDK_INT;
        windowC.clearFlags(Integer.MIN_VALUE);
        if (i2 >= 28) {
            WindowManager.LayoutParams attributes = windowC.getAttributes();
            attributes.layoutInDisplayCutoutMode = 0;
            windowC.setAttributes(attributes);
        }
    }

    public static boolean k(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", null).invoke(clsLoadClass, null)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean l(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean m(Context context) {
        return context.getPackageManager().hasSystemFeature(a("com.kllk.feature.screen.heteromorphism"));
    }

    public static int n(Context context) {
        int iDipsToIntPixels = Dips.dipsToIntPixels(30.0f, com.sigmob.sdk.b.e());
        if (context == null) {
            return iDipsToIntPixels;
        }
        try {
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                iDipsToIntPixels = context.getResources().getDimensionPixelSize(identifier);
            } else {
                try {
                    Class<?> cls = Class.forName("com.android.internal.R$dimen");
                    iDipsToIntPixels = context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable unused) {
        }
        return iDipsToIntPixels;
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean b(Activity activity) {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        if (activity == null) {
            activity = com.sigmob.sdk.b.i();
        }
        if (activity == null) {
            return false;
        }
        try {
            WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
            return (rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null) != null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean c(Activity activity) {
        return b(activity) || a("ro.miui.notch", com.sigmob.sdk.b.e()) == 1 || k(com.sigmob.sdk.b.e()) || m(com.sigmob.sdk.b.e()) || l(com.sigmob.sdk.b.e());
    }

    public static boolean d(Activity activity) {
        if (activity == null) {
            return false;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    public static void e(Context context) {
        Window windowC;
        if (!f.f39053p || (windowC = c(context)) == null) {
            return;
        }
        windowC.setFlags(1024, 1024);
    }

    public static boolean f(Activity activity) {
        Window window = activity != null ? activity.getWindow() : null;
        if (window == null) {
            return true;
        }
        return (window.getDecorView().getSystemUiVisibility() & 1028) == 1028 && (Build.VERSION.SDK_INT < 28 || (window.getAttributes().layoutInDisplayCutoutMode & 1) == 1);
    }

    public static boolean g(Activity activity) throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        try {
            Field declaredField = Class.forName("com.android.internal.R$styleable").getDeclaredField("Window");
            declaredField.setAccessible(true);
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes((int[]) declaredField.get(null));
            Method declaredMethod = ActivityInfo.class.getDeclaredMethod("isTranslucentOrFloating", TypedArray.class);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(null, typedArrayObtainStyledAttributes)).booleanValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void h(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        Window windowC = c(context);
        if (windowC == null) {
            return;
        }
        f39010a = windowC.getDecorView().getSystemUiVisibility();
        windowC.clearFlags(134217728);
        windowC.getDecorView().setSystemUiVisibility(f39010a | 5894);
        windowC.addFlags(Integer.MIN_VALUE);
        f39013d = windowC.getStatusBarColor();
        windowC.setStatusBarColor(0);
        f39014e = windowC.getNavigationBarColor();
        windowC.setNavigationBarColor(0);
        if (i2 >= 28) {
            WindowManager.LayoutParams attributes = windowC.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            windowC.setAttributes(attributes);
        }
    }

    public static int a(String str, Context context) throws ClassNotFoundException {
        if (a()) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, new String(str), new Integer(0))).intValue();
            } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    private static boolean b(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str.equals(str2)) ? false : true;
    }

    public static LinkAction a(List<LinkAction> list, Uri uri) {
        if (uri != null && !com.sigmob.sdk.base.utils.f.a(list)) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            for (LinkAction linkAction : list) {
                if (linkAction != null && linkAction.redirect_count.intValue() >= 0) {
                    if (TextUtils.isEmpty(linkAction.scheme) || TextUtils.isEmpty(linkAction.host)) {
                        if (a(scheme, linkAction.scheme) || b(host, linkAction.host)) {
                            return linkAction;
                        }
                    } else if (a(scheme, linkAction.scheme) && b(host, linkAction.host)) {
                        return linkAction;
                    }
                }
            }
        }
        return null;
    }

    public static com.sigmob.sdk.base.utils.l a(WindowInsets windowInsets) {
        int stableInsetTop;
        int stableInsetLeft;
        int stableInsetRight;
        int stableInsetBottom;
        if (Build.VERSION.SDK_INT >= 28) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                stableInsetTop = displayCutout.getSafeInsetTop();
                stableInsetLeft = displayCutout.getSafeInsetLeft();
                stableInsetRight = displayCutout.getSafeInsetRight();
                stableInsetBottom = displayCutout.getSafeInsetBottom();
            } else {
                stableInsetTop = 0;
                stableInsetBottom = 0;
                stableInsetLeft = 0;
                stableInsetRight = 0;
            }
        } else {
            stableInsetTop = windowInsets.getStableInsetTop();
            stableInsetLeft = windowInsets.getStableInsetLeft();
            stableInsetRight = windowInsets.getStableInsetRight();
            stableInsetBottom = windowInsets.getStableInsetBottom();
        }
        return new com.sigmob.sdk.base.utils.l(stableInsetTop, stableInsetLeft, stableInsetBottom, stableInsetRight);
    }

    public static String a(long j2) {
        if (j2 <= 0 || j2 >= 86400000) {
            return "00:00";
        }
        long j3 = j2 / 1000;
        int i2 = (int) (j3 % 60);
        int i3 = (int) ((j3 / 60) % 60);
        int i4 = (int) (j3 / 3600);
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return (i4 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2)) : formatter.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2))).toString();
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str3 = "KLLK";
        if (str.contains("KLLK")) {
            str2 = "OPPO";
        } else {
            str3 = "kllk";
            if (!str.contains("kllk")) {
                return "";
            }
            str2 = "oppo";
        }
        return str.replace(str3, str2);
    }

    public static void a(Context context, int i2) {
        Activity activityB = b(context);
        if (activityB == null) {
            return;
        }
        activityB.setRequestedOrientation(i2);
    }

    public static void a(Window window) {
        int i2 = Build.VERSION.SDK_INT;
        if (window != null) {
            f39010a = window.getDecorView().getSystemUiVisibility();
            window.clearFlags(134217728);
            window.getDecorView().setSystemUiVisibility(f39010a | 1796);
            window.addFlags(Integer.MIN_VALUE);
            f39013d = window.getStatusBarColor();
            window.setStatusBarColor(0);
            f39014e = window.getNavigationBarColor();
            window.setNavigationBarColor(0);
            if (i2 >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
        }
    }

    public static boolean a() throws ClassNotFoundException {
        try {
            Class.forName("miui.os.Build");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    private static boolean a(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str.toLowerCase().equals(str2)) ? false : true;
    }
}
