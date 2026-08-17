package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f42566a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42567b;

    public p(r rVar, boolean z2) {
        this.f42567b = rVar;
        this.f42566a = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42567b.f42576g;
        if (aVar != null) {
            aVar.onDeeplinkCallback(this.f42566a);
        }
    }
}
