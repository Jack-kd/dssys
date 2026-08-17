package com.meishu.sdk.platform.ks;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;

/* loaded from: classes4.dex */
public class KSPlatformError extends AdPlatformError {
    public KSPlatformError(String str, Integer num, SdkAdInfo sdkAdInfo) {
        this.platform = "KS";
        this.message = str;
        this.code = num;
        this.adInfo = sdkAdInfo;
    }
}
