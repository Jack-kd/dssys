package com.byazt.d;

import android.text.TextUtils;
import com.byazt.t.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 670, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements eb {
    @Override // com.byazt.d.eb
    public boolean hp(com.byazt.zv.l lVar, int i2, s sVar, com.byazt.m.jx jxVar) {
        if (lVar == null) {
            return false;
        }
        return v.hp(lVar, !TextUtils.isEmpty(lVar.nr()) ? com.byazt.l.e.hp(com.byazt.t.jl.getContext()).hp(lVar.nr(), null, true) : com.byazt.l.e.hp(com.byazt.t.jl.getContext()).l(lVar.hp()), i2, sVar, true, jxVar);
    }
}
