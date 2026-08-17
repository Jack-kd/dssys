package com.byazt.hu;

import com.byazt.ye.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1745, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static a hp;

    public static void hp(a aVar) {
        hp = aVar;
    }

    public static void jx(Runnable runnable) {
        hp.jx(runnable);
    }

    public static void l(Runnable runnable) {
        hp.l(runnable);
    }

    public static void hp(Runnable runnable, boolean z2) {
        if (z2) {
            hp(runnable);
        } else {
            l(runnable);
        }
    }

    public static void hp(Runnable runnable) {
        hp.hp(runnable);
    }
}
