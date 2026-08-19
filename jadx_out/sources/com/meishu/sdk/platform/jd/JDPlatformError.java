package com.meishu.sdk.platform.jd;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes4.dex */
public class JDPlatformError extends AdPlatformError {
    public JDPlatformError(String str, Integer num, SdkAdInfo sdkAdInfo) {
        this.platform = ADBidEvent.JINGDONG;
        this.message = str;
        this.code = num;
        this.adInfo = sdkAdInfo;
    }
}
