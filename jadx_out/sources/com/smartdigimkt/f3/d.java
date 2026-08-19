package com.smartdigimkt.f3;

import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.p;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f40216a;

    public d(f fVar) {
        this.f40216a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabaseB;
        f fVar = this.f40216a;
        if (fVar.f40221a == null) {
            fVar.f40221a = com.smartdigimkt.k3.q.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d()));
        }
        com.smartdigimkt.k3.q qVar = this.f40216a.f40221a;
        synchronized (qVar) {
            try {
                sQLiteDatabaseB = qVar.b();
            } finally {
            }
            if (sQLiteDatabaseB == null) {
                return;
            }
            sQLiteDatabaseB.delete(p.a.f3374a, "out_date_timestamp < ? ", new String[]{String.valueOf(System.currentTimeMillis())});
        }
    }
}
