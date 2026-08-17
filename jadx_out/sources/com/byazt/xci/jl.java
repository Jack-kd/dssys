package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 19})
/* loaded from: classes3.dex */
public class jl extends com.byazt.qt.jx {
    public a hp;

    public jl(mp mpVar) {
        if (mpVar == null) {
            return;
        }
        this.hp = mpVar.vv();
    }

    @Override // com.byazt.qt.jx
    public String getAppName() {
        a aVar = this.hp;
        return aVar == null ? "" : aVar.k();
    }

    @Override // com.byazt.qt.jx
    public String getAppVersion() {
        a aVar = this.hp;
        return aVar == null ? "" : aVar.w();
    }

    @Override // com.byazt.qt.jx
    public String getDeveloperName() {
        a aVar = this.hp;
        return aVar == null ? "" : aVar.eb();
    }

    @Override // com.byazt.qt.jx
    public String getFunctionDescUrl() {
        a aVar = this.hp;
        if (aVar == null) {
            return null;
        }
        return aVar.q();
    }

    @Override // com.byazt.qt.jx
    public String getPermissionUrl() {
        a aVar = this.hp;
        if (aVar == null) {
            return null;
        }
        return aVar.l();
    }

    @Override // com.byazt.qt.jx
    public Map<String, String> getPermissionsMap() {
        a aVar = this.hp;
        if (aVar == null) {
            return null;
        }
        return aVar.hp();
    }

    @Override // com.byazt.qt.jx
    public String getPrivacyUrl() {
        a aVar = this.hp;
        return aVar == null ? "" : aVar.s();
    }

    @Override // com.byazt.qt.jx
    public String getRegNumber() {
        a aVar = this.hp;
        if (aVar == null) {
            return null;
        }
        return aVar.e();
    }

    @Override // com.byazt.qt.jx
    public String getRegUrl() {
        a aVar = this.hp;
        if (aVar == null) {
            return null;
        }
        return aVar.gu();
    }
}
