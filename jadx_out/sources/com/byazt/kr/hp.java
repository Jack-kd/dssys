package com.byazt.kr;

import android.os.Handler;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH, 28})
/* loaded from: classes.dex */
public abstract class hp implements Runnable {
    public Handler hp;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public final long f22101l;

    public hp(Handler handler, long j2, long j3) {
        this.hp = handler;
        this.f22101l = j2;
        this.jx = j3;
    }

    public void hp() {
        if (l() > 0) {
            this.hp.postDelayed(this, l());
        } else {
            this.hp.post(this);
        }
    }

    public long jx() {
        return this.jx;
    }

    public long l() {
        return this.f22101l;
    }

    public void hp(long j2) {
        if (j2 > 0) {
            this.hp.postDelayed(this, j2);
        } else {
            this.hp.post(this);
        }
    }
}
