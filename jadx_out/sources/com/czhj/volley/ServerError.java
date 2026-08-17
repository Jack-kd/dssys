package com.czhj.volley;

/* loaded from: classes3.dex */
public class ServerError extends VolleyError {
    public ServerError() {
    }

    public ServerError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ServerError(String str) {
        super(str);
    }
}
