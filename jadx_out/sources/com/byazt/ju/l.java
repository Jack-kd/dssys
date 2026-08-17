package com.byazt.ju;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 34})
/* loaded from: classes.dex */
public class l extends com.byazt.qt.jx {
    public com.byazt.rt.jx hp;

    public l(com.byazt.rt.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.qt.jx
    public String getAppName() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getAppName();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getAppVersion() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getVersionName();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getDeveloperName() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getAuthorName();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getFunctionDescUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getFunctionDescUrl();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getPermissionUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getPermissionsUrl();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public Map<String, String> getPermissionsMap() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getPermissionsMap();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getPrivacyUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getPrivacyAgreement();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getRegNumber() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getRegNumber();
        }
        return null;
    }

    @Override // com.byazt.qt.jx
    public String getRegUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar != null) {
            return jxVar.getRegUrl();
        }
        return null;
    }
}
