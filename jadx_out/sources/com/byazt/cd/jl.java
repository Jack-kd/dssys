package com.byazt.cd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.CountDownLatch;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 19})
/* loaded from: classes2.dex */
public final class jl {
    public final CountDownLatch hp = new CountDownLatch(1);

    /* renamed from: l, reason: collision with root package name */
    public long f18793l = -1;
    public long jx = -1;

    public void hp() {
        if (this.f18793l != -1) {
            throw new IllegalStateException();
        }
        this.f18793l = System.nanoTime();
    }

    public void jx() {
        if (this.jx == -1) {
            long j2 = this.f18793l;
            if (j2 != -1) {
                this.jx = j2 - 1;
                this.hp.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }

    public void l() {
        if (this.jx != -1 || this.f18793l == -1) {
            throw new IllegalStateException();
        }
        this.jx = System.nanoTime();
        this.hp.countDown();
    }
}
