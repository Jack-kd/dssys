package com.byazt.am;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 214, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends l {
    public static volatile w hp;

    private w() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new w();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.am.l
    public long jx() {
        return com.byazt.lca.w.hp().l();
    }

    @Override // com.byazt.am.l
    public int l() {
        return com.byazt.lca.w.hp().jx();
    }
}
