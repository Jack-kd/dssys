package com.kwad.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class n {
    public static String boH = null;
    private static int boI = -1;
    public static String boJ;

    public static String S(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                PackageInfo packageInfo = aa.getPackageInfo(context.getApplicationContext(), str, 64);
                if (packageInfo != null) {
                    return packageInfo.versionName;
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public static String cZ(Context context) {
        if (!TextUtils.isEmpty(boH)) {
            return boH;
        }
        try {
            PackageInfo packageInfo = aa.getPackageInfo(context.getApplicationContext(), context.getPackageName(), 64);
            if (packageInfo == null) {
                return "";
            }
            String str = packageInfo.versionName;
            boH = str;
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String da(Context context) throws Resources.NotFoundException {
        if (!TextUtils.isEmpty(boJ)) {
            return boJ;
        }
        try {
            PackageInfo packageInfo = aa.getPackageInfo(context, context.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            String string = context.getResources().getString(packageInfo.applicationInfo.labelRes);
            boJ = string;
            return string;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int db(Context context) {
        int i2 = boI;
        if (i2 > 0) {
            return i2;
        }
        try {
            PackageInfo packageInfo = aa.getPackageInfo(context.getApplicationContext(), context.getPackageName(), 64);
            if (packageInfo == null) {
                return 0;
            }
            int i3 = packageInfo.versionCode;
            boI = i3;
            return i3;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static int dc(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int dd(Context context) {
        float fWidth;
        int i2 = 0;
        if (context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            if (Build.VERSION.SDK_INT >= 35) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                Rect bounds = currentWindowMetrics.getBounds();
                Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
                fWidth = (bounds.width() - insets.left) - insets.right;
                i2 = displayMetrics.density;
            } else {
                fWidth = displayMetrics.widthPixels;
                i2 = displayMetrics.density;
            }
            return (int) (fWidth / (i2 == true ? 1.0f : 0.0f));
        } catch (Exception unused) {
            return i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int de(Context context) {
        float fHeight;
        int i2 = 0;
        if (context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            if (Build.VERSION.SDK_INT >= 35) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                Rect bounds = currentWindowMetrics.getBounds();
                Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
                fHeight = (bounds.height() - insets.top) - insets.bottom;
                i2 = displayMetrics.density;
            } else {
                fHeight = displayMetrics.heightPixels;
                i2 = displayMetrics.density;
            }
            return (int) (fHeight / (i2 == true ? 1.0f : 0.0f));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static float df(Context context) {
        if (context == null) {
            return 0.0f;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.density;
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static int getScreenHeight(Context context) {
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

    public static int getScreenWidth(Context context) {
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
}
