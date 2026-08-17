package com.byazt.bj;

import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1563, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.qt.jx {
    public com.byazt.rt.jx hp;

    public hp(com.byazt.rt.jx jxVar) {
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
