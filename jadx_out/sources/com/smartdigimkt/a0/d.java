package com.smartdigimkt.a0;

import com.smartdigimkt.z.w;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f39226a;

    public d(e eVar) {
        this.f39226a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f39226a.f39227a;
        if (wVar != null) {
            wVar.c();
        }
    }
}
