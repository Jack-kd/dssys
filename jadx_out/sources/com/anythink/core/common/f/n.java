package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.h.bf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class n extends c<n> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3348a = "com.anythink.core.common.f.n";

    /* renamed from: b, reason: collision with root package name */
    private static n f3349b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public List<bf> f3350a;

        /* renamed from: b, reason: collision with root package name */
        public Map<String, bf> f3351b;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3352a = "notice_url_fail_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3353b = "id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3354c = "req_type";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3355d = "req_url";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3356e = "req_head";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3357f = "first_fail_time";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3358g = "offer_out_date_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3359h = "retry_count";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3360i = "CREATE TABLE IF NOT EXISTS notice_url_fail_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, first_fail_time INTEGER, offer_out_date_time INTEGER, retry_count INTEGER )";
    }

    private n(d dVar) {
        super(dVar);
    }

    public static n a(d dVar) {
        if (f3349b == null) {
            synchronized (n.class) {
                try {
                    if (f3349b == null) {
                        f3349b = new n(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3349b;
    }

    private synchronized void b() {
        try {
            if (d() == null) {
                return;
            }
            d().delete(b.f3352a, null, null);
        } catch (Exception unused) {
        }
    }

    public final synchronized long a(bf bfVar) {
        if (d() == null || bfVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", bfVar.f3905a);
            contentValues.put("req_type", Integer.valueOf(bfVar.f3906b));
            contentValues.put("req_url", bfVar.f3908d);
            contentValues.put("req_head", bfVar.f3907c);
            contentValues.put(b.f3357f, Long.valueOf(bfVar.f3909e));
            contentValues.put(b.f3358g, Long.valueOf(bfVar.f3910f));
            contentValues.put(b.f3359h, Integer.valueOf(bfVar.f3911g));
            if (a(bfVar.f3905a)) {
                return d().update(b.f3352a, contentValues, "id = ? ", new String[]{bfVar.f3905a});
            }
            return d().insert(b.f3352a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized int b(bf bfVar) {
        if (d() == null || bfVar == null) {
            return -1;
        }
        try {
            return d().delete(b.f3352a, "id=?", new String[]{bfVar.f3905a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    private boolean a(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(b.f3352a, new String[]{"id"}, "id=?", new String[]{str}, "id", null, null);
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

    public final synchronized a a() {
        a aVar = new a();
        List<bf> listSynchronizedList = Collections.synchronizedList(new ArrayList(8));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(8);
        aVar.f3350a = listSynchronizedList;
        aVar.f3351b = concurrentHashMap;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = c().query(b.f3352a, null, null, null, null, null, b.f3357f);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
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
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            return aVar;
        }
        ArrayList arrayList = new ArrayList(4);
        while (cursorQuery.moveToNext()) {
            bf bfVar = new bf();
            bfVar.f3905a = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
            bfVar.f3906b = cursorQuery.getInt(cursorQuery.getColumnIndex("req_type"));
            bfVar.f3908d = cursorQuery.getString(cursorQuery.getColumnIndex("req_url"));
            bfVar.f3907c = cursorQuery.getString(cursorQuery.getColumnIndex("req_head"));
            bfVar.f3909e = cursorQuery.getLong(cursorQuery.getColumnIndex(b.f3357f));
            bfVar.f3910f = cursorQuery.getLong(cursorQuery.getColumnIndex(b.f3358g));
            bfVar.f3911g = cursorQuery.getInt(cursorQuery.getColumnIndex(b.f3359h));
            if (System.currentTimeMillis() < bfVar.f3910f) {
                listSynchronizedList.add(bfVar);
                concurrentHashMap.put(bfVar.f3905a, bfVar);
            } else {
                arrayList.add(bfVar);
            }
        }
        cursorQuery.close();
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b((bf) obj);
            }
        }
        cursorQuery.close();
        return aVar;
    }
}
