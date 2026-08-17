package com.smartdigimkt.e;

import com.smartdigimkt.china.formatbusiness.ui.LeftSkipAsseblemSplashATView;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39977a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LeftSkipAsseblemSplashATView f39978b;

    public z(LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView, int i2) {
        this.f39978b = leftSkipAsseblemSplashATView;
        this.f39977a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LeftSkipAsseblemSplashATView.a(this.f39978b, this.f39977a + 1);
    }
}
