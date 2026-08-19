package com.byazt.ju;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 28})
/* loaded from: classes.dex */
public class hp implements com.byazt.eb.j {
    public com.byazt.dq.l hp;

    public hp(com.byazt.dq.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.eb.j
    public String hp() {
        com.byazt.dq.l lVar = this.hp;
        if (lVar != null) {
            return lVar.l();
        }
        return null;
    }

    @Override // com.byazt.eb.j
    public int j() {
        com.byazt.dq.l lVar = this.hp;
        if (lVar != null) {
            return lVar.w();
        }
        return 0;
    }

    @Override // com.byazt.eb.j
    public String jx() {
        com.byazt.dq.l lVar = this.hp;
        if (lVar != null) {
            return lVar.hp();
        }
        return null;
    }

    @Override // com.byazt.eb.j
    public String l() {
        com.byazt.dq.l lVar = this.hp;
        if (lVar != null) {
            return TextUtils.isEmpty(lVar.jx()) ? this.hp.j() : this.hp.jx();
        }
        return null;
    }

    @Override // com.byazt.eb.j
    public String w() {
        com.byazt.dq.l lVar = this.hp;
        if (lVar != null) {
            return lVar.a();
        }
        return null;
    }
}
