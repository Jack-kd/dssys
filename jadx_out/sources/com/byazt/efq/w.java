package com.byazt.efq;

import com.byazt.hq.sz;
import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1388, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements q.hp {
    public sz.hp hp;

    public w(sz.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.uhg.q.hp
    public k hp() {
        return new s(this.hp.hp());
    }

    @Override // com.byazt.uhg.q.hp
    public u hp(k kVar) throws IOException {
        return new q(this.hp.hp(this.hp.hp().a().hp(kVar.l().hp()).hp()));
    }
}
