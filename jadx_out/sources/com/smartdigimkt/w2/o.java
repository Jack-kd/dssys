package com.smartdigimkt.w2;

import android.view.ViewTreeObserver;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class o implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WTWebView f44896a;

    public o(WTWebView wTWebView) {
        this.f44896a = wTWebView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        try {
            if (this.f44896a.f44085n) {
                return false;
            }
            this.f44896a.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f44896a.f44085n = true;
            this.f44896a.b();
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
