package com.byazt.uid;

import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static r hp;

    public static void hp(eb ebVar) {
        ebVar.hp(10);
        w().executeFastTask(ebVar);
    }

    public static void j(eb ebVar) {
        w().executeFastTask(ebVar);
    }

    public static void jx(eb ebVar) {
        l().execute(ebVar);
    }

    public static void l(eb ebVar) {
        hp().execute(ebVar);
    }

    private static r w() {
        if (hp == null) {
            hp = (r) com.byazt.ym.j.getService("thread_service");
        }
        return hp;
    }

    public static ScheduledExecutorService j() {
        return w().getScheduledThreadPool();
    }

    public static ExecutorService jx() {
        return hp();
    }

    public static ExecutorService l() {
        return w().getNormalExecutor();
    }

    public static ExecutorService hp() {
        return w().getIoExecutor();
    }

    public static void l(eb ebVar, int i2) {
        ebVar.hp(i2);
        w().getAIDLExecutor().execute(ebVar);
    }

    public static void hp(eb ebVar, int i2) {
        ebVar.hp(i2);
        hp().execute(ebVar);
    }
}
