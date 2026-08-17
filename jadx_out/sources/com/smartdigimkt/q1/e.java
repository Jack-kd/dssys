package com.smartdigimkt.q1;

import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidBaseWebView f42678a;

    public e(MraidBaseWebView mraidBaseWebView) {
        this.f42678a = mraidBaseWebView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MraidBaseWebView mraidBaseWebView = this.f42678a;
        mraidBaseWebView.f43160m = true;
        mraidBaseWebView.destroy();
    }
}
