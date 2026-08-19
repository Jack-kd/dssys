package com.byazt.ys;

import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1746, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.oj.j {
    public com.byazt.qjq.hp hp;

    public jx(com.byazt.qjq.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.oj.j
    public Map<String, Object> getAppInfoExtra() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.e();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getAppName() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.jx();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getAuthorName() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.j();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getFunctionDescUrl() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.l();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public long getPackageSizeBytes() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.w();
        }
        return 0L;
    }

    @Override // com.byazt.oj.j
    public Map<String, String> getPermissionsMap() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.eb();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getPermissionsUrl() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.a();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getPrivacyAgreement() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.s();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getRegUrl() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp();
        }
        return null;
    }

    @Override // com.byazt.oj.j
    public String getVersionName() {
        com.byazt.qjq.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.q();
        }
        return null;
    }
}
