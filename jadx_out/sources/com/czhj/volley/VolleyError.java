package com.czhj.volley;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class VolleyError extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private long f29610a;
    protected String errorMsg;
    public final NetworkResponse networkResponse;

    public VolleyError() {
        this.networkResponse = null;
    }

    public void a(long j2) {
        this.f29610a = j2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return !TextUtils.isEmpty(this.errorMsg) ? this.errorMsg : super.getMessage();
    }

    public long getNetworkTimeMs() {
        return this.f29610a;
    }

    public VolleyError(NetworkResponse networkResponse) {
        this.networkResponse = networkResponse;
        if (networkResponse != null) {
            this.errorMsg = String.format("http request error status code " + networkResponse.statusCode, new Object[0]);
        }
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }
}
