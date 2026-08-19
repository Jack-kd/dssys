package com.byazt.bv;

import com.byazt.he.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 38})
/* loaded from: classes2.dex */
public class j implements gu {
    public final com.byazt.bm.l hp;

    public j(com.byazt.bm.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.he.gu
    public List<String> getCustomAppList() {
        return this.hp.hp();
    }

    @Override // com.byazt.he.gu
    public List<String> getCustomDevImeis() {
        return this.hp.l();
    }

    @Override // com.byazt.he.gu
    public boolean isCanUseOaid() {
        return this.hp.jx();
    }

    @Override // com.byazt.he.gu
    public boolean isLimitPersonalAds() {
        return this.hp.j();
    }

    @Override // com.byazt.he.gu
    public boolean isProgrammaticRecommend() {
        return this.hp.w();
    }
}
