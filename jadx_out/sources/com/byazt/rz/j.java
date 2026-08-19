package com.byazt.rz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 38})
/* loaded from: classes3.dex */
public class j extends Exception {
    public final int hp;

    public j(int i2, String str) {
        super(str);
        this.hp = i2;
    }

    public int hp() {
        return this.hp;
    }

    public j(int i2, String str, Throwable th) {
        super(str, th);
        this.hp = i2;
    }
}
