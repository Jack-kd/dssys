package com.byazt.vb;

import com.byazt.nke.s;
import com.byazt.nke.u;
import com.byazt.pjc.hp;
import com.byazt.xci.ru;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.pjc.hp {
    public ru hp;

    private void hp(u uVar) {
        s httpTime = uVar.getHttpTime();
        if (httpTime == null || !j()) {
            return;
        }
        hp(httpTime.getStartRequestTime(), httpTime.getFirstFrameTime());
    }

    private boolean j() {
        ru ruVar = this.hp;
        return ruVar != null && ruVar.ns();
    }

    private void w() {
        if (j()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ru ruVar = this.hp;
            ruVar.s(jCurrentTimeMillis - ruVar.ec());
            this.hp.zy(jCurrentTimeMillis);
        }
    }

    public ru jx() {
        return this.hp;
    }

    private void hp(long j2, long j3) {
        this.hp.k(j3);
        ru ruVar = this.hp;
        ruVar.q(j3 - ruVar.n());
        this.hp.ec(j3 - j2);
    }

    public void hp(ru ruVar) {
        this.hp = ruVar;
    }

    @Override // com.byazt.pjc.hp
    public void hp(u uVar, hp.l lVar) {
        hp(uVar);
        super.hp(uVar, lVar);
    }

    @Override // com.byazt.pjc.hp
    public void hp() {
        w();
    }
}
