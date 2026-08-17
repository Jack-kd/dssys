package com.byazt.kz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 28})
/* loaded from: classes3.dex */
public class hp {
    public int hp;
    public Throwable jx;

    /* renamed from: l, reason: collision with root package name */
    public String f22263l;

    public hp(int i2, String str, Throwable th) {
        this.hp = i2;
        this.f22263l = str;
        this.jx = th;
    }

    public int hp() {
        return this.hp;
    }

    public Throwable jx() {
        return this.jx;
    }

    public String l() {
        return this.f22263l;
    }
}
