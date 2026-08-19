package com.fl.saas.adx.base.innterNative;

import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;

/* loaded from: classes3.dex */
public abstract class AdAppInfo implements NativeAdAppInfo {
    @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
    public NativeAdAppInfo.ClickEvent getFunctionClick() {
        return null;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
    public NativeAdAppInfo.ClickEvent getPermissonClick() {
        return null;
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeAdAppInfo
    public NativeAdAppInfo.ClickEvent getPrivacyClick() {
        return null;
    }
}
