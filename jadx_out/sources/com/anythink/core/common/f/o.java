package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.h.bg;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class o extends c<bg> {

    /* renamed from: b, reason: collision with root package name */
    private static o f3361b;

    /* renamed from: a, reason: collision with root package name */
    private final String f3362a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3363a = "offer_action_record";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3364b = "adsource_id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3365c = "type";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3366d = "unit_id";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3367e = "click_count";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3368f = "show_count";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3369g = "expire_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3370h = "CREATE TABLE IF NOT EXISTS offer_action_record(adsource_id TEXT ,type INTEGER ,unit_id TEXT ,click_count INTEGER ,show_count INTEGER ,expire_time INTEGER )";
    }

    private o(d dVar) {
        super(dVar);
        this.f3362a = o.class.getName();
    }

    private static o a(d dVar) {
        if (f3361b == null) {
            synchronized (o.class) {
                try {
                    if (f3361b == null) {
                        f3361b = new o(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3361b;
    }

    private static String b(int i2) {
        if (i2 <= 0) {
            throw new RuntimeException("No placeholders");
        }
        StringBuilder sb = new StringBuilder((i2 * 2) - 1);
        sb.append("?");
        for (int i3 = 1; i3 < i2; i3++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    private boolean c(String str, int i2, String str2) {
        Cursor cursorQuery = c().query(a.f3363a, null, "adsource_id = ? and type = ? and unit_id = ?", new String[]{str, String.valueOf(i2), str2}, null, null, null);
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

    private synchronized long b(String str, int i2, String str2) {
        try {
            if (d() == null) {
                return -1L;
            }
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("adsource_id", str);
                contentValues.put("type", Integer.valueOf(i2));
                contentValues.put("unit_id", str2);
                bg bgVarA = a(i2, str2);
                if (bgVarA != null) {
                    contentValues.put(a.f3367e, Integer.valueOf(bgVarA.d()));
                    contentValues.put("show_count", Integer.valueOf(bgVarA.c()));
                    contentValues.put(a.f3369g, Long.valueOf(bgVarA.b()));
                } else {
                    contentValues.put(a.f3367e, (Integer) 0);
                    contentValues.put("show_count", (Integer) 0);
                    contentValues.put(a.f3369g, (Integer) (-1));
                }
                return d().insert(a.f3363a, null, contentValues);
            } catch (Exception unused) {
                return -1L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(int i2, String str, int i3, int i4) {
        bg bgVarA = a(i2, str);
        if (bgVarA != null) {
            bgVarA.b(bgVarA.d() + i3);
            bgVarA.a(bgVarA.c() + i4);
            a(bgVarA);
        }
    }

    private synchronized void a(int i2, String str, long j2) {
        bg bgVarA = a(i2, str);
        if (bgVarA != null) {
            bgVarA.a(j2);
            a(bgVarA);
        }
    }

    private synchronized List<bg> a(int i2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = c().query(a.f3363a, null, "type = ? and expire_time > ?", new String[]{String.valueOf(i2), String.valueOf(System.currentTimeMillis())}, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    while (cursorQuery.moveToNext()) {
                        bg bgVar = new bg(i2, cursorQuery.getString(cursorQuery.getColumnIndex("unit_id")));
                        bgVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex(a.f3367e)));
                        bgVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("show_count")));
                        bgVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3369g)));
                        arrayList.add(bgVar);
                    }
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
        return arrayList;
    }

    private boolean b(int i2, String str) {
        Cursor cursorQuery = c().query(a.f3363a, null, "type = ? and unit_id = ?", new String[]{String.valueOf(i2), str}, null, null, null);
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

    private synchronized List<bg> a(List<String> list, int i2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        b(list.size());
        Cursor cursorQuery = null;
        try {
            try {
                String[] strArr = new String[list.size() + 2];
                list.toArray(strArr);
                strArr[list.size()] = String.valueOf(i2);
                strArr[list.size() + 1] = String.valueOf(System.currentTimeMillis());
                cursorQuery = c().query(a.f3363a, null, "adsource_id IN (" + b(list.size()) + ") and type = ? and expire_time > ?", strArr, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    while (cursorQuery.moveToNext()) {
                        bg bgVar = new bg(i2, cursorQuery.getString(cursorQuery.getColumnIndex("unit_id")));
                        bgVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex(a.f3367e)));
                        bgVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("show_count")));
                        bgVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3369g)));
                        arrayList.add(bgVar);
                    }
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
        return arrayList;
    }

    private synchronized long a(bg bgVar) {
        if (d() == null || bgVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(bgVar.e()));
            contentValues.put("unit_id", bgVar.a());
            contentValues.put(a.f3367e, Integer.valueOf(bgVar.d()));
            contentValues.put("show_count", Integer.valueOf(bgVar.c()));
            contentValues.put(a.f3369g, Long.valueOf(bgVar.b()));
            return d().update(a.f3363a, contentValues, "type = ? and unit_id = ?", new String[]{String.valueOf(bgVar.e()), bgVar.a()});
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[Catch: all -> 0x0059, PHI: r1
      0x0066: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:19:0x0064, B:24:0x006e, B:33:0x007c] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #7 {, blocks: (B:9:0x0054, B:15:0x005e, B:20:0x0066, B:29:0x0075, B:30:0x0078, B:23:0x006b), top: B:43:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized com.anythink.core.common.h.bg a(int r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.c()     // Catch: java.lang.Throwable -> L63 java.lang.OutOfMemoryError -> L6a java.lang.Exception -> L79
            java.lang.String r2 = "offer_action_record"
            java.lang.String r4 = "type=? and unit_id = ?"
            java.lang.String r3 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L63 java.lang.OutOfMemoryError -> L6a java.lang.Exception -> L79
            java.lang.String[] r5 = new java.lang.String[]{r3, r11}     // Catch: java.lang.Throwable -> L63 java.lang.OutOfMemoryError -> L6a java.lang.Exception -> L79
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L63 java.lang.OutOfMemoryError -> L6a java.lang.Exception -> L79
            if (r1 == 0) goto L5c
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            if (r2 <= 0) goto L5c
            r1.moveToNext()     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            com.anythink.core.common.h.bg r2 = new com.anythink.core.common.h.bg     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r2.<init>(r10, r11)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            java.lang.String r10 = "click_count"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            int r10 = r1.getInt(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r2.b(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            java.lang.String r10 = "show_count"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            int r10 = r1.getInt(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r2.a(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            java.lang.String r10 = "expire_time"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            long r10 = r1.getLong(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r2.a(r10)     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r1.close()     // Catch: java.lang.Throwable -> L64 java.lang.OutOfMemoryError -> L6b java.lang.Exception -> L7a
            r1.close()     // Catch: java.lang.Throwable -> L59
            monitor-exit(r9)
            return r2
        L59:
            r0 = move-exception
            r10 = r0
            goto L7d
        L5c:
            if (r1 == 0) goto L61
            r1.close()     // Catch: java.lang.Throwable -> L59
        L61:
            monitor-exit(r9)
            return r0
        L63:
            r1 = r0
        L64:
            if (r1 == 0) goto L7f
        L66:
            r1.close()     // Catch: java.lang.Throwable -> L59
            goto L7f
        L6a:
            r1 = r0
        L6b:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L71
            if (r1 == 0) goto L7f
            goto L66
        L71:
            r0 = move-exception
            r10 = r0
            if (r1 == 0) goto L78
            r1.close()     // Catch: java.lang.Throwable -> L59
        L78:
            throw r10     // Catch: java.lang.Throwable -> L59
        L79:
            r1 = r0
        L7a:
            if (r1 == 0) goto L7f
            goto L66
        L7d:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L59
            throw r10
        L7f:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.o.a(int, java.lang.String):com.anythink.core.common.h.bg");
    }

    private synchronized void a(String str, int i2, String str2) {
        try {
            Cursor cursorQuery = c().query(a.f3363a, null, "adsource_id = ? and type = ? and unit_id = ?", new String[]{str, String.valueOf(i2), str2}, null, null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.close();
            } else {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                b(str, i2, str2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
