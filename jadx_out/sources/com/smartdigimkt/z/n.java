package com.smartdigimkt.z;

import android.content.Context;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f45321a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f45322b;

    public n(Context context, com.smartdigimkt.m3.c cVar) {
        this.f45321a = cVar;
        this.f45322b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f45321a instanceof com.smartdigimkt.m3.k) {
            d0.a(this.f45322b).a();
            d0 d0VarA = d0.a(this.f45322b);
            com.smartdigimkt.m3.c cVar = this.f45321a;
            d0VarA.f45277b.put(cVar.f41806a, cVar);
        }
    }
}
