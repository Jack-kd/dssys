package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements ThreadFactory {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f26257j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public final ThreadGroup f26258l;

    public s(String str) {
        this(5, str);
    }

    public Thread hp(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new com.byazt.shx.jx(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadHp = hp(this.f26258l, runnable, this.hp + "_" + this.f26257j.getAndIncrement());
        if (threadHp.isDaemon()) {
            threadHp.setDaemon(false);
        }
        int i2 = this.jx;
        if (i2 > 10) {
            this.jx = 10;
        } else if (i2 <= 0) {
            this.jx = 1;
        }
        threadHp.setPriority(this.jx);
        return threadHp;
    }

    public s(int i2, String str) {
        this.f26257j = new AtomicInteger(1);
        this.jx = i2;
        this.f26258l = new ThreadGroup("csj_g_" + str);
        StringBuilder sb = new StringBuilder("csj_");
        sb.append(q.f26242l.a() ? "p" : "");
        sb.append(str);
        this.hp = sb.toString();
    }
}
