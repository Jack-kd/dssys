package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class h extends c<com.anythink.core.common.a.j> {

    /* renamed from: b, reason: collision with root package name */
    private static volatile h f3290b;

    /* renamed from: a, reason: collision with root package name */
    private final String f3291a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3292a = "dsp_offer_install_record";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3293b = "dsp_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3294c = "dsp_offer_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3295d = "package_name";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3296e = "last_update_time";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3297f = "CREATE TABLE IF NOT EXISTS dsp_offer_install_record(dsp_id TEXT ,dsp_offer_id TEXT ,package_name TEXT ,last_update_time INTEGER)";
    }

    private h(d dVar) {
        super(dVar);
        this.f3291a = h.class.getName();
    }

    private static h a(d dVar) {
        if (f3290b == null) {
            synchronized (h.class) {
                try {
                    if (f3290b == null) {
                        f3290b = new h(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3290b;
    }

    private synchronized long a(com.anythink.core.common.a.j jVar) {
        if (d() != null && jVar != null) {
            if (!a(jVar.a(), jVar.b())) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("dsp_id", jVar.a());
                    contentValues.put("dsp_offer_id", jVar.b());
                    contentValues.put("package_name", jVar.c());
                    contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                    return d().insert(a.f3292a, null, contentValues);
                } catch (Exception unused) {
                }
            }
            return -1L;
        }
        return -1L;
    }

    private synchronized boolean a(String str, String str2) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = c().query(a.f3292a, null, "dsp_id = ?  AND dsp_offer_id = ? ", new String[]{str, str2}, null, null, null);
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused2) {
            Cursor cursor = cursorQuery;
            try {
                System.gc();
                if (cursor != null) {
                    cursor.close();
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

    private synchronized List<com.anythink.core.common.a.i> a(int i2) {
        ArrayList arrayList = new ArrayList();
        if (i2 <= 0) {
            return arrayList;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = c().query(a.f3292a, null, null, null, null, null, "last_update_time DESC", String.valueOf(i2));
                List<com.anythink.core.common.a.j> listA = a(cursorQuery);
                cursorQuery.close();
                arrayList.addAll(listA);
            } finally {
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused2) {
            System.gc();
            if (cursorQuery != null) {
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    private synchronized List<com.anythink.core.common.a.j> a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.anythink.core.common.a.j jVar = new com.anythink.core.common.a.j();
                        jVar.a(cursor.getString(cursor.getColumnIndex("dsp_id")));
                        jVar.b(cursor.getString(cursor.getColumnIndex("dsp_offer_id")));
                        jVar.c(cursor.getString(cursor.getColumnIndex("package_name")));
                        arrayList.add(jVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }
}
