package com.anythink.network.funlink;

import com.anythink.core.api.ATAdAppInfo;
import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;

/* loaded from: classes2.dex */
public class FunlinkATAdAppInfo extends ATAdAppInfo {

    /* renamed from: g, reason: collision with root package name */
    private static final String f9543g = "FunlinkATAdAppInfo";

    /* renamed from: a, reason: collision with root package name */
    private String f9544a;

    /* renamed from: b, reason: collision with root package name */
    private String f9545b;

    /* renamed from: c, reason: collision with root package name */
    private String f9546c;

    /* renamed from: d, reason: collision with root package name */
    private String f9547d;

    /* renamed from: e, reason: collision with root package name */
    private String f9548e;

    /* renamed from: f, reason: collision with root package name */
    private String f9549f;

    public FunlinkATAdAppInfo(NativeAdAppInfo nativeAdAppInfo) {
        if (nativeAdAppInfo != null) {
            try {
                this.f9544a = nativeAdAppInfo.getAppName();
                this.f9545b = nativeAdAppInfo.getPublisher();
                this.f9546c = nativeAdAppInfo.getAppVersion();
                this.f9547d = nativeAdAppInfo.getAppPrivacyUrl();
                this.f9548e = nativeAdAppInfo.getAppPermissionUrl();
                this.f9549f = nativeAdAppInfo.getFunctionUrl();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppName() {
        String str = this.f9544a;
        return str != null ? str : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPackageName() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPermissonUrl() {
        String str = this.f9548e;
        return str != null ? str : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPrivacyUrl() {
        String str = this.f9547d;
        return str != null ? str : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public long getAppSize() {
        return 0L;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppVersion() {
        String str = this.f9546c;
        return str != null ? str : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getDownloadCount() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getFunctionUrl() {
        String str = this.f9549f;
        return str != null ? str : "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getPublisher() {
        String str = this.f9545b;
        return str != null ? str : "";
    }
}
