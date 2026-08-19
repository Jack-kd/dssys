package com.kwad.sdk.export.proxy;

/* loaded from: classes4.dex */
public interface AdHttpResponseListener {
    boolean onReadProgress(long j2, long j3);

    void onResponseEnd();

    void onResponseStart();
}
