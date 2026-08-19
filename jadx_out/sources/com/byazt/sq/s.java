package com.byazt.sq;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.byazt.ymw.cx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 1453, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static boolean hp;

    public static int hp(float f2, float f3, float f4, float f5) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 24) | (((int) ((f3 * 255.0f) + 0.5f)) << 16) | (((int) ((f4 * 255.0f) + 0.5f)) << 8) | ((int) ((f5 * 255.0f) + 0.5f));
    }

    public static String j(Context context) {
        String language;
        try {
            Locale locale = cx.hp(context).getConfiguration().getLocales().get(0);
            language = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    language = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            language = "";
        }
        return hp(language);
    }

    public static float jx(Context context, float f2) {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        return f2 * w(context);
    }

    public static int l(Context context, float f2) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        float fW = w(context);
        if (fW <= 0.0f) {
            fW = 1.0f;
        }
        return (int) ((f2 / fW) + 0.5f);
    }

    private static float w(Context context) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            if (hp) {
                context.getClassLoader().loadClass("android.util.DisplayMetrics").getDeclaredMethod("getDeviceDensity", null).setAccessible(true);
                return ((Integer) r1.invoke(r0, null)).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static float hp(Context context, float f2) {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        return (f2 * w(context)) + 0.5f;
    }

    public static int jx(Context context) {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int l(Context context) {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int hp(Context context) {
        if (context == null) {
            context = com.byazt.ui.hp.hp().jx().getContext();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String hp(String str) {
        str.getClass();
        switch (str) {
            case "ar":
                return "aa";
            case "ja":
                return "japan";
            case "ko":
                return "korea";
            case "ms":
                return "my";
            case "zh":
                return "cn";
            default:
                return str;
        }
    }
}
