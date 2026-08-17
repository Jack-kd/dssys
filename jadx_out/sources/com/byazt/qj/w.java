package com.byazt.qj;

import com.byazt.qj.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1558, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static final int hp;

    /* renamed from: j, reason: collision with root package name */
    public static final PriorityBlockingQueue<Runnable> f24734j;
    public static final int jx;

    /* renamed from: l, reason: collision with root package name */
    public static final int f24735l;

    /* renamed from: w, reason: collision with root package name */
    public static final PriorityBlockingQueue<Runnable> f24736w;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        hp = iAvailableProcessors;
        f24735l = (iAvailableProcessors / 2) + 1 < 4 ? 4 : (iAvailableProcessors / 2) + 1;
        jx = (iAvailableProcessors / 2) + 1 >= 4 ? (iAvailableProcessors / 2) + 1 : 4;
        f24734j = new PriorityBlockingQueue<>();
        f24736w = new PriorityBlockingQueue<>();
    }

    public static ThreadPoolExecutor hp() {
        int i2 = f24735l;
        return new com.byazt.shx.j(i2, i2, 1L, TimeUnit.SECONDS, f24734j, new j(l.hp.NORMAL, "tt-api-thread-"));
    }

    public static ScheduledExecutorService jx() {
        return com.byazt.uid.l.jx(new j(l.hp.LOW, "tt-delay-thread-"));
    }

    public static ThreadPoolExecutor l() {
        int i2 = jx;
        return new com.byazt.shx.j(i2, i2, 1L, TimeUnit.SECONDS, f24736w, new j(l.hp.NORMAL, "tt-default-thread-"));
    }
}
