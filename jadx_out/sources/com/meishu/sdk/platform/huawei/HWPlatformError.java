package com.meishu.sdk.platform.huawei;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;

/* loaded from: classes4.dex */
public class HWPlatformError extends AdPlatformError {
    public HWPlatformError(String str, int i2, SdkAdInfo sdkAdInfo) {
        this.platform = "HW";
        this.message = str;
        this.code = Integer.valueOf(i2);
        this.adInfo = sdkAdInfo;
    }
}
