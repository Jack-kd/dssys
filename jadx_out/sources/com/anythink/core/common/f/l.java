package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.h.av;

/* loaded from: classes2.dex */
public class l extends c<av> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3335a = "com.anythink.core.common.f.l";

    /* renamed from: b, reason: collision with root package name */
    private static volatile l f3336b;

    /* renamed from: c, reason: collision with root package name */
    private int f3337c;

    /* renamed from: d, reason: collision with root package name */
    private int f3338d;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3339a = "inspect_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3340b = "inspect_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3341c = "update_time";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3342d = "inspect_result";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3343e = "pgk_name";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3344f = "CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, inspect_result INTEGER, pgk_name TEXT, update_time INTEGER )";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3345g = "CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, update_time INTEGER )";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3346h = "ALTER TABLE inspect_info ADD COLUMN inspect_result INTEGER DEFAULT 1";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3347i = "ALTER TABLE inspect_info DROP COLUMN pgk_name";
    }

    private l(d dVar) {
        super(dVar);
        this.f3337c = 500;
        this.f3338d = -1627869184;
    }

    private static l a(d dVar) {
        if (f3336b == null) {
            synchronized (l.class) {
                try {
                    if (f3336b == null) {
                        f3336b = new l(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3336b;
    }

    private synchronized void b(String str) {
        try {
            d().delete(a.f3339a, "inspect_id = ? ", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069 A[Catch: all -> 0x0065, DONT_GENERATE, PHI: r1
      0x0069: PHI (r1v6 android.database.Cursor) = 
      (r1v3 android.database.Cursor)
      (r1v4 android.database.Cursor)
      (r1v5 android.database.Cursor)
      (r1v8 android.database.Cursor)
     binds: [B:26:0x006e, B:30:0x0075, B:38:0x0082, B:22:0x0067] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:17:0x0060, B:23:0x0069, B:34:0x007b, B:35:0x007e, B:29:0x0072), top: B:49:0x0002, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.anythink.core.common.h.av> b() {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.c()     // Catch: java.lang.Throwable -> L6d java.lang.OutOfMemoryError -> L71 java.lang.Exception -> L7f
            java.lang.String r2 = "inspect_info"
            r8 = 0
            r9 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L6d java.lang.OutOfMemoryError -> L71 java.lang.Exception -> L7f
            if (r1 == 0) goto L67
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L6e java.lang.OutOfMemoryError -> L72 java.lang.Exception -> L80
            if (r2 <= 0) goto L67
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L6e java.lang.OutOfMemoryError -> L72 java.lang.Exception -> L80
            r2.<init>()     // Catch: java.lang.Throwable -> L6e java.lang.OutOfMemoryError -> L72 java.lang.Exception -> L80
        L20:
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Throwable -> L6e java.lang.OutOfMemoryError -> L72 java.lang.Exception -> L80
            if (r3 == 0) goto L5d
            com.anythink.core.common.h.av r3 = new com.anythink.core.common.h.av     // Catch: java.lang.Throwable -> L20
            r3.<init>()     // Catch: java.lang.Throwable -> L20
            java.lang.String r4 = "inspect_id"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L20
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L20
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L20
            if (r5 == 0) goto L3c
            goto L20
        L3c:
            java.lang.String r5 = "inspect_result"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L20
            int r5 = r1.getInt(r5)     // Catch: java.lang.Throwable -> L20
            java.lang.String r6 = "update_time"
            int r6 = r1.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L20
            long r6 = r1.getLong(r6)     // Catch: java.lang.Throwable -> L20
            r3.a(r4)     // Catch: java.lang.Throwable -> L20
            r3.a(r5)     // Catch: java.lang.Throwable -> L20
            r3.a(r6)     // Catch: java.lang.Throwable -> L20
            r2.add(r3)     // Catch: java.lang.Throwable -> L20
            goto L20
        L5d:
            r1.close()     // Catch: java.lang.Throwable -> L6e java.lang.OutOfMemoryError -> L72 java.lang.Exception -> L80
            r1.close()     // Catch: java.lang.Throwable -> L65
            monitor-exit(r10)
            return r2
        L65:
            r0 = move-exception
            goto L83
        L67:
            if (r1 == 0) goto L85
        L69:
            r1.close()     // Catch: java.lang.Throwable -> L65
            goto L85
        L6d:
            r1 = r0
        L6e:
            if (r1 == 0) goto L85
            goto L69
        L71:
            r1 = r0
        L72:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L78
            if (r1 == 0) goto L85
            goto L69
        L78:
            r0 = move-exception
            if (r1 == 0) goto L7e
            r1.close()     // Catch: java.lang.Throwable -> L65
        L7e:
            throw r0     // Catch: java.lang.Throwable -> L65
        L7f:
            r1 = r0
        L80:
            if (r1 == 0) goto L85
            goto L69
        L83:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L65
            throw r0
        L85:
            monitor-exit(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.l.b():java.util.List");
    }

    private synchronized long a(String str, boolean z2) {
        if (d() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(a.f3340b, str);
            contentValues.put(a.f3342d, Integer.valueOf(z2 ? 1 : 2));
            contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
            if (a(str)) {
                return d().update(a.f3339a, contentValues, "inspect_id = ? ", new String[]{str});
            }
            return d().insert(a.f3339a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    private synchronized boolean a(String str) {
        Cursor cursorQuery;
        if (str == null) {
            return false;
        }
        try {
            cursorQuery = c().query(a.f3339a, new String[]{a.f3340b}, "inspect_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.close();
                        cursorQuery.close();
                        return true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    private synchronized void a() {
        Cursor cursorQuery = null;
        long j2 = -1;
        try {
            cursorQuery = c().query(a.f3339a, null, null, null, null, null, "update_time DESC", String.valueOf(this.f3337c));
            if (cursorQuery != null && cursorQuery.getCount() >= this.f3337c) {
                cursorQuery.moveToLast();
                j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                cursorQuery.close();
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused2) {
            long j3 = j2;
            Cursor cursor = cursorQuery;
            try {
                System.gc();
                j2 = j3;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f3338d;
        if (j2 == 0 || j2 > jCurrentTimeMillis) {
            j2 = jCurrentTimeMillis;
        }
        if (j2 > 0) {
            try {
                d().delete(a.f3339a, "update_time<?", new String[]{String.valueOf(j2)});
            } catch (Throwable unused4) {
            }
        }
    }
}
