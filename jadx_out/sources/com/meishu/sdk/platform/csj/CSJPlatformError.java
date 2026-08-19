package com.meishu.sdk.platform.csj;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;

/* loaded from: classes4.dex */
public class CSJPlatformError extends AdPlatformError {
    public CSJPlatformError(String str, Integer num, SdkAdInfo sdkAdInfo) {
        this.platform = "CSJ";
        this.message = str;
        this.code = num;
        this.adInfo = sdkAdInfo;
    }
}
