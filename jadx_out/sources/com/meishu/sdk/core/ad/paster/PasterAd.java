package com.meishu.sdk.core.ad.paster;

import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;

/* loaded from: classes4.dex */
public interface PasterAd extends IAd {
    void destroy();

    long getCurrentPosition();

    long getDuration();

    void mute();

    void onPause();

    void onResume();

    void pause();

    void replay();

    void resume();

    void setOnPreparedListener(NormalMediaView.d dVar);

    void start();

    void unmute();
}
