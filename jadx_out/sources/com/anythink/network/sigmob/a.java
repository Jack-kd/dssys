package com.anythink.network.sigmob;

import com.anythink.core.api.ATAdAppInfo;
import com.sigmob.windad.natives.AdAppInfo;

/* loaded from: classes2.dex */
class a extends ATAdAppInfo {

    /* renamed from: a, reason: collision with root package name */
    private AdAppInfo f10250a;

    public a(AdAppInfo adAppInfo) {
        this.f10250a = adAppInfo;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppName() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getAppName() : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPackageName() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPermissonUrl() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getPermissionsUrl() : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPrivacyUrl() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getPrivacyAgreementUrl() : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public long getAppSize() {
        if (this.f10250a != null) {
            return r0.getAppSize();
        }
        return 0L;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppVersion() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getVersionName() : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getDownloadCount() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getFunctionUrl() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getDescriptionUrl() : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getPublisher() {
        AdAppInfo adAppInfo = this.f10250a;
        return adAppInfo != null ? adAppInfo.getAuthorName() : "";
    }
}
