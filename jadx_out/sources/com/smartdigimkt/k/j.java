package com.smartdigimkt.k;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.g;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f41151b;

    public j(o oVar, r rVar) {
        this.f41151b = oVar;
        this.f41150a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.g gVar = this.f41151b.f41162b;
        if (gVar != null) {
            com.smartdigimkt.m3.f fVar = new com.smartdigimkt.m3.f();
            r rVar = this.f41150a;
            fVar.f42006a = rVar.f41192o;
            fVar.f42003K = rVar.f41184g;
            synchronized (gVar) {
                try {
                    SQLiteDatabase sQLiteDatabaseB = gVar.b();
                    if (gVar.b(fVar)) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("progress", Long.valueOf(fVar.f42003K));
                        sQLiteDatabaseB.update(g.a.f3264a, contentValues, "unique_id = ?", new String[]{fVar.f42006a});
                    }
                } finally {
                }
            }
        }
    }
}
