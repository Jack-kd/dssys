package com.meishu.sdk.core.ad.recycler;

/* loaded from: classes4.dex */
public interface DownloadStatusListener {
    void onDownloadError(String str);

    void onDownloadFinish();

    void onDownloadProgress(int i2);

    void onDownloadStart();

    void onInstallStart();

    void onInstallSuccess();
}
