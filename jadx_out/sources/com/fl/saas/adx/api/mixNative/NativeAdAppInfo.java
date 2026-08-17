package com.fl.saas.adx.api.mixNative;

/* loaded from: classes3.dex */
public interface NativeAdAppInfo {

    public interface ClickEvent {
        void onClick();
    }

    String getAppName();

    String getAppPermissionUrl();

    String getAppPrivacyUrl();

    String getAppVersion();

    ClickEvent getFunctionClick();

    String getFunctionUrl();

    ClickEvent getPermissonClick();

    ClickEvent getPrivacyClick();

    String getPublisher();
}
