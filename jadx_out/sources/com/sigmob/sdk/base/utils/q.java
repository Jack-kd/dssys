package com.sigmob.sdk.base.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.Window;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import io.flutter.plugin.platform.PlatformPlugin;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class q {
    public static int a(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelOffset(identifier);
        }
        return 0;
    }

    public static int b(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
        int i2 = b(activity.getWindow(), true) ? 1 : 3;
        if (a(activity.getWindow(), true)) {
            return 2;
        }
        return i2;
    }

    public static void c(Activity activity, int i2) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (i2 == 1) {
            b(activity.getWindow(), false);
        } else if (i2 == 2) {
            a(activity.getWindow(), false);
        } else if (i2 == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    @TargetApi(19)
    public static void a(Activity activity) {
        Window window = activity.getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }

    public static void b(Activity activity, int i2) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (i2 == 1) {
            b(activity.getWindow(), true);
        } else if (i2 == 2) {
            a(activity.getWindow(), true);
        } else if (i2 == 3) {
            activity.getWindow().getDecorView().setSystemUiVisibility(AVMDLDataLoader.KeyIsLoaderCacheSize);
        }
    }

    public static void a(Activity activity, int i2) {
        activity.getWindow().setStatusBarColor(activity.getResources().getColor(i2));
    }

    @SuppressLint({"PrivateApi"})
    public static boolean b(Window window, boolean z2) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i2 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z2) {
                    method.invoke(window, Integer.valueOf(i2), Integer.valueOf(i2));
                    return true;
                }
                method.invoke(window, 0, Integer.valueOf(i2));
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean a(Window window, boolean z2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (window == null) {
            return false;
        }
        try {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i2 = declaredField.getInt(null);
            int i3 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, z2 ? i3 | i2 : (~i2) & i3);
            window.setAttributes(attributes);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
