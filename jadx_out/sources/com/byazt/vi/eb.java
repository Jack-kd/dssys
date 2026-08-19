package com.byazt.vi;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 94})
/* loaded from: classes3.dex */
public class eb {
    public static void hp(ProgressBar progressBar, Drawable drawable) {
        hp(progressBar, "mIndeterminateOnly", Boolean.FALSE);
        progressBar.setIndeterminate(false);
        progressBar.setProgressDrawable(drawable);
        progressBar.setIndeterminateDrawable(null);
    }

    public static void l(AlertDialog alertDialog) {
        Window window;
        if (alertDialog == null || (window = alertDialog.getWindow()) == null) {
            return;
        }
        window.setFlags(1024, 1024);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(-1, -1);
        window.clearFlags(2);
        alertDialog.setCanceledOnTouchOutside(true);
    }

    private static void hp(Object obj, String str, Object obj2) {
        try {
            Field fieldHp = hp(obj, str);
            if (fieldHp != null) {
                hp(fieldHp);
                fieldHp.set(obj, obj2);
                return;
            }
            throw new IllegalArgumentException("Could not find field [" + str + "] on target [" + obj + "]");
        } catch (Throwable unused) {
        }
    }

    public static void l(Activity activity) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        activity.requestWindowFeature(1);
        window.clearFlags(67108864);
        window.clearFlags(134217728);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.type = 2;
        window.setAttributes(attributes);
        window.setStatusBarColor(Color.parseColor("#000000"));
        window.clearFlags(67108864);
        window.setWindowAnimations(0);
        window.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#88000000")));
    }

    private static Field hp(Object obj, String str) {
        return hp((Class) obj.getClass(), str);
    }

    private static Field hp(Class cls, String str) {
        while (cls != Object.class) {
            try {
                return cls.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static void hp(Field field) throws SecurityException {
        if (Modifier.isPublic(field.getModifiers()) && Modifier.isPublic(field.getDeclaringClass().getModifiers())) {
            return;
        }
        field.setAccessible(true);
    }

    public static void hp(AlertDialog alertDialog) {
        Window window;
        if (alertDialog == null || (window = alertDialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        alertDialog.requestWindowFeature(1);
        window.setDimAmount(0.5f);
    }

    public static void hp(Activity activity) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        activity.requestWindowFeature(1);
        window.clearFlags(67108864);
        window.clearFlags(134217728);
        window.setBackgroundDrawable(new ColorDrawable(-1));
        window.setStatusBarColor(-16777216);
        window.clearFlags(67108864);
    }
}
