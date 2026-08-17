package com.anythink.core.common.m;

/* loaded from: classes2.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC1114b f5934b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5935c;

    public /* synthetic */ z(AbstractC1114b abstractC1114b, int i2) {
        this.f5934b = abstractC1114b;
        this.f5935c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5934b.d(this.f5935c);
    }
}
