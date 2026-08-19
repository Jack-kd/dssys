package com.byazt.sq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1453, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static void hp(com.byazt.uid.eb ebVar, int i2) {
        if (ebVar == null) {
            return;
        }
        com.byazt.ui.jx jxVarJx = com.byazt.ui.hp.hp().jx();
        ExecutorService executorServiceK = jxVarJx != null ? jxVarJx.k() : null;
        if (executorServiceK == null) {
            com.byazt.uid.w.hp(ebVar, i2);
        } else {
            ebVar.hp(i2);
            executorServiceK.execute(ebVar);
        }
    }

    public static void l(com.byazt.uid.eb ebVar, int i2) {
        if (ebVar == null) {
            return;
        }
        com.byazt.ui.jx jxVarJx = com.byazt.ui.hp.hp().jx();
        ExecutorService executorServiceZy = jxVarJx != null ? jxVarJx.zy() : null;
        if (executorServiceZy == null) {
            com.byazt.uid.w.hp(ebVar);
        } else {
            ebVar.hp(i2);
            executorServiceZy.execute(ebVar);
        }
    }

    public static ScheduledFuture hp(Runnable runnable, long j2, TimeUnit timeUnit) {
        return com.byazt.uid.w.j().schedule(runnable, j2, timeUnit);
    }
}
