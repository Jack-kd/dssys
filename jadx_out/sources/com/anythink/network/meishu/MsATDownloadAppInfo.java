package com.anythink.network.meishu;

import com.anythink.core.api.ATAdAppInfo;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;

/* loaded from: classes2.dex */
public class MsATDownloadAppInfo extends ATAdAppInfo {
    public String appDownloadCount;
    public String appName;
    public String appPackageName;
    public String appPermissionLink;
    public String appPrivacyLink;
    public long appSize;
    public String appVersion;
    public String functionLink;
    public String publisher;

    public MsATDownloadAppInfo(RecyclerAdData recyclerAdData) {
        this.publisher = recyclerAdData.getDeveloper();
        this.appVersion = recyclerAdData.getAppVersion();
        this.appPrivacyLink = recyclerAdData.getPrivacyAgreement();
        this.appPermissionLink = recyclerAdData.getAppPremissionUrl();
        this.appName = recyclerAdData.getAppName();
        this.appPackageName = recyclerAdData.getPackageName();
        this.appDownloadCount = recyclerAdData.getAppIntro();
        this.functionLink = recyclerAdData.getAppIntroUrl();
        try {
            this.appSize = Long.parseLong(recyclerAdData.getAppSize());
        } catch (Exception unused) {
        }
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppName() {
        return this.appName;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPackageName() {
        return this.appPackageName;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPermissonUrl() {
        return this.appPermissionLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPrivacyUrl() {
        return this.appPrivacyLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public long getAppSize() {
        return this.appSize;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppVersion() {
        return this.appVersion;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getDownloadCount() {
        return this.appDownloadCount;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getFunctionUrl() {
        return this.functionLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getPublisher() {
        return this.publisher;
    }
}
