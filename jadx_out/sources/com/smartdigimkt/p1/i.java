package com.smartdigimkt.p1;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f42557a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f42558b;

    public i(r rVar, u uVar) {
        this.f42558b = rVar;
        this.f42557a = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f42558b.f42576g;
        if (aVar != null) {
            aVar.onAdShow(this.f42557a);
        }
    }
}
