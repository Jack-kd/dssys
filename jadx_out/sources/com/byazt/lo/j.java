package com.byazt.lo;

import com.byazt.lo.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, 38})
/* loaded from: classes3.dex */
public class j<T extends jx> {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public BlockingQueue<T> f22670l = new LinkedBlockingQueue();

    private j(int i2) {
        this.hp = i2;
    }

    public static j hp(int i2) {
        return new j(i2);
    }

    public int l() {
        return this.f22670l.size();
    }

    public T hp() {
        return this.f22670l.poll();
    }

    public boolean hp(T t2) {
        if (t2 == null) {
            return false;
        }
        t2.hp();
        if (this.f22670l.size() >= this.hp) {
            return false;
        }
        return this.f22670l.offer(t2);
    }
}
