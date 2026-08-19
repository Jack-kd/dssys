package com.smartdigimkt.dlopt.api;

import com.smartdigimkt.sdk.api.SDMEventInterface;

/* loaded from: classes5.dex */
public interface SDMAppDownloadListener extends SDMEventInterface {
    void onDownloadFail(long j2, long j3, String str, String str2);

    void onDownloadFinish(long j2, String str, String str2);

    void onDownloadPause(long j2, long j3, String str, String str2);

    void onDownloadStart(long j2, long j3, String str, String str2);

    void onDownloadUpdate(long j2, long j3, String str, String str2);

    void onInstalled(String str, String str2);
}
