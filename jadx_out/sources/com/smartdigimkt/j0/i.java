package com.smartdigimkt.j0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class i extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f40886a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(k kVar, Looper looper) {
        super(looper);
        this.f40886a = kVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        k kVar = this.f40886a;
        kVar.getClass();
        int i2 = message.what;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException();
                }
                g gVar = (g) message.obj;
                Iterator it = kVar.f40917g.iterator();
                while (it.hasNext()) {
                    ((c0) it.next()).a(gVar);
                }
                return;
            }
            a0 a0Var = (a0) message.obj;
            if (kVar.f40925o.equals(a0Var)) {
                return;
            }
            kVar.f40925o = a0Var;
            Iterator it2 = kVar.f40917g.iterator();
            while (it2.hasNext()) {
                ((c0) it2.next()).b();
            }
            return;
        }
        z zVarA = (z) message.obj;
        int i3 = message.arg1;
        int i4 = message.arg2;
        boolean z2 = i4 != -1;
        int i5 = kVar.f40922l - i3;
        kVar.f40922l = i5;
        if (i5 == 0) {
            if (zVarA.f41050d == -9223372036854775807L) {
                zVarA = zVarA.a(zVarA.f41049c, 0L, zVarA.f41051e);
            }
            z zVar = zVarA;
            if ((!kVar.f40926p.f41047a.c() || kVar.f40923m) && zVar.f41047a.c()) {
                kVar.f40928r = 0;
                kVar.f40927q = 0;
                kVar.f40929s = 0L;
            }
            int i6 = kVar.f40923m ? 0 : 2;
            boolean z3 = kVar.f40924n;
            kVar.f40923m = false;
            kVar.f40924n = false;
            kVar.a(zVar, z2, i4, i6, z3, false);
        }
    }
}
