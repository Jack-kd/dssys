package com.smartdigimkt.d4;

import com.smartdigimkt.sdk.api.ISDMAdManager;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ISDMAdManager.S2SBidTokenCallback f39900a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39901b;

    public f(ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback, String str) {
        this.f39900a = s2SBidTokenCallback;
        this.f39901b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39900a.onComplete(this.f39901b);
    }
}
