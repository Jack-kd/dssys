package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f42559a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42560b;

    public j(r rVar, u uVar) {
        this.f42560b = rVar;
        this.f42559a = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42560b.f42576g;
        if (aVar != null) {
            aVar.onAdClick(this.f42559a);
        }
    }
}
