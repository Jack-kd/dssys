package com.byazt.i;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 30})
/* loaded from: classes.dex */
public class jx extends com.byazt.xq.s<Long, com.byazt.w.l> {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 219})
    public static class hp {
        public static jx hp = new jx();
    }

    public static jx hp() {
        return hp.hp;
    }

    private jx() {
        super(16, 16);
    }

    public void hp(com.byazt.w.l lVar) {
        if (lVar == null) {
            return;
        }
        put(Long.valueOf(lVar.hp()), lVar);
    }

    public com.byazt.w.l hp(long j2, long j3) {
        return get(get(Long.valueOf(j2)) != null ? Long.valueOf(j2) : Long.valueOf(j3));
    }
}
