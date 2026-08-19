package com.smartdigimkt.f3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.p;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40213a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40214b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40215c;

    public c(f fVar, Context context, String str) {
        this.f40215c = fVar;
        this.f40213a = context;
        this.f40214b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f40215c;
        if (fVar.f40221a == null) {
            fVar.f40221a = com.smartdigimkt.k3.q.a(com.smartdigimkt.k3.d.a(this.f40213a.getApplicationContext()));
        }
        com.smartdigimkt.k3.q qVar = this.f40215c.f40221a;
        String str = this.f40214b;
        synchronized (qVar) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    SQLiteDatabase sQLiteDatabaseB = qVar.b();
                    if (sQLiteDatabaseB == null) {
                    } else {
                        sQLiteDatabaseB.delete(p.a.f3374a, "bid_id = ? ", new String[]{str});
                    }
                }
            } finally {
            }
        }
    }
}
