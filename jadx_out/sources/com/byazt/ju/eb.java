package com.byazt.ju;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 94})
/* loaded from: classes.dex */
public class eb extends com.byazt.qa.hp {
    public com.byazt.eb.l hp;

    public eb(com.byazt.eb.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.qa.hp
    public String getAbTestId() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.v() : "";
    }

    @Override // com.byazt.qa.hp
    public String getChannel() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.zy() : "";
    }

    @Override // com.byazt.qa.hp
    public Map<String, String> getCustomData() {
        com.byazt.eb.l lVar = this.hp;
        if (lVar != null) {
            return lVar.hp();
        }
        return null;
    }

    @Override // com.byazt.qa.hp
    public String getCustomSdkName() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.jx() : "";
    }

    @Override // com.byazt.qa.hp
    public String getDiscount() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.xs() : "";
    }

    @Override // com.byazt.qa.hp
    public String getEcpm() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.a() : "";
    }

    @Override // com.byazt.qa.hp
    public String getErrorMsg() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.s() : "";
    }

    @Override // com.byazt.qa.hp
    public String getLevelTag() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.w() : "";
    }

    @Override // com.byazt.qa.hp
    public int getReqBiddingType() {
        com.byazt.eb.l lVar = this.hp;
        if (lVar != null) {
            return lVar.eb();
        }
        return 0;
    }

    @Override // com.byazt.qa.hp
    public String getRequestId() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.q() : "";
    }

    @Override // com.byazt.qa.hp
    public String getRitType() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.e() : "";
    }

    @Override // com.byazt.qa.hp
    public String getScenarioId() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.u() : "";
    }

    @Override // com.byazt.qa.hp
    public String getSdkName() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.l() : "";
    }

    @Override // com.byazt.qa.hp
    public String getSegmentId() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.jl() : "";
    }

    @Override // com.byazt.qa.hp
    public String getSlotId() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.j() : "";
    }

    @Override // com.byazt.qa.hp
    public String getSubChannel() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.k() : "";
    }

    @Override // com.byazt.qa.hp
    public String getSubRitType() {
        com.byazt.eb.l lVar = this.hp;
        return lVar != null ? lVar.gu() : "";
    }
}
