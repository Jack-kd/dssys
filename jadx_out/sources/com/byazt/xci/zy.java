package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 302})
/* loaded from: classes3.dex */
public abstract class zy {
    public int hp;

    public int hp() {
        return this.hp;
    }

    public abstract int j();

    public abstract int jx();

    public boolean l() {
        int i2 = this.hp;
        return i2 == 1 || i2 == 2;
    }

    public abstract String w();
}
