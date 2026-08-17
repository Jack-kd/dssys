package com.smartdigimkt.x3;

/* loaded from: classes5.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f45107a;

    public c(d dVar) {
        this.f45107a = dVar;
    }

    @Override // com.smartdigimkt.x3.b
    public final boolean a() {
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f45107a;
        dVar.f45111d = false;
        dVar.f45109b = -1L;
        com.smartdigimkt.b4.e.a().a(this.f45107a.f45110c);
    }
}
