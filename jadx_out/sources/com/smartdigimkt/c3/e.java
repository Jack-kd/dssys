package com.smartdigimkt.c3;

import android.content.Context;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.l;
import com.smartdigimkt.y3.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39671a;

    public e(Context context) {
        this.f39671a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (k.g(this.f39671a)) {
            s.a().b();
            com.smartdigimkt.c0.d dVarA = com.smartdigimkt.c0.d.a();
            synchronized (dVarA) {
                try {
                    dVarA.b();
                    List<com.smartdigimkt.i0.d> listSynchronizedList = dVarA.f39623b != null ? Collections.synchronizedList(new ArrayList(dVarA.f39623b)) : null;
                    if (listSynchronizedList != null && listSynchronizedList.size() > 0) {
                        for (com.smartdigimkt.i0.d dVar : listSynchronizedList) {
                            dVar.getClass();
                            dVarA.a(dVar, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            l lVarA = l.a();
            if (lVarA.f45226f != null && SDKContext.getInstance().f44116e && k.g(lVarA.f45226f)) {
                com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.y3.k(lVarA), 0L, 13);
            }
        }
    }
}
