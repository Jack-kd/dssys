package com.kwad.components.offline.api.core.downloader;

/* loaded from: classes4.dex */
public interface DownloadListener {
    void onCanceled(int i2);

    void onCompleted(int i2, String str, String str2, String str3);

    void onError(int i2, Throwable th);

    void onProgress(int i2, long j2, long j3);

    void onStart(int i2);
}
