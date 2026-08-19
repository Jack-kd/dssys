package com.byazt.uj;

import com.byazt.ud.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Deque;

@com.byazt.kj.hp(hp = {0, 1, 2098, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends a {
    @Override // com.byazt.uj.a
    public int hp(String str, int i2, Deque<com.byazt.ii.hp> deque, com.byazt.wj.hp hpVar) {
        if (!com.byazt.kv.hp.j(hp(i2, str))) {
            return hpVar.hp(str, i2, deque);
        }
        int i3 = i2 + 1;
        String str2 = new String(new char[]{hp(i2, str), hp(i3, str)});
        if (com.byazt.ki.jx.hp(str2) != null) {
            deque.push(new u(com.byazt.ki.jx.hp(str2)));
            return i2 + 2;
        }
        String strValueOf = String.valueOf(hp(i2, str));
        if (com.byazt.ki.jx.hp(strValueOf) != null) {
            deque.push(new u(com.byazt.ki.jx.hp(strValueOf)));
            return i3;
        }
        throw new IllegalArgumentException("Unrecognized:" + strValueOf + "examine:" + str.substring(0, i2));
    }
}
