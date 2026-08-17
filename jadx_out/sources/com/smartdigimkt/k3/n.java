package com.smartdigimkt.k3;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.o;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41383a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41384b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f41385c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f41386d;

    public n(p pVar, String str, int i2, String str2) {
        this.f41386d = pVar;
        this.f41383a = str;
        this.f41384b = i2;
        this.f41385c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabaseA;
        p pVar = this.f41386d;
        String str = this.f41383a;
        int i2 = this.f41384b;
        String str2 = this.f41385c;
        synchronized (pVar) {
            sQLiteDatabaseA = pVar.f41366a.a();
        }
        Cursor cursorQuery = sQLiteDatabaseA.query(o.a.f3363a, null, "adsource_id = ? and type = ? and unit_id = ?", new String[]{str, String.valueOf(i2), str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        this.f41386d.a(this.f41384b, this.f41383a, this.f41385c);
    }
}
