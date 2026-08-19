package com.smartdigimkt.f1;

import com.smartdigimkt.sdk.basead.express.web.BaseWebView;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseWebView f40197a;

    public d(BaseWebView baseWebView) {
        this.f40197a = baseWebView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseWebView baseWebView = this.f40197a;
        baseWebView.f43149b = true;
        baseWebView.destroy();
    }
}
