package com.byazt.rc;

import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 45})
/* loaded from: classes3.dex */
public class e extends BaseException {
    public int hp;

    public e(int i2, String str) {
        super(1072, "applyCode=" + i2 + ", " + str);
        this.hp = i2;
    }
}
