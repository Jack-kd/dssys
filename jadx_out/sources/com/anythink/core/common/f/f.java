package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.h.bu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class f extends c<bu> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3239a = "com.anythink.core.common.f.f";

    /* renamed from: b, reason: collision with root package name */
    private static volatile f f3240b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3241a = "sdkconfig";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3242b = "key";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3243c = "type";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3244d = "value";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3245e = "lastupdatetime";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3246f = "CREATE TABLE IF NOT EXISTS sdkconfig(key TEXT ,type TEXT ,lastupdatetime TEXT ,value TEXT )";
    }

    private f(d dVar) {
        super(dVar);
    }

    public static f a(d dVar) {
        if (f3240b == null) {
            synchronized (f.class) {
                try {
                    if (f3240b == null) {
                        f3240b = new f(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3240b;
    }

    private synchronized boolean b(String str, String str2) {
        Cursor cursorQuery = c().query(a.f3241a, new String[]{a.f3242b}, "key=? AND type=?", new String[]{str, str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    private synchronized void c(String str, String str2) {
        List<bu> listC = c(str, str2, bu.a.f4048a);
        if (listC == null || listC.size() <= 0) {
            bu buVar = new bu();
            buVar.a(str2);
            buVar.d("1");
            buVar.c(bu.a.f4048a);
            buVar.b(str);
            a(buVar);
            return;
        }
        for (bu buVar2 : listC) {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.parseInt(buVar2.d()) + 1);
            buVar2.d(sb.toString());
            a(buVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028 A[Catch: all -> 0x0020, PHI: r10
      0x0028: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:14:0x0026, B:19:0x0030, B:28:0x003e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x001c, B:15:0x0028, B:24:0x0037, B:25:0x003a, B:18:0x002d), top: B:36:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.anythink.core.common.h.bu> d(java.lang.String r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.lang.String r2 = "sdkconfig"
            java.lang.String r4 = "key != ? and type = ?"
            java.lang.String[] r5 = new java.lang.String[]{r10, r11}     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.util.List r11 = r9.a(r10)     // Catch: java.lang.Throwable -> L26 java.lang.OutOfMemoryError -> L2d java.lang.Exception -> L3c
            if (r10 == 0) goto L23
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L23
        L20:
            r0 = move-exception
            r10 = r0
            goto L3f
        L23:
            monitor-exit(r9)
            return r11
        L25:
            r10 = r0
        L26:
            if (r10 == 0) goto L41
        L28:
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L41
        L2c:
            r10 = r0
        L2d:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L33
            if (r10 == 0) goto L41
            goto L28
        L33:
            r0 = move-exception
            r11 = r0
            if (r10 == 0) goto L3a
            r10.close()     // Catch: java.lang.Throwable -> L20
        L3a:
            throw r11     // Catch: java.lang.Throwable -> L20
        L3b:
            r10 = r0
        L3c:
            if (r10 == 0) goto L41
            goto L28
        L3f:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L20
            throw r10
        L41:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.f.d(java.lang.String, java.lang.String):java.util.List");
    }

    private synchronized boolean b(String str, String str2, String str3) {
        Cursor cursorQuery = c().query(a.f3241a, new String[]{a.f3242b}, "key=? AND type=? AND lastupdatetime=?", new String[]{str, str3, str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized long a(String str, String str2, String str3) {
        if (d() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(a.f3242b, str);
            contentValues.put("type", str3);
            contentValues.put(a.f3244d, str2);
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            contentValues.put(a.f3245e, sb.toString());
            if (b(str, str3)) {
                return d().update(a.f3241a, contentValues, "key = ? AND type = ?", new String[]{str, str3});
            }
            return d().insert(a.f3241a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    private synchronized void b(String str) {
        try {
            if (d() == null) {
                return;
            }
            d().delete(a.f3241a, "lastupdatetime< ? and type = ?", new String[]{str, bu.a.f4048a});
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028 A[Catch: all -> 0x0020, PHI: r10
      0x0028: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:14:0x0026, B:19:0x0030, B:28:0x003e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x001c, B:15:0x0028, B:24:0x0037, B:25:0x003a, B:18:0x002d), top: B:36:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.anythink.core.common.h.bu> c(java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.lang.String r2 = "sdkconfig"
            java.lang.String r4 = "key = ? and type = ? and lastupdatetime = ?"
            java.lang.String[] r5 = new java.lang.String[]{r10, r12, r11}     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.util.List r11 = r9.a(r10)     // Catch: java.lang.Throwable -> L26 java.lang.OutOfMemoryError -> L2d java.lang.Exception -> L3c
            if (r10 == 0) goto L23
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L23
        L20:
            r0 = move-exception
            r10 = r0
            goto L3f
        L23:
            monitor-exit(r9)
            return r11
        L25:
            r10 = r0
        L26:
            if (r10 == 0) goto L41
        L28:
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L41
        L2c:
            r10 = r0
        L2d:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L33
            if (r10 == 0) goto L41
            goto L28
        L33:
            r0 = move-exception
            r11 = r0
            if (r10 == 0) goto L3a
            r10.close()     // Catch: java.lang.Throwable -> L20
        L3a:
            throw r11     // Catch: java.lang.Throwable -> L20
        L3b:
            r10 = r0
        L3c:
            if (r10 == 0) goto L41
            goto L28
        L3f:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L20
            throw r10
        L41:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.f.c(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    private synchronized long a(bu buVar) {
        if (d() == null || buVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(a.f3242b, buVar.b());
            contentValues.put("type", buVar.c());
            contentValues.put(a.f3244d, buVar.d());
            contentValues.put(a.f3245e, buVar.a());
            if (b(buVar.b(), buVar.a(), buVar.c())) {
                return d().update(a.f3241a, contentValues, "key = ? AND type = ? AND lastupdatetime = ?  ", new String[]{buVar.b(), buVar.c(), buVar.a()});
            }
            return d().insert(a.f3241a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028 A[Catch: all -> 0x0020, PHI: r10
      0x0028: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:14:0x0026, B:19:0x0030, B:27:0x003d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x001c, B:15:0x0028, B:23:0x0036, B:24:0x0039, B:18:0x002d), top: B:35:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.anythink.core.common.h.bu> c(java.lang.String r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3a
            java.lang.String r2 = "sdkconfig"
            java.lang.String r4 = "type = ?"
            java.lang.String[] r5 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3a
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3a
            java.util.List r0 = r9.a(r10)     // Catch: java.lang.Throwable -> L26 java.lang.OutOfMemoryError -> L2d java.lang.Exception -> L3b
            if (r10 == 0) goto L23
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L23
        L20:
            r0 = move-exception
            r10 = r0
            goto L3e
        L23:
            monitor-exit(r9)
            return r0
        L25:
            r10 = r0
        L26:
            if (r10 == 0) goto L40
        L28:
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L40
        L2c:
            r10 = r0
        L2d:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L33
            if (r10 == 0) goto L40
            goto L28
        L33:
            r0 = move-exception
            if (r10 == 0) goto L39
            r10.close()     // Catch: java.lang.Throwable -> L20
        L39:
            throw r0     // Catch: java.lang.Throwable -> L20
        L3a:
            r10 = r0
        L3b:
            if (r10 == 0) goto L40
            goto L28
        L3e:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L20
            throw r10
        L40:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.f.c(java.lang.String):java.util.List");
    }

    public final synchronized int a(String str) {
        if (d() == null) {
            return -1;
        }
        try {
            return d().delete(a.f3241a, "key=?", new String[]{str});
        } catch (Throwable unused) {
            return -1;
        }
    }

    private synchronized List<bu> a(Cursor cursor) {
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0) {
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        bu buVar = new bu();
                        buVar.b(cursor.getString(cursor.getColumnIndex(a.f3242b)));
                        buVar.c(cursor.getString(cursor.getColumnIndex("type")));
                        buVar.d(cursor.getString(cursor.getColumnIndex(a.f3244d)));
                        buVar.a(cursor.getString(cursor.getColumnIndex(a.f3245e)));
                        arrayList.add(buVar);
                    }
                    cursor.close();
                    return arrayList;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028 A[Catch: all -> 0x0020, PHI: r10
      0x0028: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:14:0x0026, B:19:0x0030, B:28:0x003e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x001c, B:15:0x0028, B:24:0x0037, B:25:0x003a, B:18:0x002d), top: B:36:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.anythink.core.common.h.bu> a(java.lang.String r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.lang.String r2 = "sdkconfig"
            java.lang.String r4 = "key = ? and type = ?"
            java.lang.String[] r5 = new java.lang.String[]{r10, r11}     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L25 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3b
            java.util.List r11 = r9.a(r10)     // Catch: java.lang.Throwable -> L26 java.lang.OutOfMemoryError -> L2d java.lang.Exception -> L3c
            if (r10 == 0) goto L23
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L23
        L20:
            r0 = move-exception
            r10 = r0
            goto L3f
        L23:
            monitor-exit(r9)
            return r11
        L25:
            r10 = r0
        L26:
            if (r10 == 0) goto L41
        L28:
            r10.close()     // Catch: java.lang.Throwable -> L20
            goto L41
        L2c:
            r10 = r0
        L2d:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L33
            if (r10 == 0) goto L41
            goto L28
        L33:
            r0 = move-exception
            r11 = r0
            if (r10 == 0) goto L3a
            r10.close()     // Catch: java.lang.Throwable -> L20
        L3a:
            throw r11     // Catch: java.lang.Throwable -> L20
        L3b:
            r10 = r0
        L3c:
            if (r10 == 0) goto L41
            goto L28
        L3f:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L20
            throw r10
        L41:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.f.a(java.lang.String, java.lang.String):java.util.List");
    }
}
