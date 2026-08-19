package com.meishu.sdk.core.loader;

/* loaded from: classes4.dex */
public class ShareInfo {
    private String currentUrl;
    private String shareInfo;

    public ShareInfo(String str, String str2) {
        this.shareInfo = str;
        this.currentUrl = str2;
    }

    public String getCurrentUrl() {
        return this.currentUrl;
    }

    public String getShareInfo() {
        return this.shareInfo;
    }

    public void setCurrentUrl(String str) {
        this.currentUrl = str;
    }

    public void setShareInfo(String str) {
        this.shareInfo = str;
    }

    public String toString() {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("ShareInfo{shareInfo='");
        sbA.append(this.shareInfo);
        sbA.append('\'');
        sbA.append(", currentUrl='");
        sbA.append(this.currentUrl);
        sbA.append('\'');
        sbA.append('}');
        return sbA.toString();
    }
}
