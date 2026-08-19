package com.czhj.volley;

/* loaded from: classes3.dex */
public interface RetryPolicy {
    int getCurrentConnectTimeoutMs();

    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
