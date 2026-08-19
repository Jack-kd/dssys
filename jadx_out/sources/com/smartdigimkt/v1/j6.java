package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class j6 implements com.smartdigimkt.r2.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashEndCardView f44515a;

    public j6(SplashEndCardView splashEndCardView) {
        this.f44515a = splashEndCardView;
    }

    @Override // com.smartdigimkt.r2.m
    public final void a(int i2, int i3) {
        d0 d0Var = this.f44515a.mListener;
        if (d0Var != null) {
            d0Var.a(i3);
        }
    }
}
