package com.smartdigimkt.t3;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f44302a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44303b;

    public h(l lVar, String str, String str2) {
        this.f44302a = lVar;
        this.f44303b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44302a.a(this.f44303b);
    }
}
