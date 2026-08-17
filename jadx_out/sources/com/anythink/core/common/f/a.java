package com.anythink.core.common.f;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
public class a extends c<com.anythink.core.common.h.f> {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3186a = "1";

    /* renamed from: b, reason: collision with root package name */
    public static final String f3187b = "2";

    /* renamed from: c, reason: collision with root package name */
    public static final String f3188c = "3";

    /* renamed from: d, reason: collision with root package name */
    public static final String f3189d = "4";

    /* renamed from: g, reason: collision with root package name */
    private static volatile a f3190g;

    /* renamed from: f, reason: collision with root package name */
    private final String f3191f;

    /* renamed from: com.anythink.core.common.f.a$a, reason: collision with other inner class name */
    public static class C0051a implements BaseColumns {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3204a = "ad_frequency";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3205b = "event_type";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3206c = "app";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3207d = "format";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3208e = "network_id";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3209f = "network_format";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3210g = "placement_id";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3211h = "source_id";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3212i = "extra";

        /* renamed from: j, reason: collision with root package name */
        public static final String f3213j = "month";

        /* renamed from: k, reason: collision with root package name */
        public static final String f3214k = "day";

        /* renamed from: l, reason: collision with root package name */
        public static final String f3215l = "hour";

        /* renamed from: m, reason: collision with root package name */
        public static final String f3216m = "time_stamp";

        /* renamed from: n, reason: collision with root package name */
        public static final String f3217n = "req_num";

        /* renamed from: o, reason: collision with root package name */
        public static final String f3218o = "rule_id";

        /* renamed from: p, reason: collision with root package name */
        public static final String f3219p = "fail_count";

        /* renamed from: q, reason: collision with root package name */
        public static final String f3220q = "next_req_timestamp";

        /* renamed from: r, reason: collision with root package name */
        public static final String f3221r = "CREATE TABLE IF NOT EXISTS ad_frequency(_id INTEGER PRIMARY KEY AUTOINCREMENT ,event_type TEXT ,app TEXT ,network_id TEXT ,format TEXT ,network_format TEXT ,placement_id TEXT ,source_id TEXT ,extra TEXT ,month INTEGER ,day INTEGER ,hour INTEGER , req_num INTEGER , time_stamp INTEGER)";

        /* renamed from: s, reason: collision with root package name */
        public static final String f3222s = "ALTER TABLE ad_frequency ADD COLUMN rule_id INTEGER;";

        /* renamed from: t, reason: collision with root package name */
        public static final String f3223t = "ALTER TABLE ad_frequency ADD COLUMN fail_count INTEGER;";

        /* renamed from: u, reason: collision with root package name */
        public static final String f3224u = "ALTER TABLE ad_frequency ADD COLUMN next_req_timestamp INTEGER;";
    }

    private a(d dVar) {
        super(dVar);
        this.f3191f = "AdFrequencyDao";
    }

