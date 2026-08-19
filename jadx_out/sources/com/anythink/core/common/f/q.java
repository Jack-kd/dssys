package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.h.bq;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class q extends c<bq> {

    /* renamed from: b, reason: collision with root package name */
    private static volatile q f3384b;

    /* renamed from: a, reason: collision with root package name */
    private final String f3385a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3386a = "placement_ad_impression";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3387b = "format";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3388c = "placement_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3389d = "adsource_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3390e = "hour_time";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3391f = "hour_imp";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3392g = "date_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3393h = "date_imp";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3394i = "show_time";

        /* renamed from: j, reason: collision with root package name */
        public static final String f3395j = "CREATE TABLE IF NOT EXISTS placement_ad_impression(format INTEGER ,placement_id TEXT ,adsource_id TEXT ,hour_time TEXT ,hour_imp INTEGER ,date_time TEXT ,date_imp INTEGER , show_time INTEGER)";
    }

    private q(d dVar) {
        super(dVar);
        this.f3385a = q.class.getName();
    }

    private static q a(d dVar) {
        if (f3384b == null) {
            synchronized (q.class) {
                try {
                    if (f3384b == null) {
                        f3384b = new q(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3384b;
    }

    private void b(String str) {
        String str2;
        synchronized (this) {
            try {
                str2 = "date_time!='" + str + "'";
            } catch (Exception unused) {
            }
            if (d() == null) {
                return;
            }
            d().delete(a.f3386a, str2, null);
        }
    }

    private synchronized int[] a(int i2, String str, String str2) {
        int[] iArr;
        iArr = new int[2];
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = c().query(a.f3386a, new String[]{"sum(date_imp)"}, "format=? AND date_time=?", new String[]{String.valueOf(i2), str}, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    cursorQuery.moveToNext();
                    iArr[0] = cursorQuery.getInt(0);
                }
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    cursorQuery.close();
                }
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
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        try {
            try {
                cursorQuery = c().query(a.f3386a, new String[]{"sum(hour_imp)"}, "format=? AND hour_time=?", new String[]{String.valueOf(i2), str2}, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    cursorQuery.moveToNext();
                    iArr[1] = cursorQuery.getInt(0);
                }
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    cursorQuery.close();
                }
            } finally {
            }
        } catch (Exception unused4) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused5) {
            System.gc();
            if (cursorQuery != null) {
            }
        } catch (Throwable unused6) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00da A[Catch: all -> 0x00d4, PHI: r10
      0x00da: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:31:0x00d8, B:36:0x00e2, B:45:0x00f0] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:25:0x00cf, B:32:0x00da, B:41:0x00e9, B:42:0x00ec, B:35:0x00df), top: B:53:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized com.anythink.core.common.h.bq a(java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.q.a(java.lang.String, java.lang.String, java.lang.String):com.anythink.core.common.h.bq");
    }

    private synchronized long a(int i2, String str, bq.a aVar) {
        if (d() == null || aVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("format", Integer.valueOf(i2));
            contentValues.put("placement_id", str);
            contentValues.put("adsource_id", aVar.f4025a);
            contentValues.put(a.f3390e, aVar.f4026b);
            contentValues.put(a.f3391f, Integer.valueOf(aVar.f4029e));
            contentValues.put(a.f3392g, aVar.f4027c);
            contentValues.put(a.f3393h, Integer.valueOf(aVar.f4028d));
            contentValues.put(a.f3394i, Long.valueOf(aVar.f4030f));
            Cursor cursorQuery = c().query(a.f3386a, new String[]{"adsource_id"}, "adsource_id=?", new String[]{aVar.f4025a}, "adsource_id", null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.close();
                return d().update(a.f3386a, contentValues, "adsource_id = ? ", new String[]{aVar.f4025a});
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return d().insert(a.f3386a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    private boolean a(String str) {
        Cursor cursorQuery = c().query(a.f3386a, new String[]{"adsource_id"}, "adsource_id=?", new String[]{str}, "adsource_id", null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery == null) {
            return false;
        }
        cursorQuery.close();
        return false;
    }

    private static bq a(Cursor cursor, String str, String str2) {
        if (cursor == null || cursor.getCount() <= 0) {
            return null;
        }
        bq bqVar = new bq();
        bqVar.f4024h = new ConcurrentHashMap<>();
        while (cursor.moveToNext()) {
            bqVar.f4017a = cursor.getInt(cursor.getColumnIndex("format"));
            bqVar.f4018b = cursor.getString(cursor.getColumnIndex("placement_id"));
            bq.a aVar = new bq.a();
            aVar.f4025a = cursor.getString(cursor.getColumnIndex("adsource_id"));
            aVar.f4026b = cursor.getString(cursor.getColumnIndex(a.f3390e));
            aVar.f4027c = cursor.getString(cursor.getColumnIndex(a.f3392g));
            if (!TextUtils.equals(aVar.f4026b, str2)) {
                aVar.f4029e = 0;
            } else {
                aVar.f4029e = cursor.getInt(cursor.getColumnIndex(a.f3391f));
            }
            bqVar.f4020d += aVar.f4029e;
            if (!TextUtils.equals(aVar.f4027c, str)) {
                aVar.f4028d = 0;
            } else {
                aVar.f4028d = cursor.getInt(cursor.getColumnIndex(a.f3393h));
            }
            bqVar.f4019c += aVar.f4028d;
            long j2 = cursor.getLong(cursor.getColumnIndex(a.f3394i));
            aVar.f4030f = j2;
            if (j2 >= bqVar.f4021e) {
                bqVar.f4021e = j2;
            }
            bqVar.f4024h.put(aVar.f4025a, aVar);
        }
        return bqVar;
    }
}
