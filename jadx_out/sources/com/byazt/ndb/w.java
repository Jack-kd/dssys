package com.byazt.ndb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 832, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public abstract class w implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    public final String f23546l;

    public w(String str, Object... objArr) {
        this.f23546l = e.hp(str, objArr);
    }

    public abstract void l();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("csj_" + this.f23546l);
        try {
            l();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
