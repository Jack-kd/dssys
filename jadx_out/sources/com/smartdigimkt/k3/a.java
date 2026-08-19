package com.smartdigimkt.k3;

import android.database.Cursor;
import com.anythink.core.common.f.b;
import java.util.ArrayList;
import java.util.Calendar;

/* loaded from: classes5.dex */
public final class a extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f41365b;

    public a(d dVar) {
        super(dVar);
    }

    public static long c() {
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

    public final synchronized ArrayList a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.smartdigimkt.f3.q qVar = new com.smartdigimkt.f3.q();
                        int columnIndex = cursor.getColumnIndex("placement_id");
                        if (columnIndex >= 0) {
                            qVar.f40246a = cursor.getString(columnIndex);
                        }
                        int columnIndex2 = cursor.getColumnIndex("dsp_id");
                        if (columnIndex2 >= 0) {
                            qVar.f40247b = cursor.getString(columnIndex2);
                        }
                        int columnIndex3 = cursor.getColumnIndex("offer_id");
                        if (columnIndex3 >= 0) {
                            qVar.f40248c = cursor.getString(columnIndex3);
                        }
                        int columnIndex4 = cursor.getColumnIndex(b.a.f3231e);
                        if (columnIndex4 >= 0) {
                            qVar.f40249d = cursor.getInt(columnIndex4);
                        }
                        int columnIndex5 = cursor.getColumnIndex(b.a.f3232f);
                        if (columnIndex5 >= 0) {
                            qVar.f40250e = cursor.getString(columnIndex5);
                        }
                        arrayList.add(qVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[Catch: all -> 0x002d, PHI: r1
      0x0044: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:12:0x0030, B:16:0x0037, B:23:0x0042] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {, blocks: (B:6:0x0028, B:24:0x0044, B:20:0x003d, B:21:0x0040, B:15:0x0034), top: B:34:0x0002, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList d() {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.a()     // Catch: java.lang.Throwable -> L2f java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String r2 = "adx_offer_tracking"
            java.lang.String r4 = "create_time >= ? "
            long r5 = c()     // Catch: java.lang.Throwable -> L2f java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String r3 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L2f java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.lang.String[] r5 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L2f java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L2f java.lang.OutOfMemoryError -> L33 java.lang.Exception -> L41
            java.util.ArrayList r2 = r9.a(r1)     // Catch: java.lang.Throwable -> L30 java.lang.OutOfMemoryError -> L34 java.lang.Exception -> L42
            r1.close()     // Catch: java.lang.Throwable -> L30 java.lang.OutOfMemoryError -> L34 java.lang.Exception -> L42
            r2.size()     // Catch: java.lang.Throwable -> L30 java.lang.OutOfMemoryError -> L34 java.lang.Exception -> L42
            r1.close()     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r9)
            return r2
        L2d:
            r0 = move-exception
            goto L48
        L2f:
            r1 = r0
        L30:
            if (r1 == 0) goto L4a
            goto L44
        L33:
            r1 = r0
        L34:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L4a
            goto L44
        L3a:
            r0 = move-exception
            if (r1 == 0) goto L40
            r1.close()     // Catch: java.lang.Throwable -> L2d
        L40:
            throw r0     // Catch: java.lang.Throwable -> L2d
        L41:
            r1 = r0
        L42:
            if (r1 == 0) goto L4a
        L44:
            r1.close()     // Catch: java.lang.Throwable -> L2d
            goto L4a
        L48:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L2d
            throw r0
        L4a:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.a.d():java.util.ArrayList");
    }
}
