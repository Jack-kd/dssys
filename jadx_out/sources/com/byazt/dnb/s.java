package com.byazt.dnb;

import android.os.Looper;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ScheduledExecutorService;

@com.byazt.kj.hp(hp = {0, 1, 1239, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public static boolean hp() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void j(Runnable runnable) {
        if (sz.l().rp()) {
            ((r) com.byazt.ym.j.getService("thread_service")).getCsjMainHandler().post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void jx(Runnable runnable) {
        if (sz.l().p() || Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            vv.a().post(runnable);
        }
    }

    public static void l(Runnable runnable) {
        ((r) com.byazt.ym.j.getService("thread_service")).executeNormalTask(runnable);
    }

    public static void w(Runnable runnable) {
        hp(runnable, (ScheduledExecutorService) null);
    }

    public static void hp(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            vv.a().post(runnable);
        }
    }

    public static Looper l() {
        return sz.l().rp() ? ((r) com.byazt.ym.j.getService("thread_service")).getCsjMainHandler().getLooper() : Looper.getMainLooper();
    }

    public static void hp(Runnable runnable, long j2) {
        vv.a().postDelayed(runnable, j2);
    }

    public static void hp(com.byazt.uid.eb ebVar) {
        ((r) com.byazt.ym.j.getService("thread_service")).executeFastTask(ebVar);
    }

    public static void hp(final Runnable runnable, ScheduledExecutorService scheduledExecutorService) {
        if (!hp()) {
            if (runnable != null) {
                runnable.run();
            }
        } else if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(runnable);
        } else {
            ((r) com.byazt.ym.j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.dnb.s.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        }
    }
}
