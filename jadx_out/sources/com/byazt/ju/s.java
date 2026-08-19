package com.byazt.ju;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s extends com.byazt.qa.l {
    public com.byazt.eb.j hp;

    public s(com.byazt.eb.j jVar) {
        this.hp = jVar;
    }

    @Override // com.byazt.qa.l
    public String getAdType() {
        com.byazt.eb.j jVar = this.hp;
        return jVar != null ? jVar.jx() : "";
    }

    @Override // com.byazt.qa.l
    public String getAdnName() {
        com.byazt.eb.j jVar = this.hp;
        return jVar != null ? jVar.l() : "";
    }

    @Override // com.byazt.qa.l
    public int getErrCode() {
        com.byazt.eb.j jVar = this.hp;
        if (jVar != null) {
            return jVar.j();
        }
        return -1;
    }

    @Override // com.byazt.qa.l
    public String getErrMsg() {
        com.byazt.eb.j jVar = this.hp;
        return jVar != null ? jVar.w() : "";
    }

    @Override // com.byazt.qa.l
    public String getMediationRit() {
        com.byazt.eb.j jVar = this.hp;
        return jVar != null ? jVar.hp() : "";
    }
}
