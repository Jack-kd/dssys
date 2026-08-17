package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class k6 implements v1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44523a;

    public k6(SplashEndCardView splashEndCardView) {
        this.f44523a = splashEndCardView;
    }

    @Override // com.smartdigimkt.v1.v1
    public final boolean a() {
        d0 d0Var;
        SplashEndCardView splashEndCardView = this.f44523a;
        if (!com.smartdigimkt.r2.n.a(splashEndCardView.f43651m, splashEndCardView.f43247b) || (d0Var = this.f44523a.mListener) == null) {
            return false;
        }
        d0Var.a(9);
        return true;
    }
}
