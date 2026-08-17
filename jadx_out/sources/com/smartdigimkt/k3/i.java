package com.smartdigimkt.k3;

import android.database.Cursor;
import com.anythink.core.common.f.i;
import com.smartdigimkt.f3.u;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class i extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile i f41377b;

    public i(d dVar) {
        super(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0048 A[Catch: all -> 0x002f, PHI: r10
      0x0048: PHI (r10v8 android.database.Cursor) = 
      (r10v5 android.database.Cursor)
      (r10v6 android.database.Cursor)
      (r10v7 android.database.Cursor)
      (r10v9 android.database.Cursor)
     binds: [B:14:0x0033, B:18:0x003a, B:26:0x0046, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE], TryCatch #7 {, blocks: (B:8:0x002a, B:27:0x0048, B:23:0x0041, B:24:0x0044, B:17:0x0037), top: B:37:0x0002, inners: #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.smartdigimkt.f3.u a(java.lang.String r10, java.lang.String r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.a()     // Catch: java.lang.Throwable -> L32 java.lang.OutOfMemoryError -> L36 java.lang.Exception -> L45
            java.lang.String r2 = "dsp_offer_show_record"
            java.lang.String r4 = "dsp_id = ?  AND dsp_offer_id = ? "
            java.lang.String[] r5 = new java.lang.String[]{r10, r11}     // Catch: java.lang.Throwable -> L32 java.lang.OutOfMemoryError -> L36 java.lang.Exception -> L45
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L32 java.lang.OutOfMemoryError -> L36 java.lang.Exception -> L45
            java.util.ArrayList r11 = r9.a(r10)     // Catch: java.lang.Throwable -> L33 java.lang.OutOfMemoryError -> L37 java.lang.Exception -> L46
            r10.close()     // Catch: java.lang.Throwable -> L33 java.lang.OutOfMemoryError -> L37 java.lang.Exception -> L46
            int r1 = r11.size()     // Catch: java.lang.Throwable -> L33 java.lang.OutOfMemoryError -> L37 java.lang.Exception -> L46
            if (r1 <= 0) goto L48
            r1 = 0
            java.lang.Object r11 = r11.get(r1)     // Catch: java.lang.Throwable -> L33 java.lang.OutOfMemoryError -> L37 java.lang.Exception -> L46
            com.smartdigimkt.f3.u r11 = (com.smartdigimkt.f3.u) r11     // Catch: java.lang.Throwable -> L33 java.lang.OutOfMemoryError -> L37 java.lang.Exception -> L46
            r10.close()     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r9)
            return r11
        L2f:
            r0 = move-exception
            r10 = r0
            goto L4c
        L32:
            r10 = r0
        L33:
            if (r10 == 0) goto L4e
            goto L48
        L36:
            r10 = r0
        L37:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L3d
            if (r10 == 0) goto L4e
            goto L48
        L3d:
            r0 = move-exception
            r11 = r0
            if (r10 == 0) goto L44
            r10.close()     // Catch: java.lang.Throwable -> L2f
        L44:
            throw r11     // Catch: java.lang.Throwable -> L2f
        L45:
            r10 = r0
        L46:
            if (r10 == 0) goto L4e
        L48:
            r10.close()     // Catch: java.lang.Throwable -> L2f
            goto L4e
        L4c:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L2f
            throw r10
        L4e:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.i.a(java.lang.String, java.lang.String):com.smartdigimkt.f3.u");
    }

    public final synchronized ArrayList a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        u uVar = new u();
                        uVar.f40253a = cursor.getString(cursor.getColumnIndex("dsp_id"));
                        uVar.f40254b = cursor.getString(cursor.getColumnIndex("dsp_offer_id"));
                        cursor.getInt(cursor.getColumnIndex(i.a.f3304d));
                        uVar.f40255c = cursor.getInt(cursor.getColumnIndex("show_count"));
                        arrayList.add(uVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }
}
