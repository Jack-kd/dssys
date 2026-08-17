package com.ubix.ssp.ad.core.monitor.data.c;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.w.h;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class d extends a {
    public d(Context context) {
        super(context);
        this.f45721a = "EventDataOperation";
    }

    @Override // com.ubix.ssp.ad.core.monitor.data.c.a
    public int a(Uri uri, JSONObject jSONObject) {
        try {
            if (a(uri) != 0) {
                return -2;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("data", jSONObject.toString() + "\t" + jSONObject.toString().hashCode());
            contentValues.put("created_at", Long.valueOf(System.currentTimeMillis()));
            this.f45722b.insert(uri, contentValues);
            return 0;
        } catch (Throwable th) {
            h.a(this.f45721a, th.getMessage());
            return 0;
        }
    }

    public com.ubix.ssp.ad.e.y.b.a b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("SDKEvent");
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("md_event");
                if (!TextUtils.isEmpty(strOptString)) {
                    return com.ubix.ssp.ad.e.y.b.a.a(n.a().a(strOptString));
                }
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("AppCrashed");
            if (jSONObjectOptJSONObject2 == null || TextUtils.isEmpty(jSONObjectOptJSONObject2.optString("app_crashed_reason"))) {
                return null;
            }
            return new com.ubix.ssp.ad.e.y.b.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public com.ubix.ssp.ad.e.y.b.b a(List<com.ubix.ssp.ad.e.y.b.a> list) {
        com.ubix.ssp.ad.e.y.b.b bVar = new com.ubix.ssp.ad.e.y.b.b();
        try {
            bVar.f47798b = com.ubix.ssp.ad.e.w.s.a.f().e();
            bVar.f47812p = com.ubix.ssp.ad.e.w.s.a.f().h();
            bVar.f47813q = com.ubix.ssp.ad.e.w.s.a.f().a();
            bVar.f47799c = com.ubix.ssp.ad.e.w.s.a.f().b();
            bVar.f47801e = 0;
            bVar.f47800d = System.currentTimeMillis();
            bVar.f47802f = com.ubix.ssp.ad.e.w.s.a.f().i();
            bVar.f47803g = com.ubix.ssp.ad.e.w.s.a.f().j();
            bVar.f47804h = com.ubix.ssp.ad.e.w.s.a.f().l();
            bVar.f47805i = com.ubix.ssp.ad.e.w.s.a.f().c();
            bVar.f47808l = com.ubix.ssp.ad.e.w.s.a.f().k();
            bVar.f47806j = com.ubix.ssp.ad.e.w.s.a.f().d();
            bVar.f47807k = com.ubix.ssp.ad.e.w.s.a.f().g();
            bVar.f47809m = (com.ubix.ssp.ad.e.y.b.a[]) list.toArray(bVar.f47809m);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        u.b(bVar.toString());
        return bVar;
    }

    @Override // com.ubix.ssp.ad.core.monitor.data.c.a
    public void a(Uri uri, String str) {
        super.a(uri, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0088 A[PHI: r0 r9 r10
      0x0088: PHI (r0v5 java.lang.String) = (r0v4 java.lang.String), (r0v22 java.lang.String) binds: [B:34:0x0086, B:26:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0088: PHI (r9v4 android.database.Cursor) = (r9v3 android.database.Cursor), (r9v7 android.database.Cursor) binds: [B:34:0x0086, B:26:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0088: PHI (r10v7 java.lang.String) = (r10v6 java.lang.String), (r10v14 java.lang.String) binds: [B:34:0x0086, B:26:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[SYNTHETIC] */
    @Override // com.ubix.ssp.ad.core.monitor.data.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] a(android.net.Uri r9, int r10) throws java.lang.Throwable {
        /*
            r8 = this;
            r1 = 0
            com.ubix.ssp.ad.core.monitor.data.UbixDataContentProvider r2 = r8.f45722b     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r0.<init>()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r3 = "created_at ASC LIMIT "
            r0.append(r3)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r0.append(r10)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r7 = r0.toString()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r4 = 0
            r5 = 0
            r6 = 0
            r3 = r9
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            if (r9 == 0) goto L72
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            r10.<init>()     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            r0 = r1
        L24:
            boolean r2 = r9.moveToNext()     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            if (r2 == 0) goto L61
            boolean r2 = r9.isLast()     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            if (r2 == 0) goto L3a
            java.lang.String r0 = "_id"
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
        L3a:
            r2 = r0
            goto L43
        L3c:
            r0 = move-exception
            r10 = r0
            r1 = r9
            goto L95
        L40:
            r0 = move-exception
            r10 = r0
            goto L7d
        L43:
            java.lang.String r0 = "data"
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L5b
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L5b
            java.lang.String r0 = r8.a(r0)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L5b
            com.ubix.ssp.ad.e.y.b.a r0 = r8.b(r0)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L5b
            if (r0 == 0) goto L5f
            r10.add(r0)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L5b
            goto L5f
        L5b:
            r0 = move-exception
            com.ubix.ssp.ad.e.w.h.a(r0)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
        L5f:
            r0 = r2
            goto L24
        L61:
            com.ubix.ssp.ad.e.a0.n$c r2 = com.ubix.ssp.ad.e.a0.n.b()     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            com.ubix.ssp.ad.e.y.b.b r10 = r8.a(r10)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            byte[] r10 = com.ubix.ssp.ad.e.y.c.f.a(r10)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            java.lang.String r10 = r2.b(r10)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L40
            goto L74
        L72:
            r10 = r1
            r0 = r10
        L74:
            if (r9 == 0) goto L8b
            goto L88
        L77:
            r0 = move-exception
            r10 = r0
            goto L95
        L7a:
            r0 = move-exception
            r10 = r0
            r9 = r1
        L7d:
            java.lang.String r0 = r8.f45721a     // Catch: java.lang.Throwable -> L3c
            java.lang.String r2 = "Could not pull records for SensorsData out of database events. Waiting to send."
            com.ubix.ssp.ad.e.w.h.a(r0, r2, r10)     // Catch: java.lang.Throwable -> L3c
            r10 = r1
            r0 = r10
            if (r9 == 0) goto L8b
        L88:
            r9.close()
        L8b:
            if (r0 == 0) goto L94
            java.lang.String r9 = "1"
            java.lang.String[] r9 = new java.lang.String[]{r0, r10, r9}
            return r9
        L94:
            return r1
        L95:
            if (r1 == 0) goto L9a
            r1.close()
        L9a:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.core.monitor.data.c.d.a(android.net.Uri, int):java.lang.String[]");
    }
}
