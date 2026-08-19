package com.meishu.sdk.platform.gdt;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.qq.e.comm.util.AdError;

/* loaded from: classes4.dex */
public class GDTPlatformError extends AdPlatformError {
    public GDTPlatformError(AdError adError, SdkAdInfo sdkAdInfo) {
        this.platform = "GDT";
        this.message = adError.getErrorMsg();
        this.code = Integer.valueOf(adError.getErrorCode());
        this.adInfo = sdkAdInfo;
    }
}
