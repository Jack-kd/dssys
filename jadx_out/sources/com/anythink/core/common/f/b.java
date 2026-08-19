package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes2.dex */
public class b extends c<com.anythink.core.common.a.k> {

    /* renamed from: b, reason: collision with root package name */
    private static volatile b f3225b;

    /* renamed from: a, reason: collision with root package name */
    private final String f3226a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3227a = "adx_offer_tracking";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3228b = "placement_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3229c = "dsp_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3230d = "offer_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3231e = "tk_type";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3232f = "extra_info";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3233g = "create_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3234h = "CREATE TABLE IF NOT EXISTS adx_offer_tracking(placement_id TEXT ,dsp_id TEXT ,offer_id TEXT ,tk_type INTEGER ,extra_info TEXT ,create_time INTEGER)";
    }

    private b(d dVar) {
        super(dVar);
        this.f3226a = b.class.getName();
    }

    public static b a(d dVar) {
        if (f3225b == null) {
            synchronized (b.class) {
                try {
                    if (f3225b == null) {
                        f3225b = new b(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3225b;
    }

    private static long e() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final void b() {
        try {
            String str = "create_time < " + e();
            if (d() == null) {
                return;
            }
            d().delete(a.f3227a, str, null);
        } catch (Exception unused) {
        }
    }

    public final synchronized long a(com.anythink.core.common.a.f fVar) {
        if (d() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("placement_id", fVar.a());
            contentValues.put("dsp_id", fVar.b());
            contentValues.put("offer_id", fVar.c());
            contentValues.put(a.f3231e, Integer.valueOf(fVar.d()));
            contentValues.put(a.f3232f, fVar.e());
            contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
            return d().insert(a.f3227a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f A[Catch: all -> 0x002a, DONT_GENERATE, PHI: r1
      0x002f: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:12:0x002d, B:17:0x0037, B:25:0x0044] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:6:0x0025, B:13:0x002f, B:21:0x003d, B:22:0x0040, B:16:0x0034), top: B:35:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.anythink.core.common.a.f> a() {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L2c java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String r2 = "adx_offer_tracking"
            java.lang.String r4 = "create_time >= ? "
            long r5 = e()     // Catch: java.lang.Throwable -> L2c java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String r3 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L2c java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String[] r5 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L2c java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L2c java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.util.List r2 = r9.a(r1)     // Catch: java.lang.Throwable -> L2d java.lang.OutOfMemoryError -> L34 java.lang.Exception -> L42
            r1.close()     // Catch: java.lang.Throwable -> L2d java.lang.OutOfMemoryError -> L34 java.lang.Exception -> L42
            r1.close()     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r9)
            return r2
        L2a:
            r0 = move-exception
            goto L45
        L2c:
            r1 = r0
        L2d:
            if (r1 == 0) goto L47
        L2f:
            r1.close()     // Catch: java.lang.Throwable -> L2a
            goto L47
        L33:
            r1 = r0
        L34:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L47
            goto L2f
        L3a:
            r0 = move-exception
            if (r1 == 0) goto L40
            r1.close()     // Catch: java.lang.Throwable -> L2a
        L40:
            throw r0     // Catch: java.lang.Throwable -> L2a
        L41:
            r1 = r0
        L42:
            if (r1 == 0) goto L47
            goto L2f
        L45:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L2a
            throw r0
        L47:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.b.a():java.util.List");
    }

    private synchronized List<com.anythink.core.common.a.f> a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.anythink.core.common.a.f fVar = new com.anythink.core.common.a.f();
                        int columnIndex = cursor.getColumnIndex("placement_id");
                        if (columnIndex >= 0) {
                            fVar.a(cursor.getString(columnIndex));
                        }
                        int columnIndex2 = cursor.getColumnIndex("dsp_id");
                        if (columnIndex2 >= 0) {
                            fVar.b(cursor.getString(columnIndex2));
                        }
                        int columnIndex3 = cursor.getColumnIndex("offer_id");
                        if (columnIndex3 >= 0) {
                            fVar.c(cursor.getString(columnIndex3));
                        }
                        int columnIndex4 = cursor.getColumnIndex(a.f3231e);
                        if (columnIndex4 >= 0) {
                            fVar.a(cursor.getInt(columnIndex4));
                        }
                        int columnIndex5 = cursor.getColumnIndex(a.f3232f);
                        if (columnIndex5 >= 0) {
                            fVar.d(cursor.getString(columnIndex5));
                        }
                        arrayList.add(fVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }
}
