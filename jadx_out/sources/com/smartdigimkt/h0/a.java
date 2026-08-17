package com.smartdigimkt.h0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.anythink.core.common.f.q;
import com.smartdigimkt.i0.c;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static a f40421b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f40422a;

    public a(Context context) {
        this.f40422a = context;
    }

    public final synchronized void a(c cVar) {
        synchronized (this) {
            if (cVar == null) {
                return;
            }
            try {
                if (b.a(this.f40422a).getWritableDatabase() == null) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("offer_id", cVar.f40636a);
                contentValues.put("show_num", Integer.valueOf(cVar.f40639d));
                contentValues.put(q.a.f3394i, Long.valueOf(cVar.f40640e));
                contentValues.put("record_date", cVar.f40641f);
                contentValues.put("offer_cap", Integer.valueOf(cVar.f40637b));
                contentValues.put("offer_pacing", Long.valueOf(cVar.f40638c));
                if (!a(cVar.f40636a)) {
                    b.a(this.f40422a).getWritableDatabase().insert("my_offer_cap_pacing", null, contentValues);
                    return;
                }
                b.a(this.f40422a).getWritableDatabase().update("my_offer_cap_pacing", contentValues, "offer_id = '" + cVar.f40636a + "'", null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final synchronized boolean a(String str) {
        Cursor cursorQuery = b.a(this.f40422a).getReadableDatabase().query("my_offer_cap_pacing", new String[]{"offer_id"}, "offer_id = ?", new String[]{str}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }
}
