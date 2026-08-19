package com.byazt.cd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public final class v extends IOException {
    public final l hp;

    public v(l lVar) {
        super("stream was reset: ".concat(String.valueOf(lVar)));
        this.hp = lVar;
    }
}
