package com.byazt.zbc;

import com.byazt.xci.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 448, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {
    @Override // com.byazt.zbc.hp
    public boolean jx() {
        this.f28349j = 2;
        int iL = sz.l(this.f28350l.u_());
        if (iL == 2) {
            return false;
        }
        return (iL == 0 && j() == -1) ? false : true;
    }
}
