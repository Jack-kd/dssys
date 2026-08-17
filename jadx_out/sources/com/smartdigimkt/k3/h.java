package com.smartdigimkt.k3;

import android.database.Cursor;
import com.anythink.core.common.f.h;
import com.smartdigimkt.f3.t;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class h extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile h f41376b;

    public h(d dVar) {
        super(dVar);
    }

    public static h a(d dVar) {
        if (f41376b == null) {
            synchronized (h.class) {
                try {
                    if (f41376b == null) {
                        f41376b = new h(dVar);
                    }
                } finally {
                }
            }
        }
        return f41376b;
    }

    public final synchronized boolean a(String str, String str2) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(h.a.f3292a, null, "dsp_id = ?  AND dsp_offer_id = ? ", new String[]{str, str2}, null, null, null);
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused2) {
            Cursor cursor = cursorQuery;
            try {
                System.gc();
                if (cursor != null) {
                    cursorQuery = cursor;
                }
            } finally {
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return false;
        }
        cursorQuery.close();
        cursorQuery.close();
        return true;
    }

    public final synchronized ArrayList a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        t tVar = new t();
                        tVar.f40253a = cursor.getString(cursor.getColumnIndex("dsp_id"));
                        tVar.f40254b = cursor.getString(cursor.getColumnIndex("dsp_offer_id"));
                        cursor.getString(cursor.getColumnIndex("package_name"));
                        arrayList.add(tVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }
}
