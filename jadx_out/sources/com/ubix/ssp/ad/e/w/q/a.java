package com.ubix.ssp.ad.e.w.q;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private b f47381a;

    private a(Context context) {
        this.f47381a = new b(context);
    }

    public static a a(Context context) {
        return new a(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v7 */
    public String b(String str) throws Throwable {
        SQLiteDatabase writableDatabase;
        Throwable th;
        Cursor cursorRawQuery;
        String string = null;
        try {
            try {
                writableDatabase = this.f47381a.getWritableDatabase();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            cursorRawQuery = null;
            writableDatabase = null;
        } catch (Throwable th3) {
            writableDatabase = null;
            th = th3;
            str = 0;
        }
        try {
            cursorRawQuery = writableDatabase.rawQuery("SELECT init_data FROM t_ubixinit_admeta_cache WHERE ad_appid = '" + ((String) str) + "'", null);
            if (cursorRawQuery != null) {
                try {
                    if (cursorRawQuery.getCount() > 0) {
                        cursorRawQuery.moveToFirst();
                        string = cursorRawQuery.getString(0);
                    }
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return string;
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Exception e4) {
            e = e4;
            cursorRawQuery = null;
        } catch (Throwable th4) {
            th = th4;
            str = 0;
            if (str != 0) {
                str.close();
            }
            if (writableDatabase != null) {
                writableDatabase.close();
            }
            throw th;
        }
        writableDatabase.close();
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007b A[Catch: all -> 0x0075, Exception -> 0x0078, TryCatch #6 {Exception -> 0x0078, all -> 0x0075, blocks: (B:9:0x0043, B:11:0x0049, B:17:0x0080, B:16:0x007b), top: B:52:0x0043 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            monitor-enter(r6)
            r0 = 0
            com.ubix.ssp.ad.e.w.q.b r1 = r6.f47381a     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L96
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L96
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r2.<init>()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r3 = "init_data"
            r2.put(r3, r8)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r3 = "ad_appid"
            r2.put(r3, r7)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r3 = "createTime"
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r3.<init>()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r4 = "SELECT * FROM t_ubixinit_admeta_cache WHERE ad_appid = '"
            r3.append(r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r3.append(r7)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r4 = "'"
            r3.append(r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            android.database.Cursor r3 = r1.rawQuery(r3, r0)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            if (r3 == 0) goto L7b
            int r4 = r3.getCount()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            if (r4 <= 0) goto L7b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r0.<init>()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r2 = "UPDATE t_ubixinit_admeta_cache SET init_data = '"
            r0.append(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r0.append(r8)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r8 = "' WHERE "
            r0.append(r8)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r8 = "ad_appid"
            r0.append(r8)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r8 = " = '"
            r0.append(r8)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r0.append(r7)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r7 = "'"
            r0.append(r7)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r7 = r0.toString()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r1.execSQL(r7)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            goto L80
        L75:
            r7 = move-exception
            r0 = r3
            goto La8
        L78:
            r7 = move-exception
            r0 = r3
            goto L98
        L7b:
            java.lang.String r7 = "t_ubixinit_admeta_cache"
            r1.insert(r7, r0, r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
        L80:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            if (r3 == 0) goto L8b
            r3.close()     // Catch: java.lang.Throwable -> L89
            goto L8b
        L89:
            r7 = move-exception
            goto Lb6
        L8b:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L89
            goto La3
        L8f:
            r7 = move-exception
            goto La8
        L91:
            r7 = move-exception
            goto L98
        L93:
            r7 = move-exception
            r1 = r0
            goto La8
        L96:
            r7 = move-exception
            r1 = r0
        L98:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L8f
            if (r0 == 0) goto La0
            r0.close()     // Catch: java.lang.Throwable -> L89
        La0:
            if (r1 == 0) goto La6
            goto L8b
        La3:
            r1.close()     // Catch: java.lang.Throwable -> L89
        La6:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L89
            return
        La8:
            if (r0 == 0) goto Lad
            r0.close()     // Catch: java.lang.Throwable -> L89
        Lad:
            if (r1 == 0) goto Lb5
            r1.endTransaction()     // Catch: java.lang.Throwable -> L89
            r1.close()     // Catch: java.lang.Throwable -> L89
        Lb5:
            throw r7     // Catch: java.lang.Throwable -> L89
        Lb6:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L89
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.w.q.a.a(java.lang.String, java.lang.String):void");
    }

    public boolean a() {
        boolean z2;
        synchronized (this) {
            z2 = this.f47381a.getWritableDatabase().delete("t_ubixad_admeta_cache", String.format("%s<=? or %s=?", "expirationTimestamp", "status"), new String[]{String.valueOf(System.currentTimeMillis() / 1000), String.valueOf(2)}) != 0;
        }
        return z2;
    }

    public boolean a(ContentValues contentValues, String str, String[] strArr) {
        boolean z2;
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f47381a.getWritableDatabase();
            int iUpdate = writableDatabase.update("t_ubixad_admeta_cache", contentValues, str, strArr);
            writableDatabase.close();
            this.f47381a.close();
            z2 = iUpdate > 0;
        }
        return z2;
    }

    public boolean a(String str) {
        boolean z2;
        synchronized (this) {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.f47381a.getWritableDatabase();
                    int iDelete = writableDatabase.delete("t_ubixad_admeta_cache", String.format("%s=?", "ad_id"), new String[]{String.valueOf(str)});
                    writableDatabase.close();
                    this.f47381a.close();
                    z2 = iDelete != 0;
                } catch (Exception unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }
}
