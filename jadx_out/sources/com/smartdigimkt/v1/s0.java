package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class s0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44603a;

    public s0(BaseScreenATView baseScreenATView) {
        this.f44603a = baseScreenATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseScreenATView baseScreenATView = this.f44603a;
        String str = BaseScreenATView.TAG;
        baseScreenATView.k();
    }
}
