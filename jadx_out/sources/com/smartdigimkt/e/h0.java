package com.smartdigimkt.e;

import com.smartdigimkt.china.formatbusiness.ui.LeftSkipSinglePictureSplashATView;

/* loaded from: classes5.dex */
public final class h0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39938a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LeftSkipSinglePictureSplashATView f39939b;

    public h0(LeftSkipSinglePictureSplashATView leftSkipSinglePictureSplashATView, int i2) {
        this.f39939b = leftSkipSinglePictureSplashATView;
        this.f39938a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LeftSkipSinglePictureSplashATView.a(this.f39939b, this.f39938a + 1);
    }
}
