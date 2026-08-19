package com.meishu.sdk.core.ad.paster;

import com.meishu.sdk.core.loader.IAdLoadListener;

/* loaded from: classes4.dex */
public interface b extends IAdLoadListener<PasterAd> {
    void onVideoComplete();

    void onVideoError();

    void onVideoLoaded();
}
