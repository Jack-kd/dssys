package com.smartdigimkt.z0;

import com.smartdigimkt.w0.e0;

/* loaded from: classes5.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final x f45429a;

    public y(x xVar) {
        this.f45429a = xVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.w0.i iVar = (com.smartdigimkt.w0.i) this.f45429a;
        for (e0 e0Var : iVar.f44816q) {
            e0Var.d();
        }
        com.smartdigimkt.w0.g gVar = iVar.f44809j;
        if (gVar.f44781c != null) {
            gVar.f44781c = null;
        }
    }
}
