package com.sigmob.sdk.base;

/* loaded from: classes4.dex */
public enum j {
    AppSWith(1),
    AutoNextPreload(2),
    NormalRequest(3),
    SplashCloseRequest(5),
    ReloadAfterExpiration(6),
    ActiveFailureReload(7),
    OtherRequest(999);


    /* renamed from: h, reason: collision with root package name */
    private final int f36277h;

    j(int i2) {
        this.f36277h = i2;
    }

    public int a() {
        return this.f36277h;
    }
}
