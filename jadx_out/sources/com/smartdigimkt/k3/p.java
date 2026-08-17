package com.smartdigimkt.k3;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.o;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class p extends b {

    /* renamed from: c, reason: collision with root package name */
    public static p f41389c;

    /* renamed from: b, reason: collision with root package name */
    public final String f41390b;

    public p(d dVar) {
        super(dVar);
        this.f41390b = p.class.getName();
    }

    public static p a(d dVar) {
        if (f41389c == null) {
            synchronized (p.class) {
                try {
                    if (f41389c == null) {
                        f41389c = new p(dVar);
                    }
                } finally {
                }
            }
        }
        return f41389c;
    }

    public final synchronized void b(int i2, String str, String str2) {
        com.smartdigimkt.b4.e.a().c(new n(this, str, i2, str2));
    }

    public final synchronized com.smartdigimkt.m3.i a(int i2, com.smartdigimkt.m3.i iVar, String str, int i3, int i4) {
        if (iVar == null) {
            try {
                iVar = a(i2, str);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iVar != null) {
            iVar.f42036e += i3;
            iVar.f42035d += i4;
            a(iVar);
        }
        return iVar;
    }

    public final synchronized com.smartdigimkt.m3.i a(int i2, com.smartdigimkt.m3.i iVar, String str, long j2) {
        if (iVar == null) {
            try {
                iVar = a(i2, str);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iVar != null) {
            iVar.f42034c = j2;
            a(iVar);
        }
        return iVar;
    }

    public final synchronized ArrayList a(int i2) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = a().query(o.a.f3363a, null, "type = ?", new String[]{String.valueOf(i2)}, null, null, null);
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        while (cursorQuery.moveToNext()) {
                            com.smartdigimkt.m3.i iVar = new com.smartdigimkt.m3.i(i2, cursorQuery.getString(cursorQuery.getColumnIndex("unit_id")));
                            iVar.f42036e = cursorQuery.getInt(cursorQuery.getColumnIndex(o.a.f3367e));
                            iVar.f42035d = cursorQuery.getInt(cursorQuery.getColumnIndex("show_count"));
                            iVar.f42034c = cursorQuery.getLong(cursorQuery.getColumnIndex(o.a.f3369g));
                            arrayList.add(iVar);
                        }
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        throw th;
                    }
                    throw th;
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
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    public final synchronized void a(com.smartdigimkt.m3.i iVar) {
        if (b() != null) {
            com.smartdigimkt.b4.e.a().c(new o(this, iVar));
        }
    }

    public final synchronized void a(int i2, String str, String str2) {
        try {
            if (b() == null) {
                return;
            }
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("adsource_id", str);
                contentValues.put("type", Integer.valueOf(i2));
                contentValues.put("unit_id", str2);
                com.smartdigimkt.m3.i iVarA = a(i2, str2);
                if (iVarA != null) {
                    contentValues.put(o.a.f3367e, Integer.valueOf(iVarA.f42036e));
                    contentValues.put("show_count", Integer.valueOf(iVarA.f42035d));
                    contentValues.put(o.a.f3369g, Long.valueOf(iVarA.f42034c));
                } else {
                    contentValues.put(o.a.f3367e, (Integer) 0);
                    contentValues.put("show_count", (Integer) 0);
                    contentValues.put(o.a.f3369g, (Integer) (-1));
                }
                b().insert(o.a.f3363a, null, contentValues);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0076 A[Catch: all -> 0x0056, PHI: r1
      0x0076: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:19:0x0061, B:23:0x0068, B:31:0x0074] A[DONT_GENERATE, DONT_INLINE], TryCatch #4 {, blocks: (B:9:0x0051, B:15:0x005b, B:32:0x0076, B:28:0x006f, B:29:0x0072, B:22:0x0065), top: B:40:0x0002, inners: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.smartdigimkt.m3.i a(int r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.a()     // Catch: java.lang.Throwable -> L60 java.lang.OutOfMemoryError -> L64 java.lang.Exception -> L73
            java.lang.String r2 = "offer_action_record"
            java.lang.String r4 = "type=? and unit_id = ?"
            java.lang.String r3 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L60 java.lang.OutOfMemoryError -> L64 java.lang.Exception -> L73
            java.lang.String[] r5 = new java.lang.String[]{r3, r11}     // Catch: java.lang.Throwable -> L60 java.lang.OutOfMemoryError -> L64 java.lang.Exception -> L73
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L60 java.lang.OutOfMemoryError -> L64 java.lang.Exception -> L73
            if (r1 == 0) goto L59
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            if (r2 <= 0) goto L59
            r1.moveToNext()     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            com.smartdigimkt.m3.i r2 = new com.smartdigimkt.m3.i     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r2.<init>(r10, r11)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            java.lang.String r10 = "click_count"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            int r10 = r1.getInt(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r2.f42036e = r10     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            java.lang.String r10 = "show_count"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            int r10 = r1.getInt(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r2.f42035d = r10     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            java.lang.String r10 = "expire_time"
            int r10 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            long r10 = r1.getLong(r10)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r2.f42034c = r10     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r1.close()     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L65 java.lang.Exception -> L74
            r1.close()     // Catch: java.lang.Throwable -> L56
            monitor-exit(r9)
            return r2
        L56:
            r0 = move-exception
            r10 = r0
            goto L7a
        L59:
            if (r1 == 0) goto L5e
            r1.close()     // Catch: java.lang.Throwable -> L56
        L5e:
            monitor-exit(r9)
            return r0
        L60:
            r1 = r0
        L61:
            if (r1 == 0) goto L7c
            goto L76
        L64:
            r1 = r0
        L65:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L7c
            goto L76
        L6b:
            r0 = move-exception
            r10 = r0
            if (r1 == 0) goto L72
            r1.close()     // Catch: java.lang.Throwable -> L56
        L72:
            throw r10     // Catch: java.lang.Throwable -> L56
        L73:
            r1 = r0
        L74:
            if (r1 == 0) goto L7c
        L76:
            r1.close()     // Catch: java.lang.Throwable -> L56
            goto L7c
        L7a:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L56
            throw r10
        L7c:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.p.a(int, java.lang.String):com.smartdigimkt.m3.i");
    }
}
