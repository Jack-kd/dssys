package com.byazt.kw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 756, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes.dex */
public final class u {
    public static Thread hp(Runnable runnable, String str) {
        if (runnable == null) {
            return null;
        }
        com.byazt.shx.jx jxVar = str == null ? new com.byazt.shx.jx(runnable, "hreadExecutor") : new com.byazt.shx.jx(runnable, str);
        jxVar.start();
        return jxVar;
    }

    public static Thread hp(Runnable runnable) {
        return hp(runnable, null);
    }
}
