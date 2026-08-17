package com.byazt.ju;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 38})
/* loaded from: classes.dex */
public class j extends com.byazt.qt.w {
    public com.byazt.rt.jx hp;

    public j(com.byazt.rt.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.qt.w
    public void cancelDownload() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.cancelDownload();
        }
    }

    @Override // com.byazt.qt.w
    public void changeDownloadStatus() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            if (jxVar.getDownloadStatus() == 3) {
                this.hp.resumeAppDownload();
            } else if (this.hp.getDownloadStatus() == 2) {
                this.hp.pauseAppDownload();
            }
        }
    }
}
