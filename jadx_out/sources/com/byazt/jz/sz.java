package com.byazt.jz;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes.dex */
public class sz {
    public static volatile cx<com.byazt.jdb.hp> hp;

    /* renamed from: j, reason: collision with root package name */
    public static volatile Context f21958j;
    public static final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public static volatile com.byazt.jkd.gu f21959l;

    @com.byazt.kj.hp(hp = {0, 1, 40, 1655})
    public static class hp {

        @SuppressLint({"StaticFieldLeak"})
        public static volatile Application hp;

        static {
            try {
                Object objL = l();
                hp = (Application) objL.getClass().getMethod("getApplication", null).invoke(objL, null);
            } catch (Throwable unused) {
            }
        }

        public static Application hp() {
            return hp;
        }

        private static Object l() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static Context getContext() {
        if (f21958j == null) {
            f21958j = hp.hp();
        }
        return f21958j;
    }

    public static synchronized void hp(Context context) {
        if (f21958j == null && context != null) {
            f21958j = context.getApplicationContext();
        }
    }

    public static com.byazt.jkd.gu l() {
        if (f21959l == null) {
            synchronized (com.byazt.jkd.gu.class) {
                try {
                    if (f21959l == null) {
                        f21959l = new com.byazt.jkd.gu();
                    }
                } finally {
                }
            }
        }
        return f21959l;
    }

    public static cx<com.byazt.jdb.hp> hp() {
        if (hp == null) {
            synchronized (sz.class) {
                try {
                    if (hp == null) {
                        hp = new b(getContext());
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static Function<SparseArray<Object>, Object> hp(int i2) {
        return nu.hp().hp(i2);
    }
}
