package com.kwad.components.offline.api.core.downloader;

import java.util.List;

/* loaded from: classes4.dex */
public interface ResourceDownloader {
    int download(List<String> list, String str, String str2, DownloadListener downloadListener, boolean z2, boolean z3);

    void startImmediately(int i2);
}
