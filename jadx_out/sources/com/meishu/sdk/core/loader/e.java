package com.meishu.sdk.core.loader;

import com.meishu.sdk.core.ad.splash.f;

/* loaded from: classes4.dex */
public class e {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(d dVar, IAdLoadListener iAdLoadListener) {
        return iAdLoadListener instanceof com.meishu.sdk.core.ad.recycler.a ? (T) new com.meishu.sdk.core.ad.recycler.c(dVar, (com.meishu.sdk.core.ad.recycler.a) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.banner.b ? (T) new com.meishu.sdk.core.ad.banner.d(dVar, (com.meishu.sdk.core.ad.banner.b) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.splash.d ? (T) new f(dVar, (com.meishu.sdk.core.ad.splash.d) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.reward.a ? (T) new com.meishu.sdk.core.ad.reward.c(dVar, (com.meishu.sdk.core.ad.reward.a) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.interstitial.b ? (T) new com.meishu.sdk.core.ad.interstitial.c(dVar, (com.meishu.sdk.core.ad.interstitial.b) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.media.a ? (T) new com.meishu.sdk.core.ad.media.b(dVar, (com.meishu.sdk.core.ad.media.a) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.image.b ? (T) new com.meishu.sdk.core.ad.image.c(dVar, (com.meishu.sdk.core.ad.image.b) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.draw.a ? (T) new com.meishu.sdk.core.ad.draw.c(dVar, (com.meishu.sdk.core.ad.draw.a) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.paster.b ? (T) new com.meishu.sdk.core.ad.paster.d(dVar, (com.meishu.sdk.core.ad.paster.b) iAdLoadListener) : iAdLoadListener instanceof com.meishu.sdk.core.ad.fullscreenvideo.c ? (T) new com.meishu.sdk.core.ad.fullscreenvideo.d(dVar, (com.meishu.sdk.core.ad.fullscreenvideo.c) iAdLoadListener) : iAdLoadListener;
    }
}
