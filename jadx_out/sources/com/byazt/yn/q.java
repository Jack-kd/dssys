package com.byazt.yn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_RENDER_TIME, 150})
/* loaded from: classes3.dex */
public class q {
    public static long hp(float f2, float f3) {
        return Float.floatToRawIntBits(f3) | (Float.floatToRawIntBits(f2) << 32);
    }

    public static long hp(int i2, int i3) {
        return hp(i2, i3);
    }
}
