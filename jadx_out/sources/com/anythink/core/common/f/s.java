package com.anythink.core.common.f;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class s extends c<com.anythink.core.common.a.m> {

    /* renamed from: b, reason: collision with root package name */
    private static volatile s f3397b;

    /* renamed from: a, reason: collision with root package name */
    private final String f3398a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3399a = "video_res_cache_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3400b = "video_url";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3401c = "file_path";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3402d = "ready_rate";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3403e = "download_size";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3404f = "total_size";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3405g = "update_time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3406h = "CREATE TABLE IF NOT EXISTS video_res_cache_info(video_url TEXT, file_path TEXT, ready_rate INTEGER, download_size INTEGER, total_size INTEGER, update_time INTEGER )";
    }

    private s(d dVar) {
        super(dVar);
        this.f3398a = s.class.getSimpleName();
    }

    public static s a(d dVar) {
        if (f3397b == null) {
            synchronized (p.class) {
                try {
                    if (f3397b == null) {
                        f3397b = new s(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3397b;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033 A[PHI: r11
      0x0033: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v4 android.database.Cursor) binds: [B:15:0x0038, B:12:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean d(java.lang.String r11) {
        /*
            r10 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            android.database.sqlite.SQLiteDatabase r2 = r10.c()     // Catch: java.lang.Throwable -> L37
            java.lang.String r3 = "video_res_cache_info"
            java.lang.String r0 = "video_url"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L37
            java.lang.String r5 = "video_url=?"
            java.lang.String[] r6 = new java.lang.String[]{r11}     // Catch: java.lang.Throwable -> L37
            r8 = 0
            r9 = 0
            r7 = 0
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L37
            if (r11 == 0) goto L31
            int r0 = r11.getCount()     // Catch: java.lang.Throwable -> L38
            if (r0 <= 0) goto L31
            r11.close()     // Catch: java.lang.Throwable -> L38
            r11.close()
            r11 = 1
            return r11
        L31:
            if (r11 == 0) goto L3b
        L33:
            r11.close()
            goto L3b
        L37:
            r11 = 0
        L38:
            if (r11 == 0) goto L3b
            goto L33
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.s.d(java.lang.String):boolean");
    }

    private void e() {
        try {
            Cursor cursorQuery = c().query(a.f3399a, null, null, null, null, null, null);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Throwable unused) {
        }
    }

    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
            d().update(a.f3399a, contentValues, "video_url = ? ", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public final void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            d().delete(a.f3399a, "video_url=?", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public final List<com.anythink.core.common.a.m> b() {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        try {
            cursorQuery = c().query(a.f3399a, null, null, null, null, null, "update_time DESC");
        } catch (Throwable unused) {
            cursorQuery = null;
        }
        try {
            if (cursorQuery.getCount() > 0 && cursorQuery.moveToPosition(((int) Math.round(((cursorQuery.getCount() * 1.0d) + 1.0d) / 2.0d)) - 1)) {
                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                do {
                    com.anythink.core.common.a.m mVar = new com.anythink.core.common.a.m();
                    mVar.a(cursorQuery.getString(cursorQuery.getColumnIndex(a.f3400b)));
                    mVar.b(cursorQuery.getString(cursorQuery.getColumnIndex("file_path")));
                    mVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex(a.f3402d)));
                    mVar.b(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3403e)));
                    mVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3404f)));
                    mVar.c(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time")));
                    arrayList.add(mVar);
                } while (cursorQuery.moveToNext());
                d().delete(a.f3399a, "update_time<=?", new String[]{String.valueOf(j2)});
            }
        } catch (Throwable unused2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        }
        cursorQuery.close();
        return arrayList;
    }

    public final synchronized void a(String str, String str2, long j2, long j3, int i2) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(a.f3400b, str);
                    contentValues.put("file_path", str2);
                    contentValues.put(a.f3402d, Integer.valueOf(i2));
                    contentValues.put(a.f3403e, Long.valueOf(j3));
                    contentValues.put(a.f3404f, Long.valueOf(j2));
                    contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
                    if (d(str)) {
                        d().update(a.f3399a, contentValues, "video_url = ? ", new String[]{str});
                    } else {
                        d().insert(a.f3399a, null, contentValues);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final com.anythink.core.common.a.m a(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(a.f3399a, null, "video_url=?", new String[]{str}, null, null, null);
            try {
                if (cursorQuery.moveToNext()) {
                    com.anythink.core.common.a.m mVar = new com.anythink.core.common.a.m();
                    mVar.a(str);
                    mVar.b(cursorQuery.getString(cursorQuery.getColumnIndex("file_path")));
                    mVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex(a.f3402d)));
                    mVar.b(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3403e)));
                    mVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f3404f)));
                    mVar.c(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time")));
                    cursorQuery.close();
                    cursorQuery.close();
                    return mVar;
                }
            } catch (Throwable unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        cursorQuery.close();
        return null;
    }

    public final long a() {
        Cursor cursorQuery;
        try {
            cursorQuery = c().query(a.f3399a, new String[]{"sum(download_size)"}, null, null, null, null, null);
        } catch (Throwable unused) {
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToNext()) {
                long j2 = cursorQuery.getLong(0);
                cursorQuery.close();
                cursorQuery.close();
                return j2;
            }
        } catch (Throwable unused2) {
            if (cursorQuery == null) {
                return 0L;
            }
            cursorQuery.close();
            return 0L;
        }
        cursorQuery.close();
        return 0L;
    }
}
