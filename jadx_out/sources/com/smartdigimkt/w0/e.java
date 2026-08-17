package com.smartdigimkt.w0;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f44756a;

    public e(i iVar) {
        this.f44756a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f44756a;
        if (iVar.f44799L) {
            return;
        }
        iVar.f44814o.b(iVar);
    }
}
