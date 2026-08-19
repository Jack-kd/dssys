package com.byazt.qfg;

import android.os.Looper;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static boolean hp() {
        return (com.byazt.lca.w.hp().jl() & 8) == 8;
    }

    public static void l(Runnable runnable) {
        if (!hp() || Looper.myLooper() == com.byazt.ymw.e.jx().getLooper()) {
            runnable.run();
        } else {
            com.byazt.ymw.e.jx().post(runnable);
        }
    }

    public static void hp(Runnable runnable) {
        if (!hp()) {
            com.byazt.dnb.s.hp(runnable);
        } else if (Looper.myLooper() == com.byazt.ymw.e.jx().getLooper()) {
            runnable.run();
        } else {
            com.byazt.ymw.e.jx().post(runnable);
        }
    }
}
