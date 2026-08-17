package com.smartdigimkt.k3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.o;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.i f41387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f41388b;

    public o(p pVar, com.smartdigimkt.m3.i iVar) {
        this.f41388b = pVar;
        this.f41387a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabaseB;
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(this.f41387a.f42032a));
            contentValues.put("unit_id", this.f41387a.f42033b);
            contentValues.put(o.a.f3367e, Integer.valueOf(this.f41387a.f42036e));
            contentValues.put("show_count", Integer.valueOf(this.f41387a.f42035d));
            contentValues.put(o.a.f3369g, Long.valueOf(this.f41387a.f42034c));
            p pVar = this.f41388b;
            String str = pVar.f41390b;
            synchronized (pVar) {
                sQLiteDatabaseB = pVar.f41366a.b();
            }
            sQLiteDatabaseB.update(o.a.f3363a, contentValues, "type = ? and unit_id = ?", new String[]{String.valueOf(this.f41387a.f42032a), this.f41387a.f42033b});
        } catch (Exception unused) {
        }
    }
}
