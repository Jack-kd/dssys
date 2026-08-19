package com.ubix.ssp.open.nativee;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXNativeAdDownloadListener {
    void onDownloadFailed(AdError adError);

    void onDownloadFinished(String str);

    void onDownloadPaused(int i2);

    void onDownloadResume(int i2);

    void onDownloadStarted();

    void onDownloading(int i2);
}
