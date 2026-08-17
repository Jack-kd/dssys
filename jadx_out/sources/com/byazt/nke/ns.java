package com.byazt.nke;

import java.io.InputStream;

/* loaded from: classes3.dex */
public interface ns {
    void clearAllCache();

    void clearCache(double d2);

    void clearDiskCache(double d2);

    void clearMemoryCache(double d2);

    k from(String str);

    InputStream getCacheStream(String str, String str2);

    InputStream getDiskCacheStream(String str, String str2, String str3);

    boolean hasDiskCache(String str, String str2, String str3);
}
