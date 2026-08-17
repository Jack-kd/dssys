package com.smartdigimkt.a0;

import com.smartdigimkt.z.w;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f39225a;

    public c(e eVar) {
        this.f39225a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f39225a.f39227a;
        if (wVar != null) {
            wVar.b();
        }
    }
}
