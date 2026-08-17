package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 38})
/* loaded from: classes3.dex */
public final class j {
    private static void hp(Throwable th) {
        th.getMessage();
    }

    public static ThreadGroup l() throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = ThreadGroup.class.getDeclaredField("systemThreadGroup");
            declaredField.setAccessible(true);
            return (ThreadGroup) declaredField.get(ThreadGroup.class);
        } catch (Exception e2) {
            hp(e2);
            return null;
        }
    }

    public static int hp() throws NoSuchFieldException, SecurityException {
        ThreadGroup threadGroupL = l();
        if (threadGroupL == null) {
            return 0;
        }
        int iActiveCount = threadGroupL.activeCount();
        try {
            return threadGroupL.enumerate(new Thread[(iActiveCount / 2) + iActiveCount]);
        } catch (Throwable unused) {
            return iActiveCount;
        }
    }
}
