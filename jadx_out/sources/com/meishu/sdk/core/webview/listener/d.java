package com.meishu.sdk.core.webview.listener;

import com.meishu.sdk.core.webview.jsbridge.bean.ClickTempParam;

/* loaded from: classes4.dex */
public interface d extends a {
    boolean clickAppDownloadInfo(String str);

    void dismissAd();

    String getActivityState();

    String getDeviceInfo();

    boolean isAppBackground();

    boolean isSoundsOpen();

    void notifyRewarded();

    void onClosePage();

    void onWebClicked(ClickTempParam clickTempParam);

    void onWebReady(boolean z2);

    boolean setShakeOrTurnState(boolean z2);

    void setSoundsOpen(boolean z2);

    void setVideoPlayState(boolean z2);
}
