package com.smartdigimkt.x;

import android.content.Context;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f45029a;

    public h(i iVar) {
        this.f45029a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.t1.d dVarA = com.smartdigimkt.t1.d.a();
        Context context = this.f45029a.f45030a.f45039g;
        if (dVarA.b()) {
            String str = dVarA.f44201c;
            dVarA.f44203e = true;
            try {
                new com.smartdigimkt.q4.g(str).a(1, (com.smartdigimkt.l4.b) new com.smartdigimkt.t1.b(dVarA, context));
            } catch (Throwable unused) {
                dVarA.f44203e = false;
            }
        }
    }
}
