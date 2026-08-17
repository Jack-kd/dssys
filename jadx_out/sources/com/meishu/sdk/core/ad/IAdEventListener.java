package com.meishu.sdk.core.ad;

import com.meishu.sdk.core.utils.AdErrorInfo;

/* loaded from: classes4.dex */
public interface IAdEventListener<T> {
    void onAdError(AdErrorInfo adErrorInfo);

    void onAdReady(T t2);
}
