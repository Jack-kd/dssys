package com.byazt.nke;

import java.util.Map;

/* loaded from: classes3.dex */
public interface u<T> {
    String getCacheKey();

    int getFileSize();

    Map<String, String> getHeaders();

    int getHeight();

    s getHttpTime();

    T getOriginResult();

    T getResult();

    String getUrl();

    int getWidth();

    boolean isGif();

    boolean isLocal();

    void setResult(T t2);
}
