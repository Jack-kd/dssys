package com.byazt.di;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 34})
/* loaded from: classes2.dex */
public class l {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context hp;
    public static volatile com.byazt.qz.hp<com.byazt.lsx.hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile com.byazt.bcj.jx f19148l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 123})
    public static class hp {

        @SuppressLint({"StaticFieldLeak"})
        public static volatile Application hp;

        static {
            try {
                Object objL = l();
                hp = (Application) objL.getClass().getMethod("getApplication", null).invoke(objL, null);
                com.byazt.aw.l.j("MyApplication", "application get success");
            } catch (Throwable th) {
                com.byazt.aw.l.l("MyApplication", "application get failed", th);
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
            } catch (Throwable th) {
                com.byazt.aw.l.l("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context getContext() {
        if (hp == null) {
            hp(null);
        }
        return hp;
    }

    public static com.byazt.qz.hp<com.byazt.lsx.hp> hp() {
        if (jx == null) {
            synchronized (l.class) {
                try {
                    if (jx == null) {
                        jx = new com.byazt.qz.l();
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public static com.byazt.bcj.jx l() {
        if (f19148l == null) {
            synchronized (com.byazt.bcj.jx.class) {
                try {
                    if (f19148l == null) {
                        f19148l = new com.byazt.bcj.jx();
                    }
                } finally {
                }
            }
        }
        return f19148l;
    }

    public static synchronized void hp(Context context) {
        if (hp == null) {
            synchronized (l.class) {
                if (hp.hp() != null) {
                    try {
                        Application applicationHp = hp.hp();
                        hp = applicationHp;
                        if (applicationHp != null) {
                            return;
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (context != null) {
                    hp = context.getApplicationContext();
                }
            }
        }
    }
}
