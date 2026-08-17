package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class p0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44570a;

    public p0(BaseScreenATView baseScreenATView) {
        this.f44570a = baseScreenATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseScreenATView baseScreenATView = this.f44570a;
        String str = BaseScreenATView.TAG;
        baseScreenATView.k();
    }
}
