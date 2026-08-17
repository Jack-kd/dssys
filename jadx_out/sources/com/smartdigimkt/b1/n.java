package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j0.s f39554a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f39555b;

    public n(s sVar, com.smartdigimkt.j0.s sVar2) {
        this.f39555b = sVar;
        this.f39554a = sVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39555b.f39569b.b(this.f39554a);
    }
}