    public static a a(d dVar) {
        if (f3190g == null) {
            synchronized (a.class) {
                try {
                    if (f3190g == null) {
                        f3190g = new a(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3190g;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[Catch: all -> 0x0040, DONT_GENERATE, PHI: r0 r4
      0x003c: PHI (r0v2 com.anythink.core.common.h.f) = (r0v0 com.anythink.core.common.h.f), (r0v3 com.anythink.core.common.h.f) binds: [B:19:0x0047, B:11:0x003a] A[DONT_GENERATE, DONT_INLINE]
      0x003c: PHI (r4v4 android.database.Cursor) = (r4v2 android.database.Cursor), (r4v8 android.database.Cursor) binds: [B:19:0x0047, B:11:0x003a] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:12:0x003c, B:21:0x004a, B:25:0x004f, B:26:0x0052, B:18:0x0044), top: B:29:0x0044, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.h.f c(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L42
            java.lang.String r2 = "select * from ad_frequency where event_type = '2' and %s = '"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L42
            r1.append(r4)     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = "' order by time_stamp DESC limit 1"
            r1.append(r4)     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L42
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = java.lang.String.format(r4, r5)     // Catch: java.lang.Throwable -> L42
            android.database.sqlite.SQLiteDatabase r5 = r3.c()     // Catch: java.lang.Throwable -> L42
            android.database.Cursor r4 = r5.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L42
            java.util.List r5 = a(r4)     // Catch: java.lang.Throwable -> L38
            boolean r1 = r5.isEmpty()     // Catch: java.lang.Throwable -> L38
            if (r1 != 0) goto L3a
            r1 = 0
            java.lang.Object r5 = r5.get(r1)     // Catch: java.lang.Throwable -> L38
            com.anythink.core.common.h.f r5 = (com.anythink.core.common.h.f) r5     // Catch: java.lang.Throwable -> L38
            r0 = r5
            goto L3a
        L38:
            r5 = move-exception
            goto L44
        L3a:
            if (r4 == 0) goto L4a
        L3c:
            r4.close()     // Catch: java.lang.Throwable -> L40
            goto L4a
        L40:
            r4 = move-exception
            goto L53
        L42:
            r5 = move-exception
            r4 = r0
        L44:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r4 == 0) goto L4a
            goto L3c
        L4a:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L40
            return r0
        L4c:
            r5 = move-exception
            if (r4 == 0) goto L52
            r4.close()     // Catch: java.lang.Throwable -> L40
        L52:
            throw r5     // Catch: java.lang.Throwable -> L40
        L53:
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.a.c(java.lang.String, java.lang.String):com.anythink.core.common.h.f");
    }

    @SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    public final com.anythink.core.common.h.f d(String str, String str2) {
        Throwable th;
        com.anythink.core.common.h.f fVar;
        com.anythink.core.common.h.f fVar2;
        synchronized (this) {
            Cursor cursor = null;
            fVar2 = null;
            try {
                Cursor cursorQuery = c().query(C0051a.f3204a, null, String.format("event_type = ? and %s = ?", str2), new String[]{"1", str}, null, null, null, "1");
                while (cursorQuery.moveToNext()) {
                    try {
                        String str3 = str2;
                        fVar2 = new com.anythink.core.common.h.f(cursorQuery.getString(cursorQuery.getColumnIndex("event_type")), cursorQuery.getString(cursorQuery.getColumnIndex(str2)), str3, cursorQuery.getLong(cursorQuery.getColumnIndex(C0051a.f3216m)), cursorQuery.getInt(cursorQuery.getColumnIndex(C0051a.f3217n)));
                        str2 = str3;
                    } catch (Throwable th2) {
                        th = th2;
                        com.anythink.core.common.h.f fVar3 = fVar2;
                        cursor = cursorQuery;
                        fVar = fVar3;
                        try {
                            th.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                            }
                            fVar2 = fVar;
                            return fVar2;
                        } finally {
                        }
                    }
                }
                cursorQuery.close();
            } catch (Throwable th3) {
                th = th3;
                fVar = null;
            }
        }
        return fVar2;
    }

    public final void e(String str, String str2) {
        synchronized (this) {
            try {
            } finally {
            }
            if (d() == null) {
                return;
            }
            d().delete(C0051a.f3204a, "event_type = ? and (month != ? or day != ?)", new String[]{"2", str, str2});
        }
    }

    public final void b(com.anythink.core.common.h.f fVar) {
        synchronized (this) {
            try {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("event_type", "2");
                    contentValues.put("app", fVar.j());
                    contentValues.put("placement_id", fVar.d());
                    contentValues.put("network_id", fVar.b());
                    contentValues.put("format", fVar.c());
                    contentValues.put(C0051a.f3209f, fVar.k());
                    contentValues.put(C0051a.f3211h, fVar.e());
                    contentValues.put(C0051a.f3213j, Integer.valueOf(fVar.f()));
                    contentValues.put(C0051a.f3214k, Integer.valueOf(fVar.g()));
                    contentValues.put(C0051a.f3215l, Integer.valueOf(fVar.h()));
                    contentValues.put(C0051a.f3216m, Long.valueOf(fVar.i()));
                    d().insert(C0051a.f3204a, null, contentValues);
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(final com.anythink.core.common.h.f fVar) {
        try {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8130m, new Runnable() { // from class: com.anythink.core.common.f.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.b(fVar);
                }
            }));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final long a(String str, String str2) {
        synchronized (this) {
            try {
                Date date = new Date();
                Cursor cursorRawQuery = null;
                try {
                    cursorRawQuery = c().rawQuery("SELECT COUNT(*) FROM ad_frequency WHERE event_type = ? AND " + str2 + " = ? AND month = ? AND day = ?", new String[]{"2", str, com.anythink.core.a.b.a(date), com.anythink.core.a.b.b(date)});
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                        if (cursorRawQuery != null) {
                        }
                    } finally {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    }
                }
                if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
                    return 0L;
                }
                long j2 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.lang.String r5, java.lang.String r6, int r7, long r8) {
        /*
            r4 = this;
            monitor-enter(r4)
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = "event_type"
            java.lang.String r2 = "1"
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = "req_num"
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L36
            r0.put(r1, r7)     // Catch: java.lang.Throwable -> L36
            java.lang.String r7 = "time_stamp"
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L36
            r0.put(r7, r8)     // Catch: java.lang.Throwable -> L36
            int r7 = r6.hashCode()     // Catch: java.lang.Throwable -> L36
            r8 = 3
            r9 = 5
            r1 = 1
            r2 = 2
            r3 = 4
            switch(r7) {
                case -1928631512: goto L61;
                case -1698410561: goto L57;
                case -1268779017: goto L4d;
                case -478232372: goto L43;
                case 96801: goto L39;
                case 1224358069: goto L2c;
                default: goto L2b;
            }     // Catch: java.lang.Throwable -> L36
        L2b:
            goto L6b
        L2c:
            java.lang.String r7 = "placement_id"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = r3
            goto L6c
        L36:
            r5 = move-exception
            goto La7
        L39:
            java.lang.String r7 = "app"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = 0
            goto L6c
        L43:
            java.lang.String r7 = "network_id"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = r2
            goto L6c
        L4d:
            java.lang.String r7 = "format"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = r1
            goto L6c
        L57:
            java.lang.String r7 = "source_id"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = r9
            goto L6c
        L61:
            java.lang.String r7 = "network_format"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L36
            if (r6 == 0) goto L6b
            r6 = r8
            goto L6c
        L6b:
            r6 = -1
        L6c:
            if (r6 == 0) goto L97
            if (r6 == r1) goto L91
            if (r6 == r2) goto L8b
            if (r6 == r8) goto L85
            if (r6 == r3) goto L7f
            if (r6 == r9) goto L79
            goto L9c
        L79:
            java.lang.String r6 = "source_id"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
            goto L9c
        L7f:
            java.lang.String r6 = "placement_id"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
            goto L9c
        L85:
            java.lang.String r6 = "network_format"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
            goto L9c
        L8b:
            java.lang.String r6 = "network_id"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
            goto L9c
        L91:
            java.lang.String r6 = "format"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
            goto L9c
        L97:
            java.lang.String r6 = "app"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L36
        L9c:
            android.database.sqlite.SQLiteDatabase r5 = r4.d()     // Catch: java.lang.Throwable -> L36
            java.lang.String r6 = "ad_frequency"
            r7 = 0
            r5.insert(r6, r7, r0)     // Catch: java.lang.Throwable -> L36
            goto Laa
        La7:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> Lae
        Laa:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Lac
            return
        Lac:
            r5 = move-exception
            goto Lb0
        Lae:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> Lac
        Lb0:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.a.c(java.lang.String, java.lang.String, int, long):void");
    }

    private void d(com.anythink.core.common.h.f fVar) {
        synchronized (this) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0051a.f3216m, Long.valueOf(fVar.i()));
                contentValues.put(C0051a.f3220q, Long.valueOf(fVar.n()));
                contentValues.put(C0051a.f3219p, Integer.valueOf(fVar.m()));
                contentValues.put(C0051a.f3217n, Integer.valueOf(fVar.f4252a));
                d().update(C0051a.f3204a, contentValues, String.format("%s = ? and %s = ? and %s = ?", "event_type", C0051a.f3211h, C0051a.f3218o), new String[]{fVar.a(), fVar.e(), String.valueOf(fVar.l())});
            } catch (Throwable unused) {
            }
        }
    }

    public final long b(String str, String str2) {
        synchronized (this) {
            try {
                Date date = new Date();
                Cursor cursorRawQuery = null;
                try {
                    cursorRawQuery = c().rawQuery("SELECT COUNT(*) FROM ad_frequency WHERE event_type = ? AND " + str2 + " = ? AND month = ? AND day = ? AND hour = ?", new String[]{"2", str, com.anythink.core.a.b.a(date), com.anythink.core.a.b.b(date), com.anythink.core.a.b.c(date)});
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                        if (cursorRawQuery != null) {
                        }
                    } finally {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    }
                }
                if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
                    return 0L;
                }
                long j2 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    private static List<com.anythink.core.common.h.f> a(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    arrayList.add(new com.anythink.core.common.h.f(cursor.getString(cursor.getColumnIndex("event_type")), cursor.getString(cursor.getColumnIndex("app")), cursor.getString(cursor.getColumnIndex("network_id")), cursor.getString(cursor.getColumnIndex("format")), cursor.getString(cursor.getColumnIndex(C0051a.f3209f)), cursor.getString(cursor.getColumnIndex("placement_id")), cursor.getString(cursor.getColumnIndex(C0051a.f3211h)), cursor.getInt(cursor.getColumnIndex(C0051a.f3213j)), cursor.getInt(cursor.getColumnIndex(C0051a.f3214k)), cursor.getInt(cursor.getColumnIndex(C0051a.f3215l)), cursor.getLong(cursor.getColumnIndex(C0051a.f3216m))));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    private void c(com.anythink.core.common.h.f fVar) {
        synchronized (this) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("event_type", fVar.a());
                contentValues.put(C0051a.f3218o, Integer.valueOf(fVar.l()));
                contentValues.put(C0051a.f3211h, fVar.e());
                contentValues.put(C0051a.f3216m, Long.valueOf(fVar.i()));
                contentValues.put(C0051a.f3220q, Long.valueOf(fVar.n()));
                contentValues.put(C0051a.f3219p, Integer.valueOf(fVar.m()));
                contentValues.put(C0051a.f3217n, Integer.valueOf(fVar.f4252a));
                d().insert(C0051a.f3204a, null, contentValues);
            } catch (Throwable unused) {
            }
        }
    }

    public final void b(final String str, final String str2, final int i2, final long j2) {
        try {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8131n, new Runnable() { // from class: com.anythink.core.common.f.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.d(str, str2) != null) {
                        a.this.a(str, str2, i2, j2);
                    } else {
                        a.this.c(str, str2, i2, j2);
                    }
                }
            }));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static /* synthetic */ void b(a aVar, com.anythink.core.common.h.f fVar) {
        synchronized (aVar) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("event_type", fVar.a());
                contentValues.put(C0051a.f3218o, Integer.valueOf(fVar.l()));
                contentValues.put(C0051a.f3211h, fVar.e());
                contentValues.put(C0051a.f3216m, Long.valueOf(fVar.i()));
                contentValues.put(C0051a.f3220q, Long.valueOf(fVar.n()));
                contentValues.put(C0051a.f3219p, Integer.valueOf(fVar.m()));
                contentValues.put(C0051a.f3217n, Integer.valueOf(fVar.f4252a));
                aVar.d().insert(C0051a.f3204a, null, contentValues);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(String str, String str2, int i2, long j2) {
        synchronized (this) {
            try {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(C0051a.f3217n, Integer.valueOf(i2));
                    contentValues.put(C0051a.f3216m, Long.valueOf(j2));
                    d().update(C0051a.f3204a, contentValues, String.format("event_type = ? and %s = ?", str2), new String[]{"1", str});
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Pair<String, String[]> c(List<Pair<String, String>> list) {
        String[] strArr;
        StringBuilder sb = new StringBuilder();
        if (list == null || list.isEmpty()) {
            strArr = null;
        } else {
            strArr = new String[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                Pair<String, String> pair = list.get(i2);
                sb.append((String) pair.first);
                if (i2 != list.size() - 1) {
                    sb.append(" and ");
                }
                strArr[i2] = (String) pair.second;
            }
        }
        return new Pair<>(sb.toString(), strArr);
    }

    public final void a(final com.anythink.core.common.h.f fVar, final boolean z2) {
        if (fVar == null) {
            return;
        }
        try {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8132o, new Runnable() { // from class: com.anythink.core.common.f.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (z2) {
                        a.a(a.this, fVar);
                    } else {
                        a.b(a.this, fVar);
                    }
                }
            }));
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    public final List<com.anythink.core.common.h.f> a(List<Pair<String, String>> list, int i2) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Pair<String, String[]> pairC = c(list);
                cursorQuery = i2 > 0 ? c().query(C0051a.f3204a, null, (String) pairC.first, (String[]) pairC.second, null, null, "time_stamp DESC", String.valueOf(i2)) : c().query(C0051a.f3204a, null, (String) pairC.first, (String[]) pairC.second, null, null, "time_stamp DESC", null);
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("event_type"));
                        long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex(C0051a.f3216m));
                        int i3 = cursorQuery.getInt(cursorQuery.getColumnIndex(C0051a.f3217n));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(C0051a.f3211h));
                        int i4 = cursorQuery.getInt(cursorQuery.getColumnIndex(C0051a.f3218o));
                        int i5 = cursorQuery.getInt(cursorQuery.getColumnIndex(C0051a.f3219p));
                        long j3 = cursorQuery.getLong(cursorQuery.getColumnIndex(C0051a.f3220q));
                        com.anythink.core.common.h.f fVar = new com.anythink.core.common.h.f(string, string2, C0051a.f3211h, j2, i3);
                        fVar.a(i4);
                        fVar.b(i5);
                        fVar.b(j3);
                        arrayList.add(fVar);
                    } catch (Throwable unused) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return arrayList;
                    }
                }
            } catch (Throwable unused2) {
                cursorQuery = null;
            }
            try {
                cursorQuery.close();
            } catch (Throwable unused3) {
            }
        }
        return arrayList;
    }

    public final void a(final List<Pair<String, String>> list) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8129l, new Runnable() { // from class: com.anythink.core.common.f.a.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (this) {
                    try {
                        Pair pairC = a.c((List<Pair<String, String>>) list);
                        a.this.d().delete(C0051a.f3204a, (String) pairC.first, (String[]) pairC.second);
                    } catch (Throwable unused) {
                    }
                }
            }
        }));
    }

    public static /* synthetic */ void a(a aVar, com.anythink.core.common.h.f fVar) {
        synchronized (aVar) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(C0051a.f3216m, Long.valueOf(fVar.i()));
                contentValues.put(C0051a.f3220q, Long.valueOf(fVar.n()));
                contentValues.put(C0051a.f3219p, Integer.valueOf(fVar.m()));
                contentValues.put(C0051a.f3217n, Integer.valueOf(fVar.f4252a));
                aVar.d().update(C0051a.f3204a, contentValues, String.format("%s = ? and %s = ? and %s = ?", "event_type", C0051a.f3211h, C0051a.f3218o), new String[]{fVar.a(), fVar.e(), String.valueOf(fVar.l())});
            } catch (Throwable unused) {
            }
        }
    }
}
