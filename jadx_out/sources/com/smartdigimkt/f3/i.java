package com.smartdigimkt.f3;

import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.i;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f40226a;

    public i(k kVar) {
        this.f40226a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabaseB;
        com.smartdigimkt.k3.i iVar = this.f40226a.f40231b;
        iVar.getClass();
        try {
            String str = "create_time < " + (System.currentTimeMillis() - 86400000);
            synchronized (iVar) {
                sQLiteDatabaseB = iVar.f41366a.b();
            }
            if (sQLiteDatabaseB == null) {
                return;
            }
            iVar.b().delete(i.a.f3301a, str, null);
        } catch (Exception unused) {
        }
    }
}
