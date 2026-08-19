package com.meishu.sdk.platform.ms;

import com.meishu.sdk.core.loader.AdPlatformError;

/* loaded from: classes4.dex */
public class d extends AdPlatformError {
    public d(String str, Integer num) {
        this.platform = "MS";
        this.message = str;
        this.code = num;
    }
}
