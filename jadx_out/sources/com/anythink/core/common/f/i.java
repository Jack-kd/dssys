package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class i extends c<com.anythink.core.common.a.k> {

    /* renamed from: c, reason: collision with root package name */
    private static volatile i f3298c;

    /* renamed from: a, reason: collision with root package name */
    private final String f3299a;

    /* renamed from: b, reason: collision with root package name */
    private final long f3300b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3301a = "dsp_offer_show_record";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3302b = "dsp_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3303c = "dsp_offer_id";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3304d = "show_limit";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3305e = "show_count";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3306f = "create_time";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3307g = "last_update_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3308h = "CREATE TABLE IF NOT EXISTS dsp_offer_show_record(dsp_id TEXT ,dsp_offer_id TEXT ,show_limit INTEGER ,show_count INTEGER ,create_time INTEGER ,last_update_time INTEGER)";
    }

    private i(d dVar) {
        super(dVar);
        this.f3299a = i.class.getName();
        this.f3300b = 86400000L;
    }

    private static i a(d dVar) {
        if (f3298c == null) {
            synchronized (i.class) {
                try {
                    if (f3298c == null) {
                        f3298c = new i(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3298c;
    }

    private synchronized long b(com.anythink.core.common.a.k kVar) {
        if (d() != null && kVar != null) {
            if (kVar.c() <= 0) {
                return -1L;
            }
            com.anythink.core.common.a.k kVarA = a(kVar.a(), kVar.b());
            if (kVarA != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("dsp_id", kVar.a());
                    contentValues.put("dsp_offer_id", kVar.b());
                    contentValues.put(a.f3304d, Integer.valueOf(kVar.c()));
                    contentValues.put("show_count", Integer.valueOf(kVarA.d() + 1));
                    contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                    return d().update(a.f3301a, contentValues, "dsp_id = ? and dsp_offer_id = ? ", new String[]{kVar.a(), kVar.b()});
                } catch (Exception unused) {
                }
            }
            return -1L;
        }
        return -1L;
    }

    private synchronized long a(com.anythink.core.common.a.k kVar) {
        if (d() != null && kVar != null) {
            if (kVar.c() <= 0) {
                return -1L;
            }
            if (a(kVar.a(), kVar.b()) == null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("dsp_id", kVar.a());
                    contentValues.put("dsp_offer_id", kVar.b());
                    contentValues.put(a.f3304d, Integer.valueOf(kVar.c()));
                    contentValues.put("show_count", (Integer) 0);
                    contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                    contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                    return d().insert(a.f3301a, null, contentValues);
                } catch (Exception unused) {
                }
            }
            return -1L;
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[Catch: all -> 0x002f, PHI: r10
      0x0032: PHI (r10v8 android.database.Cursor) = 
      (r10v5 android.database.Cursor)
      (r10v6 android.database.Cursor)
      (r10v7 android.database.Cursor)
      (r10v9 android.database.Cursor)
     binds: [B:16:0x0037, B:20:0x003e, B:29:0x004c, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #7 {, blocks: (B:8:0x002a, B:13:0x0032, B:25:0x0045, B:26:0x0048, B:19:0x003b), top: B:39:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized com.anythink.core.common.a.k a(java.lang.String r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L36 java.lang.OutOfMemoryError -> L3a java.lang.Exception -> L49
            java.lang.String r2 = "dsp_offer_show_record"
            java.lang.String r4 = "dsp_id = ?  AND dsp_offer_id = ? "
            java.lang.String[] r5 = new java.lang.String[]{r10, r11}     // Catch: java.lang.Throwable -> L36 java.lang.OutOfMemoryError -> L3a java.lang.Exception -> L49
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L36 java.lang.OutOfMemoryError -> L3a java.lang.Exception -> L49
            java.util.List r11 = r9.a(r10)     // Catch: java.lang.Throwable -> L37 java.lang.OutOfMemoryError -> L3b java.lang.Exception -> L4a
            r10.close()     // Catch: java.lang.Throwable -> L37 java.lang.OutOfMemoryError -> L3b java.lang.Exception -> L4a
            int r1 = r11.size()     // Catch: java.lang.Throwable -> L37 java.lang.OutOfMemoryError -> L3b java.lang.Exception -> L4a
            if (r1 <= 0) goto L32
            r1 = 0
            java.lang.Object r11 = r11.get(r1)     // Catch: java.lang.Throwable -> L37 java.lang.OutOfMemoryError -> L3b java.lang.Exception -> L4a
            com.anythink.core.common.a.k r11 = (com.anythink.core.common.a.k) r11     // Catch: java.lang.Throwable -> L37 java.lang.OutOfMemoryError -> L3b java.lang.Exception -> L4a
            r10.close()     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r9)
            return r11
        L2f:
            r0 = move-exception
            r10 = r0
            goto L4d
        L32:
            r10.close()     // Catch: java.lang.Throwable -> L2f
            goto L4f
        L36:
            r10 = r0
        L37:
            if (r10 == 0) goto L4f
            goto L32
        L3a:
            r10 = r0
        L3b:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L41
            if (r10 == 0) goto L4f
            goto L32
        L41:
            r0 = move-exception
            r11 = r0
            if (r10 == 0) goto L48
            r10.close()     // Catch: java.lang.Throwable -> L2f
        L48:
            throw r11     // Catch: java.lang.Throwable -> L2f
        L49:
            r10 = r0
        L4a:
            if (r10 == 0) goto L4f
            goto L32
        L4d:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L2f
            throw r10
        L4f:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.i.a(java.lang.String, java.lang.String):com.anythink.core.common.a.k");
    }

    private synchronized List<com.anythink.core.common.a.k> a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.anythink.core.common.a.k kVar = new com.anythink.core.common.a.k();
                        kVar.a(cursor.getString(cursor.getColumnIndex("dsp_id")));
                        kVar.b(cursor.getString(cursor.getColumnIndex("dsp_offer_id")));
                        kVar.a(cursor.getInt(cursor.getColumnIndex(a.f3304d)));
                        kVar.b(cursor.getInt(cursor.getColumnIndex("show_count")));
                        arrayList.add(kVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    private synchronized List<com.anythink.core.common.a.i> a(int i2) {
        ArrayList arrayList = new ArrayList();
        if (i2 <= 0) {
            return arrayList;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = c().query(a.f3301a, null, "show_count > show_limit", null, null, null, "last_update_time DESC", String.valueOf(i2));
                List<com.anythink.core.common.a.k> listA = a(cursorQuery);
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

    private void a() {
        try {
            String str = "create_time < " + (System.currentTimeMillis() - 86400000);
            if (d() == null) {
                return;
            }
            d().delete(a.f3301a, str, null);
        } catch (Exception unused) {
        }
    }
}
