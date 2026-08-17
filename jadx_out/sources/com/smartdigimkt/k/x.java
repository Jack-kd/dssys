package com.smartdigimkt.k;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes5.dex */
public final class x extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f41216a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar, Looper looper) {
        super(looper);
        this.f41216a = yVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 100) {
            long j2 = 0;
            for (int i2 = 0; i2 < this.f41216a.f41224h.size(); i2++) {
                try {
                    j2 += this.f41216a.f41224h.get(i2);
                } catch (Throwable th) {
                    th.getMessage();
                    return;
                }
            }
            z zVar = this.f41216a.f41227k;
            c0 c0Var = zVar.f41238j;
            if (c0Var != null) {
                long j3 = zVar.f41234f;
                d0 d0Var = c0Var.f41133a;
                r rVar = d0Var.f41123a;
                if (rVar != null) {
                    rVar.f41184g = j2;
                }
                a aVar = d0Var.f41136d;
                if (aVar != null) {
                    aVar.a(rVar, j2, j3);
                }
            }
            y yVar = this.f41216a;
            x xVar = yVar.f41226j;
            if (xVar == null || j2 > yVar.f41227k.f41234f) {
                return;
            }
            this.f41216a.f41226j.sendMessageDelayed(xVar.obtainMessage(100), 500L);
        }
    }
}
