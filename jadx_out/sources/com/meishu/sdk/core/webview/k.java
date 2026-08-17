package com.meishu.sdk.core.webview;

import com.meishu.sdk.core.webview.a;

/* loaded from: classes4.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public volatile Boolean f32128a = null;

    public final void a(boolean z2) {
        if (this.f32128a != null) {
            return;
        }
        this.f32128a = Boolean.valueOf(z2);
        boolean zBooleanValue = this.f32128a.booleanValue();
        a.C0677a c0677a = (a.C0677a) this;
        try {
            com.meishu.sdk.core.webview.listener.d dVar = a.this.f32092g;
            if (dVar != null) {
                dVar.onWebReady(zBooleanValue);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            com.meishu.sdk.core.webview.listener.c cVar = a.this.f32091f;
            if (cVar != null) {
                cVar.a(zBooleanValue);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
