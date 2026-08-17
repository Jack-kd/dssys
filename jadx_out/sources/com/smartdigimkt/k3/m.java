package com.smartdigimkt.k3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class m extends b {

    /* renamed from: b, reason: collision with root package name */
    public static m f41382b;

    public m(d dVar) {
        super(dVar);
    }

    public static m a(d dVar) {
        if (f41382b == null) {
            synchronized (m.class) {
                try {
                    if (f41382b == null) {
                        f41382b = new m(dVar);
                    }
                } finally {
                }
            }
        }
        return f41382b;
    }

    public final synchronized void b(com.smartdigimkt.i0.d dVar) {
        if (b() == null || dVar == null) {
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", dVar.f40642a);
            contentValues.put("req_type", Integer.valueOf(dVar.f40643b));
            contentValues.put("req_url", dVar.f40645d);
            contentValues.put("req_head", dVar.f40644c);
            contentValues.put(n.b.f3357f, Long.valueOf(dVar.f40646e));
            contentValues.put(n.b.f3358g, Long.valueOf(dVar.f40647f));
            contentValues.put(n.b.f3359h, Integer.valueOf(dVar.f40648g));
            if (a(dVar.f40642a)) {
                b().update(n.b.f3352a, contentValues, "id = ? ", new String[]{dVar.f40642a});
            } else {
                b().insert(n.b.f3352a, null, contentValues);
            }
        } catch (Exception unused) {
        }
    }

    public final synchronized l c() {
        l lVar = new l();
        List listSynchronizedList = Collections.synchronizedList(new ArrayList(8));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(8);
        lVar.f41380a = listSynchronizedList;
        lVar.f41381b = concurrentHashMap;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(n.b.f3352a, null, null, null, null, null, n.b.f3357f);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } catch (Exception unused) {
        } catch (OutOfMemoryError unused2) {
            System.gc();
            if (cursorQuery != null) {
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            if (cursorQuery != null) {
            }
            return lVar;
        }
        ArrayList arrayList = new ArrayList(4);
        while (cursorQuery.moveToNext()) {
            com.smartdigimkt.i0.d dVar = new com.smartdigimkt.i0.d();
            dVar.f40642a = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
            dVar.f40643b = cursorQuery.getInt(cursorQuery.getColumnIndex("req_type"));
            dVar.f40645d = cursorQuery.getString(cursorQuery.getColumnIndex("req_url"));
            dVar.f40644c = cursorQuery.getString(cursorQuery.getColumnIndex("req_head"));
            dVar.f40646e = cursorQuery.getLong(cursorQuery.getColumnIndex(n.b.f3357f));
            dVar.f40647f = cursorQuery.getLong(cursorQuery.getColumnIndex(n.b.f3358g));
            dVar.f40648g = cursorQuery.getInt(cursorQuery.getColumnIndex(n.b.f3359h));
            if (System.currentTimeMillis() < dVar.f40647f) {
                listSynchronizedList.add(dVar);
                concurrentHashMap.put(dVar.f40642a, dVar);
            } else {
                arrayList.add(dVar);
            }
        }
        cursorQuery.close();
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                com.smartdigimkt.i0.d dVar2 = (com.smartdigimkt.i0.d) obj;
                dVar2.getClass();
                a(dVar2);
            }
        }
        cursorQuery.close();
        return lVar;
    }

    public final boolean a(String str) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabaseA;
        try {
            synchronized (this) {
                sQLiteDatabaseA = this.f41366a.a();
            }
            cursorQuery = sQLiteDatabaseA.query(n.b.f3352a, new String[]{"id"}, "id=?", new String[]{str}, "id", null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.close();
                        cursorQuery.close();
                        return true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery == null) {
                        return false;
                    }
                    cursorQuery.close();
                    return false;
                }
            }
            if (cursorQuery == null) {
                return false;
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        cursorQuery.close();
        return false;
    }

    public final synchronized void a(com.smartdigimkt.i0.d dVar) {
        if (b() == null || dVar == null) {
            return;
        }
        try {
            b().delete(n.b.f3352a, "id=?", new String[]{dVar.f40642a});
        } catch (Throwable unused) {
        }
    }
}
