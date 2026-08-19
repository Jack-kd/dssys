package com.byazt.uj;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        char cHp;
        int i3 = i2;
        while (true) {
            cHp = hp(i3, str);
            if (!com.byazt.kv.hp.l(cHp) && !com.byazt.kv.hp.jx(cHp)) {
                break;
            }
            i3++;
        }
        if (cHp != '(') {
            return hpVar.hp(str, i2, deque);
        }
        deque.push(new com.byazt.ud.e(str.substring(i2, i3)));
        return i3 + 1;
    }
}
