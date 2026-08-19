package com.czhj.volley;

import android.content.Intent;

/* loaded from: classes3.dex */
public class AuthFailureError extends VolleyError {

    /* renamed from: a, reason: collision with root package name */
    private Intent f29565a;

    public AuthFailureError() {
    }

    @Override // com.czhj.volley.VolleyError, java.lang.Throwable
    public String getMessage() {
        return this.f29565a != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public Intent getResolutionIntent() {
        return this.f29565a;
    }

    public AuthFailureError(Intent intent) {
        this.f29565a = intent;
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public AuthFailureError(String str) {
        super(str);
    }

    public AuthFailureError(String str, Exception exc) {
        super(str, exc);
    }
}
