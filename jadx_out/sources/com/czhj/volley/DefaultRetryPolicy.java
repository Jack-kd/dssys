package com.czhj.volley;

/* loaded from: classes3.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 0.0f;
    public static final int DEFAULT_CONNECT_TIMEOUT_MS = 5000;
    public static final int DEFAULT_MAX_RETRIES = 2;
    public static final int DEFAULT_TIMEOUT_MS = 5000;

    /* renamed from: a, reason: collision with root package name */
    private final int f29578a;

    /* renamed from: b, reason: collision with root package name */
    private final float f29579b;

    /* renamed from: c, reason: collision with root package name */
    private final int f29580c;

    /* renamed from: d, reason: collision with root package name */
    private int f29581d;

    /* renamed from: e, reason: collision with root package name */
    private int f29582e;

    public DefaultRetryPolicy() {
        this(5000, 2, 0.0f);
    }

    public float getBackoffMultiplier() {
        return this.f29579b;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentConnectTimeoutMs() {
        return this.f29580c;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f29582e;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f29581d;
    }

    public boolean hasAttemptRemaining() {
        return this.f29582e <= this.f29578a;
    }

    @Override // com.czhj.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.f29582e++;
        int i2 = this.f29581d;
        this.f29581d = i2 + ((int) (i2 * this.f29579b));
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
    }

    public DefaultRetryPolicy(int i2, int i3, float f2) {
        this.f29580c = i2;
        this.f29581d = i2;
        this.f29578a = i3;
        this.f29579b = f2;
    }

    public DefaultRetryPolicy(int i2, int i3, int i4, float f2) {
        this.f29580c = i2;
        this.f29581d = i3;
        this.f29578a = i4;
        this.f29579b = f2;
    }
}
