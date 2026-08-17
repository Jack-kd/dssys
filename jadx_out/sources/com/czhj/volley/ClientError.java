package com.czhj.volley;

/* loaded from: classes3.dex */
public class ClientError extends ServerError {

    /* renamed from: a, reason: collision with root package name */
    private String f29577a;

    public ClientError() {
    }

    public String getRequest_id() {
        return this.f29577a;
    }

    public ClientError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ClientError(String str, String str2) {
        super(str);
        this.f29577a = str2;
    }
}
