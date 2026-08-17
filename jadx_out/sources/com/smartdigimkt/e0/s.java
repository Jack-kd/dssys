package com.smartdigimkt.e0;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebView f40024a;

    public s(WTWebView wTWebView) {
        this.f40024a = wTWebView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WTWebView wTWebView = this.f40024a;
        if (wTWebView != null) {
            wTWebView.release();
        }
    }
}
