package com.byazt.hx;

import android.os.Trace;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_QUERY, 28})
/* loaded from: classes2.dex */
public final class hp {
    public static void hp(String str) {
        Trace.beginSection(str);
    }

    public static void hp() {
        Trace.endSection();
    }
}
