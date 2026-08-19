package com.anythink.china.api;

import com.anythink.core.api.ATEventInterface;

/* loaded from: classes.dex */
public interface CustomAdapterDownloadListener extends ATEventInterface {
    void onDownloadFail(long j2, long j3, String str, String str2);

    void onDownloadFinish(long j2, String str, String str2);

    void onDownloadPause(long j2, long j3, String str, String str2);

    void onDownloadStart(long j2, long j3, String str, String str2);

    void onDownloadUpdate(long j2, long j3, String str, String str2);

    void onInstalled(String str, String str2);
}
