package com.byazt.ha;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1209, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements zy<PointF, PointF> {
    public final List<com.byazt.ch.hp<PointF>> hp;

    public w(List<com.byazt.ch.hp<PointF>> list) {
        this.hp = list;
    }

    @Override // com.byazt.ha.zy
    public com.byazt.dt.hp<PointF, PointF> hp() {
        return this.hp.get(0).w() ? new com.byazt.dt.gu(this.hp) : new com.byazt.dt.e(this.hp);
    }

    @Override // com.byazt.ha.zy
    public List<com.byazt.ch.hp<PointF>> jx() {
        return this.hp;
    }

    @Override // com.byazt.ha.zy
    public boolean l() {
        return this.hp.size() == 1 && this.hp.get(0).w();
    }
}
