package com.meishu.sdk.platform.bd;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;

/* loaded from: classes4.dex */
public class BDPlatformError extends AdPlatformError {
    public BDPlatformError(String str, SdkAdInfo sdkAdInfo) {
        this.message = str;
        this.adInfo = sdkAdInfo;
        this.platform = "BAIDU";
    }
}
