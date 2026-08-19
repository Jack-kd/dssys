package com.byazt.nke;

import java.io.File;

/* loaded from: classes3.dex */
public interface l {
    File getCacheDir();

    long getFileCacheSize();

    int getMemoryCacheSize();

    int getRawMemoryCacheSize();

    boolean isDiskCache();

    boolean isMemoryCache();

    boolean isQueryAll();

    boolean isRawMemoryCache();
}
