package com.smartdigimkt.w2;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.x3.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebView f44895a;

    public n(WTWebView wTWebView) {
        this.f44895a = wTWebView;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44895a.h5ShowException("{\"error_code\":-999,\"error_message\":\"render timeout\"}");
    }
}
