package com.byazt.gc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 524, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs extends Exception {
    public final int hp;

    public xs(int i2, String str) {
        super(str);
        this.hp = i2;
    }

    public xs(int i2, String str, Throwable th) {
        super(str, th);
        this.hp = i2;
    }
}
