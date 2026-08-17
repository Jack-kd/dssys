package com.smartdigimkt.x;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f45024a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f45025b;

    public d(l lVar, com.smartdigimkt.d4.h hVar) {
        this.f45025b = lVar;
        this.f45024a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f45025b.a(this.f45024a);
    }
}
