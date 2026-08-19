package com.smartdigimkt.e5;

import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f40082a;

    public e(f fVar) {
        this.f40082a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f40082a;
        fVar.f40087e = false;
        WeakReference weakReference = fVar.f40084b;
        h hVar = weakReference != null ? (h) weakReference.get() : null;
        if (hVar != null) {
            hVar.timeUpRefreshView();
        } else {
            fVar.a();
        }
    }
}
