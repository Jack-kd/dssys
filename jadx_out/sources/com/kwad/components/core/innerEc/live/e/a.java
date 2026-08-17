package com.kwad.components.core.innerEc.live.e;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes4.dex */
public final class a {
    public static boolean ba(int i2) {
        if (i2 == 607) {
            return true;
        }
        switch (i2) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE /* 601 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN /* 602 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN /* 603 */:
                return true;
            default:
                return false;
        }
    }

    public static boolean bb(int i2) {
        return i2 == 60;
    }
}
