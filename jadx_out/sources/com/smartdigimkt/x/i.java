package com.smartdigimkt.x;

import android.content.Context;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f45030a;

    public i(l lVar) {
        this.f45030a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (com.smartdigimkt.u1.d.a().b()) {
                String str = this.f45030a.f45033a;
                com.smartdigimkt.t1.m mVarA = com.smartdigimkt.t1.m.a();
                Context context = this.f45030a.f45039g;
                mVarA.b();
                com.smartdigimkt.t1.m mVarA2 = com.smartdigimkt.t1.m.a();
                Context context2 = this.f45030a.f45039g;
                mVarA2.c();
                com.smartdigimkt.t1.m mVarA3 = com.smartdigimkt.t1.m.a();
                Context context3 = this.f45030a.f45039g;
                if (mVarA3.b()) {
                    SDKContext sDKContext = SDKContext.getInstance();
                    g gVar = new g(this);
                    sDKContext.getClass();
                    com.smartdigimkt.b4.e.a().a(gVar, 0L, 7);
                } else {
                    com.smartdigimkt.t1.m mVarA4 = com.smartdigimkt.t1.m.a();
                    Context context4 = this.f45030a.f45039g;
                    if (mVarA4.c()) {
                        SDKContext sDKContext2 = SDKContext.getInstance();
                        g gVar2 = new g(this);
                        sDKContext2.getClass();
                        com.smartdigimkt.b4.e.a().a(gVar2, 0L, 7);
                    }
                }
            }
            String str2 = this.f45030a.f45033a;
            com.smartdigimkt.t1.d dVarA = com.smartdigimkt.t1.d.a();
            Context context5 = this.f45030a.f45039g;
            dVarA.b();
            com.smartdigimkt.t1.d dVarA2 = com.smartdigimkt.t1.d.a();
            Context context6 = this.f45030a.f45039g;
            if (dVarA2.b()) {
                SDKContext sDKContext3 = SDKContext.getInstance();
                h hVar = new h(this);
                sDKContext3.getClass();
                com.smartdigimkt.b4.e.a().a(hVar, 0L, 7);
            }
        } catch (Throwable th) {
            l lVar = this.f45030a;
            th.getMessage();
            lVar.a(false);
        }
    }
}
