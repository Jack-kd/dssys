package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.h;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static final int f49441a = 2049;

    /* renamed from: b, reason: collision with root package name */
    public static final int f49442b = 2050;

    /* renamed from: c, reason: collision with root package name */
    private static final int f49443c = 1000;

    /* renamed from: d, reason: collision with root package name */
    private static Context f49444d = null;

    /* renamed from: e, reason: collision with root package name */
    private static String f49445e = null;

    /* renamed from: f, reason: collision with root package name */
    private static final String f49446f = "umeng+";

    /* renamed from: g, reason: collision with root package name */
    private static final String f49447g = "ek__id";

    /* renamed from: h, reason: collision with root package name */
    private static final String f49448h = "ek_key";

    /* renamed from: i, reason: collision with root package name */
    private List<String> f49449i;

    /* renamed from: j, reason: collision with root package name */
    private List<Integer> f49450j;

    /* renamed from: k, reason: collision with root package name */
    private String f49451k;

    /* renamed from: l, reason: collision with root package name */
    private List<String> f49452l;

    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final l f49460a = new l();

        private b() {
        }
    }

    public static l a(Context context) {
        l lVar = b.f49460a;
        if (f49444d == null && context != null) {
            f49444d = context.getApplicationContext();
            lVar.k();
        }
        return lVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.f49449i.clear();
            this.f49452l.clear();
            this.f49450j.clear();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(f49445e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(f49444d, f49447g);
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = PreferenceWrapper.getDefault(f49444d).getString(f49447g, null);
                    if (TextUtils.isEmpty(multiProcessSP)) {
                        multiProcessSP = UMUtils.genId();
                    }
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(f49444d, f49447g, multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String strSubstring = multiProcessSP.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < strSubstring.length(); i2++) {
                        char cCharAt = strSubstring.charAt(i2);
                        if (!Character.isDigit(cCharAt)) {
                            sb.append(cCharAt);
                        } else if (Integer.parseInt(Character.toString(cCharAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - Integer.parseInt(Character.toString(cCharAt)));
                        }
                    }
                    f49445e = sb.toString();
                }
                if (TextUtils.isEmpty(f49445e)) {
                    return;
                }
                f49445e += new StringBuilder(f49445e).reverse().toString();
                String multiProcessSP2 = UMUtils.getMultiProcessSP(f49444d, f49448h);
                if (TextUtils.isEmpty(multiProcessSP2)) {
                    UMUtils.setMultiProcessSP(f49444d, f49448h, c(f49446f));
                } else {
                    if (f49446f.equals(d(multiProcessSP2))) {
                        return;
                    }
                    b(true, false);
                    a(true, false);
                    h();
                    i();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f49452l.clear();
    }

    public boolean c() {
        return this.f49452l.isEmpty();
    }

    public void d() {
        String strC;
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                strC = x.a().c();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
        if (TextUtils.isEmpty(strC)) {
            try {
                sQLiteDatabaseA.endTransaction();
            } catch (Throwable unused4) {
            }
            j.a(f49444d).b();
            return;
        }
        String[] strArr = {"", "-1"};
        for (int i2 = 0; i2 < 2; i2++) {
            sQLiteDatabaseA.execSQL("update __et set __i=\"" + strC + "\" where __i=\"" + strArr[i2] + "\"");
        }
        sQLiteDatabaseA.setTransactionSuccessful();
    }

    public boolean e() {
        return this.f49449i.isEmpty();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0089 A[EXC_TOP_SPLITTER, PHI: r4 r6
      0x0089: PHI (r4v3 org.json.JSONObject) = (r4v2 org.json.JSONObject), (r4v5 org.json.JSONObject) binds: [B:28:0x0087, B:34:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r6v3 android.database.sqlite.SQLiteDatabase) = (r6v2 android.database.sqlite.SQLiteDatabase), (r6v4 android.database.sqlite.SQLiteDatabase) binds: [B:28:0x0087, B:34:0x00a1] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject f() {
        /*
            r14 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r14.f49452l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            com.umeng.analytics.pro.j r2 = com.umeng.analytics.pro.j.a(r2)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            android.database.sqlite.SQLiteDatabase r6 = r2.a()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r6.beginTransaction()     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.util.List<java.lang.String> r2 = r14.f49452l     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r4 = 0
            java.lang.Object r2 = r2.get(r4)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.lang.String r5 = "__is"
            java.lang.String r8 = "__ii=? "
            java.lang.String[] r9 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r12 = 0
            r13 = 0
            r7 = 0
            r10 = 0
            r11 = 0
            r4 = r14
            android.database.Cursor r2 = r4.a(r5, r6, r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r2 == 0) goto L63
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            if (r4 == 0) goto L63
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            r4.<init>()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            int r3 = r2.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            int r5 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r4.put(r1, r3)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r4.put(r0, r5)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r3 = r4
            goto L63
        L5b:
            r3 = r2
            goto L82
        L5d:
            r3 = r2
            goto L97
        L5f:
            r4 = r3
            goto L5b
        L61:
            r4 = r3
            goto L5d
        L63:
            r6.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            if (r2 == 0) goto L6b
            r2.close()
        L6b:
            r6.endTransaction()     // Catch: java.lang.Throwable -> L6e
        L6e:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            goto La4
        L78:
            r4 = r3
            goto L82
        L7a:
            r4 = r3
            goto L97
        L7c:
            r4 = r3
            r6 = r4
            goto L82
        L7f:
            r4 = r3
            r6 = r4
            goto L97
        L82:
            if (r3 == 0) goto L87
            r3.close()
        L87:
            if (r6 == 0) goto L8c
        L89:
            r6.endTransaction()     // Catch: java.lang.Throwable -> L8c
        L8c:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            r3 = r4
            goto La4
        L97:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> La5
            com.umeng.analytics.pro.k.a(r0)     // Catch: java.lang.Throwable -> La5
            if (r3 == 0) goto La1
            r3.close()
        La1:
            if (r6 == 0) goto L8c
            goto L89
        La4:
            return r3
        La5:
            r0 = move-exception
            if (r3 == 0) goto Lab
            r3.close()
        Lab:
            if (r6 == 0) goto Lb0
            r6.endTransaction()     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.f():org.json.JSONObject");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0089 A[EXC_TOP_SPLITTER, PHI: r4 r6
      0x0089: PHI (r4v3 org.json.JSONObject) = (r4v2 org.json.JSONObject), (r4v5 org.json.JSONObject) binds: [B:28:0x0087, B:34:0x00a1] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r6v3 android.database.sqlite.SQLiteDatabase) = (r6v2 android.database.sqlite.SQLiteDatabase), (r6v4 android.database.sqlite.SQLiteDatabase) binds: [B:28:0x0087, B:34:0x00a1] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject g() {
        /*
            r14 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r14.f49449i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            com.umeng.analytics.pro.j r2 = com.umeng.analytics.pro.j.a(r2)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            android.database.sqlite.SQLiteDatabase r6 = r2.a()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r6.beginTransaction()     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.util.List<java.lang.String> r2 = r14.f49449i     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r4 = 0
            java.lang.Object r2 = r2.get(r4)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            java.lang.String r5 = "__sd"
            java.lang.String r8 = "__ii=? "
            java.lang.String[] r9 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r12 = 0
            r13 = 0
            r7 = 0
            r10 = 0
            r11 = 0
            r4 = r14
            android.database.Cursor r2 = r4.a(r5, r6, r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r2 == 0) goto L63
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            if (r4 == 0) goto L63
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            r4.<init>()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            int r3 = r2.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            int r5 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r4.put(r1, r3)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r4.put(r0, r5)     // Catch: java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r3 = r4
            goto L63
        L5b:
            r3 = r2
            goto L82
        L5d:
            r3 = r2
            goto L97
        L5f:
            r4 = r3
            goto L5b
        L61:
            r4 = r3
            goto L5d
        L63:
            r6.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L5f android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            if (r2 == 0) goto L6b
            r2.close()
        L6b:
            r6.endTransaction()     // Catch: java.lang.Throwable -> L6e
        L6e:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            goto La4
        L78:
            r4 = r3
            goto L82
        L7a:
            r4 = r3
            goto L97
        L7c:
            r4 = r3
            r6 = r4
            goto L82
        L7f:
            r4 = r3
            r6 = r4
            goto L97
        L82:
            if (r3 == 0) goto L87
            r3.close()
        L87:
            if (r6 == 0) goto L8c
        L89:
            r6.endTransaction()     // Catch: java.lang.Throwable -> L8c
        L8c:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            r3 = r4
            goto La4
        L97:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> La5
            com.umeng.analytics.pro.k.a(r0)     // Catch: java.lang.Throwable -> La5
            if (r3 == 0) goto La1
            r3.close()
        La1:
            if (r6 == 0) goto L8c
            goto L89
        La4:
            return r3
        La5:
            r0 = move-exception
            if (r3 == 0) goto Lab
            r3.close()
        Lab:
            if (r6 == 0) goto Lb0
            r6.endTransaction()     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.g():org.json.JSONObject");
    }

    public void h() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                if (this.f49450j.size() > 0) {
                    for (int i2 = 0; i2 < this.f49450j.size(); i2++) {
                        sQLiteDatabaseA.delete(h.b.f49382a, "rowid=?", new String[]{String.valueOf(this.f49450j.get(i2).intValue())});
                    }
                }
                this.f49450j.clear();
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
    }

    public void i() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                sQLiteDatabaseA.execSQL("delete from __er");
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0031 A[EXC_TOP_SPLITTER, PHI: r1
      0x0031: PHI (r1v8 android.database.sqlite.SQLiteDatabase) = 
      (r1v4 android.database.sqlite.SQLiteDatabase)
      (r1v5 android.database.sqlite.SQLiteDatabase)
      (r1v11 android.database.sqlite.SQLiteDatabase)
     binds: [B:10:0x0042, B:13:0x004a, B:5:0x0015] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "__i=?"
            java.lang.String r1 = r5.f49451k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L5d
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            java.lang.String r3 = "__er"
            java.lang.String r4 = r5.f49451k     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            r1.delete(r3, r0, r4)     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            java.lang.String r3 = "__et"
            java.lang.String r4 = r5.f49451k     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            r1.delete(r3, r0, r4)     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L45
        L31:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L34
        L34:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            goto L5d
        L3e:
            r1 = r2
            goto L42
        L40:
            r1 = r2
            goto L45
        L42:
            if (r1 == 0) goto L34
            goto L31
        L45:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L4d
            com.umeng.analytics.pro.k.a(r0)     // Catch: java.lang.Throwable -> L4d
            if (r1 == 0) goto L34
            goto L31
        L4d:
            r0 = move-exception
            if (r1 == 0) goto L53
            r1.endTransaction()     // Catch: java.lang.Throwable -> L53
        L53:
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)
            r1.b()
            throw r0
        L5d:
            r5.f49451k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.j():void");
    }

    private l() {
        this.f49449i = new ArrayList();
        this.f49450j = new ArrayList();
        this.f49451k = null;
        this.f49452l = new ArrayList();
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long jLongValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            String strC = "";
            String strC2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) ? "" : c(jSONObjectOptJSONObject.toString());
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC = c(jSONObjectOptJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(jLongValue));
            contentValues.put("__sp", strC2);
            contentValues.put("__pp", strC);
            contentValues.put("__av", UMGlobalContext.getInstance(f49444d).getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(f49444d));
            sQLiteDatabase.insert(h.c.f49395a, null, contentValues);
        } catch (Throwable unused) {
        }
    }

    private void c(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursorA;
        Cursor cursor = null;
        strD = null;
        strD = null;
        String strD = null;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(h.d.a.f49413e);
            if (jSONObjectOptJSONObject != null) {
                sQLiteDatabase2 = sQLiteDatabase;
                cursorA = a(h.d.f49408a, sQLiteDatabase2, new String[]{h.d.a.f49413e}, "__ii=? ", new String[]{str}, null, null, null, null);
                if (cursorA != null) {
                    while (cursorA.moveToNext()) {
                        try {
                            strD = d(cursorA.getString(cursorA.getColumnIndex(h.d.a.f49413e)));
                        } catch (Throwable unused) {
                            cursor = cursorA;
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                sQLiteDatabase2 = sQLiteDatabase;
                cursorA = null;
            }
            if (jSONObjectOptJSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(strD)) {
                    jSONArray = new JSONArray(strD);
                }
                jSONArray.put(jSONObjectOptJSONObject);
                String strC = c(jSONArray.toString());
                if (!TextUtils.isEmpty(strC)) {
                    sQLiteDatabase2.execSQL("update  __sd set __d=\"" + strC + "\" where __ii=\"" + str + "\"");
                }
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(h.d.a.f49412d);
            if (jSONObjectOptJSONObject2 != null) {
                String strC2 = c(jSONObjectOptJSONObject2.toString());
                if (!TextUtils.isEmpty(strC2)) {
                    sQLiteDatabase2.execSQL("update  __sd set __c=\"" + strC2 + "\" where __ii=\"" + str + "\"");
                }
            }
            sQLiteDatabase2.execSQL("update  __sd set __f=\"" + String.valueOf(jSONObject.optLong(h.d.a.f49415g)) + "\" where __ii=\"" + str + "\"");
            if (cursorA != null) {
                cursorA.close();
            }
        } catch (Throwable unused2) {
        }
    }

    private Cursor a(String str, SQLiteDatabase sQLiteDatabase, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        if (sQLiteDatabase == null) {
            return null;
        }
        try {
            if (sQLiteDatabase.isOpen()) {
                return sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a() {
        this.f49449i.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a2, code lost:
    
        if (r2 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a4, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        if (r2 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteDatabaseCorruptException -> La8
            com.umeng.analytics.pro.j r3 = com.umeng.analytics.pro.j.a(r3)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteDatabaseCorruptException -> La8
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteDatabaseCorruptException -> La8
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L35 android.database.sqlite.SQLiteDatabaseCorruptException -> La0
            r4 = 0
        L13:
            int r5 = r11.length()     // Catch: java.lang.Throwable -> L35 android.database.sqlite.SQLiteDatabaseCorruptException -> La0
            if (r4 >= r5) goto L90
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.<init>()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = r5.optString(r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L37
            boolean r8 = r9.equals(r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            if (r8 == 0) goto L46
            goto L37
        L35:
            r2 = r3
            goto La2
        L37:
            com.umeng.analytics.pro.x r7 = com.umeng.analytics.pro.x.a()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = r7.b()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            if (r8 == 0) goto L46
            r7 = r9
        L46:
            r6.put(r1, r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.put(r7, r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            int r7 = r5.optInt(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.put(r0, r7)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.put(r7, r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.put(r7, r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r5.remove(r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r5.remove(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r5 = r10.c(r5)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            r6.put(r7, r5)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L8d
        L8d:
            int r4 = r4 + 1
            goto L13
        L90:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L35 android.database.sqlite.SQLiteDatabaseCorruptException -> La0
            r3.endTransaction()     // Catch: java.lang.Throwable -> L96
        L96:
            android.content.Context r11 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r11 = com.umeng.analytics.pro.j.a(r11)
            r11.b()
            goto Lb0
        La0:
            r2 = r3
            goto La8
        La2:
            if (r2 == 0) goto L96
        La4:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L96
            goto L96
        La8:
            android.content.Context r11 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> Lb1
            com.umeng.analytics.pro.k.a(r11)     // Catch: java.lang.Throwable -> Lb1
            if (r2 == 0) goto L96
            goto La4
        Lb0:
            return
        Lb1:
            r11 = move-exception
            if (r2 == 0) goto Lb7
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb7
        Lb7:
            android.content.Context r0 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r0 = com.umeng.analytics.pro.j.a(r0)
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(org.json.JSONArray):void");
    }

    public JSONObject b(boolean z2) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z2);
        return jSONObject;
    }

    public String d(String str) {
        try {
            return TextUtils.isEmpty(f49445e) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f49445e.getBytes()));
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT >= 29 && !TextUtils.isEmpty(str)) {
                try {
                    new JSONObject(str);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> UMStoreManager decrypt failed, return origin data.");
                    return str;
                } catch (Throwable unused2) {
                    return null;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007d A[EXC_TOP_SPLITTER, PHI: r4 r13
      0x007d: PHI (r4v6 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:35:0x009c, B:42:0x00ac, B:26:0x0078, B:27:0x007a] A[DONT_GENERATE, DONT_INLINE]
      0x007d: PHI (r13v11 ??) = (r13v6 ??), (r13v7 ??), (r13v0 ??), (r13v0 ??) binds: [B:35:0x009c, B:42:0x00ac, B:26:0x0078, B:27:0x007a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0080 A[PHI: r4 r13
      0x0080: PHI (r4v5 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v6 android.database.sqlite.SQLiteDatabase)
     binds: [B:35:0x009c, B:42:0x00ac, B:28:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x0080: PHI (r13v10 ??) = (r13v6 ??), (r13v7 ??), (r13v11 ??) binds: [B:35:0x009c, B:42:0x00ac, B:28:0x007d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v7, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(org.json.JSONObject r13, java.lang.String r14) {
        /*
            r12 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L8a android.database.sqlite.SQLiteDatabaseCorruptException -> L8e
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)     // Catch: java.lang.Throwable -> L8a android.database.sqlite.SQLiteDatabaseCorruptException -> L8e
            android.database.sqlite.SQLiteDatabase r4 = r1.a()     // Catch: java.lang.Throwable -> L8a android.database.sqlite.SQLiteDatabaseCorruptException -> L8e
            r4.beginTransaction()     // Catch: java.lang.Throwable -> L29 android.database.sqlite.SQLiteDatabaseCorruptException -> L2d
            boolean r1 = android.text.TextUtils.isEmpty(r14)     // Catch: java.lang.Throwable -> L29 android.database.sqlite.SQLiteDatabaseCorruptException -> L2d
            if (r1 != 0) goto L31
            java.lang.String r3 = "__er"
            java.lang.String r6 = "__i=? "
            java.lang.String[] r7 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> L29 android.database.sqlite.SQLiteDatabaseCorruptException -> L2d
            r10 = 0
            r11 = 0
            r5 = 0
            r8 = 0
            r9 = 0
            r2 = r12
            android.database.Cursor r14 = r2.a(r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L29 android.database.sqlite.SQLiteDatabaseCorruptException -> L2d
            r2 = r12
        L27:
            r0 = r14
            goto L40
        L29:
            r2 = r12
        L2a:
            r13 = r0
            goto L92
        L2d:
            r2 = r12
        L2e:
            r13 = r0
            goto La2
        L31:
            java.lang.String r3 = "__er"
            r10 = 0
            r11 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r12
            android.database.Cursor r14 = r2.a(r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            goto L27
        L40:
            if (r0 == 0) goto L75
            org.json.JSONArray r14 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            r14.<init>()     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
        L47:
            boolean r1 = r0.moveToNext()     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            if (r1 == 0) goto L6a
            java.lang.String r1 = "__a"
            int r1 = r0.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            java.lang.String r1 = r0.getString(r1)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            if (r3 != 0) goto L47
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            java.lang.String r1 = r12.d(r1)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            r14.put(r3)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            goto L47
        L6a:
            int r1 = r14.length()     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            if (r1 <= 0) goto L75
            java.lang.String r1 = "error"
            r13.put(r1, r14)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
        L75:
            r4.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2e
            if (r0 == 0) goto L7d
            r0.close()
        L7d:
            r4.endTransaction()     // Catch: java.lang.Throwable -> L80
        L80:
            android.content.Context r13 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r13 = com.umeng.analytics.pro.j.a(r13)
            r13.b()
            goto Laf
        L8a:
            r2 = r12
            r13 = r0
            r4 = r13
            goto L92
        L8e:
            r2 = r12
            r13 = r0
            r4 = r13
            goto La2
        L92:
            android.content.Context r14 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L9f
            com.umeng.analytics.pro.k.a(r14)     // Catch: java.lang.Throwable -> L9f
            if (r13 == 0) goto L9c
            r13.close()
        L9c:
            if (r4 == 0) goto L80
            goto L7d
        L9f:
            r0 = move-exception
            r14 = r0
            goto Lb0
        La2:
            android.content.Context r14 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L9f
            com.umeng.analytics.pro.k.a(r14)     // Catch: java.lang.Throwable -> L9f
            if (r13 == 0) goto Lac
            r13.close()
        Lac:
            if (r4 == 0) goto L80
            goto L7d
        Laf:
            return
        Lb0:
            if (r13 == 0) goto Lb5
            r13.close()
        Lb5:
            if (r4 == 0) goto Lba
            r4.endTransaction()     // Catch: java.lang.Throwable -> Lba
        Lba:
            android.content.Context r13 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r13 = com.umeng.analytics.pro.j.a(r13)
            r13.b()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.b(org.json.JSONObject, java.lang.String):void");
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(f49445e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f49445e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0060, code lost:
    
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0062, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
    
        if (r0 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteDatabaseCorruptException -> L66
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteDatabaseCorruptException -> L66
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteDatabaseCorruptException -> L66
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            r2.<init>()     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r5 = r4.c(r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            if (r6 != 0) goto L50
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            goto L50
        L4c:
            r0 = r1
            goto L60
        L4e:
            r0 = r1
            goto L66
        L50:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4c android.database.sqlite.SQLiteDatabaseCorruptException -> L4e
            r1.endTransaction()     // Catch: java.lang.Throwable -> L56
        L56:
            android.content.Context r5 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r5 = com.umeng.analytics.pro.j.a(r5)
            r5.b()
            goto L6e
        L60:
            if (r0 == 0) goto L56
        L62:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L56
            goto L56
        L66:
            android.content.Context r5 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L70
            com.umeng.analytics.pro.k.a(r5)     // Catch: java.lang.Throwable -> L70
            if (r0 == 0) goto L56
            goto L62
        L6e:
            r5 = 0
            return r5
        L70:
            r5 = move-exception
            if (r0 == 0) goto L76
            r0.endTransaction()     // Catch: java.lang.Throwable -> L76
        L76:
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r6 = com.umeng.analytics.pro.j.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(java.lang.String, java.lang.String, int):boolean");
    }

    private JSONArray b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optLong("duration") > 0) {
                jSONArray2.put(jSONObjectOptJSONObject);
            }
        }
        return jSONArray2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(5:67|3|69|4|5)|(5:72|6|(6:74|8|(8:11|(1:13)|14|(1:16)|17|(4:76|19|(1:21)|(1:78)(1:81))(1:80)|79|9)|77|23|(1:25))|26|(1:28))|62|29|66|30|49|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b1 A[EXC_TOP_SPLITTER, PHI: r0 r1 r4
      0x00b1: PHI (r0v6 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v12 java.lang.String), (r0v12 java.lang.String) binds: [B:40:0x00d8, B:47:0x00e8, B:27:0x00ac, B:28:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r1v6 android.database.Cursor) = 
      (r1v3 android.database.Cursor)
      (r1v4 android.database.Cursor)
      (r1v11 android.database.Cursor)
      (r1v11 android.database.Cursor)
     binds: [B:40:0x00d8, B:47:0x00e8, B:27:0x00ac, B:28:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r4v6 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:40:0x00d8, B:47:0x00e8, B:27:0x00ac, B:28:0x00ae] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b4 A[PHI: r0 r1 r4
      0x00b4: PHI (r0v5 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v6 java.lang.String) binds: [B:40:0x00d8, B:47:0x00e8, B:29:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00b4: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:40:0x00d8, B:47:0x00e8, B:29:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00b4: PHI (r4v5 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v6 android.database.sqlite.SQLiteDatabase)
     binds: [B:40:0x00d8, B:47:0x00e8, B:29:0x00b1] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(org.json.JSONObject r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.b(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        if (r2 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0099, code lost:
    
        if (r2 == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.l.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L6
            return r1
        L6:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            com.umeng.analytics.pro.j r3 = com.umeng.analytics.pro.j.a(r3)     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            com.umeng.analytics.pro.l$a r4 = com.umeng.analytics.pro.l.a.BEGIN     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r4) goto L53
            java.lang.Object r8 = r8.opt(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            long r8 = r8.longValue()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            r4.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            r4.put(r0, r7)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            goto L7e
        L4f:
            r2 = r3
            goto L8e
        L51:
            r2 = r3
            goto L94
        L53:
            com.umeng.analytics.pro.l$a r0 = com.umeng.analytics.pro.l.a.INSTANTSESSIONBEGIN     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r0) goto L5b
            r6.b(r7, r8, r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            goto L7e
        L5b:
            com.umeng.analytics.pro.l$a r0 = com.umeng.analytics.pro.l.a.END     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r0) goto L63
            r6.a(r7, r8, r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            goto L7e
        L63:
            com.umeng.analytics.pro.l$a r0 = com.umeng.analytics.pro.l.a.PAGE     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r0) goto L6d
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            goto L7e
        L6d:
            com.umeng.analytics.pro.l$a r0 = com.umeng.analytics.pro.l.a.AUTOPAGE     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r0) goto L77
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            goto L7e
        L77:
            com.umeng.analytics.pro.l$a r0 = com.umeng.analytics.pro.l.a.NEWSESSION     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            if (r9 != r0) goto L7e
            r6.c(r7, r8, r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
        L7e:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L51
            r3.endTransaction()     // Catch: java.lang.Throwable -> L84
        L84:
            android.content.Context r7 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r7 = com.umeng.analytics.pro.j.a(r7)
            r7.b()
            goto L9c
        L8e:
            if (r2 == 0) goto L84
        L90:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L84
            goto L84
        L94:
            android.content.Context r7 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L9d
            com.umeng.analytics.pro.k.a(r7)     // Catch: java.lang.Throwable -> L9d
            if (r2 == 0) goto L84
            goto L90
        L9c:
            return r1
        L9d:
            r7 = move-exception
            if (r2 == 0) goto La3
            r2.endTransaction()     // Catch: java.lang.Throwable -> La3
        La3:
            android.content.Context r8 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r8 = com.umeng.analytics.pro.j.a(r8)
            r8.b()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.l$a):boolean");
    }

    public void b(boolean z2, boolean z3) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                if (z3) {
                    if (z2) {
                        sQLiteDatabaseA.execSQL("delete from __sd");
                    }
                } else if (this.f49449i.size() > 0) {
                    for (int i2 = 0; i2 < this.f49449i.size(); i2++) {
                        sQLiteDatabaseA.delete(h.d.f49408a, "__ii=?", new String[]{this.f49449i.get(i2)});
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        String strC;
        try {
            long jLongValue = ((Long) jSONObject.opt(h.d.a.f49415g)).longValue();
            Object objOpt = jSONObject.opt(h.d.a.f49416h);
            long jLongValue2 = (objOpt == null || !(objOpt instanceof Long)) ? 0L : ((Long) objOpt).longValue();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            String strC2 = "";
            if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) {
                strC = "";
            } else {
                strC = c(jSONObjectOptJSONObject.toString());
            }
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC2 = c(jSONObjectOptJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + jLongValue + "\", " + h.d.a.f49416h + "=\"" + jLongValue2 + "\", __sp=\"" + strC + "\", __pp=\"" + strC2 + "\" where __ii=\"" + str + "\"");
        } catch (Throwable unused) {
        }
    }

    public long a(String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorA = null;
        long j2 = 0;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            sQLiteDatabaseA = null;
        } catch (Throwable th) {
            th = th;
            sQLiteDatabaseA = null;
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            cursorA = a(h.d.f49408a, sQLiteDatabaseA, new String[]{h.d.a.f49415g}, "__ii=? ", new String[]{str}, null, null, null, null);
            if (cursorA != null) {
                cursorA.moveToFirst();
                j2 = cursorA.getLong(cursorA.getColumnIndex(h.d.a.f49415g));
            }
            if (cursorA != null) {
                cursorA.close();
            }
        } catch (Exception unused3) {
            if (cursorA != null) {
                cursorA.close();
            }
            if (sQLiteDatabaseA != null) {
                sQLiteDatabaseA.endTransaction();
            }
            j.a(f49444d).b();
            return j2;
        } catch (Throwable th2) {
            th = th2;
            if (cursorA != null) {
                try {
                    cursorA.close();
                } catch (Exception unused4) {
                    j.a(f49444d).b();
                    throw th;
                }
            }
            if (sQLiteDatabaseA != null) {
                sQLiteDatabaseA.endTransaction();
            }
            j.a(f49444d).b();
            throw th;
        }
        sQLiteDatabaseA.endTransaction();
        j.a(f49444d).b();
        return j2;
    }

    public void b(String str) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                if (!TextUtils.isEmpty(str)) {
                    sQLiteDatabaseA.delete(h.c.f49395a, "__ii=?", new String[]{str});
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0070 A[Catch: all -> 0x0062, TryCatch #1 {all -> 0x0062, blocks: (B:21:0x004f, B:23:0x0055, B:25:0x0065, B:27:0x0070, B:28:0x0075, B:35:0x0084, B:37:0x008a, B:39:0x0090, B:41:0x0096, B:43:0x00a4, B:40:0x0093), top: B:53:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x004f A[EXC_TOP_SPLITTER, LOOP:1: B:53:0x004f->B:23:0x0055, LOOP_START, PHI: r12
      0x004f: PHI (r12v2 java.lang.String) = (r12v7 java.lang.String), (r12v3 java.lang.String) binds: [B:20:0x004d, B:23:0x0055] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @android.annotation.SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r15, org.json.JSONObject r16, android.database.sqlite.SQLiteDatabase r17, java.lang.String r18) throws org.json.JSONException {
        /*
            r14 = this;
            r0 = r16
            r10 = r18
            java.lang.String r11 = "=\""
            java.lang.String r1 = "__b"
            java.lang.String r2 = "__a"
            r12 = 0
            boolean r3 = r2.equals(r10)     // Catch: java.lang.Throwable -> Ldb
            if (r3 == 0) goto L21
            org.json.JSONArray r0 = r0.optJSONArray(r2)     // Catch: java.lang.Throwable -> Ldb
            if (r0 == 0) goto Le0
            int r1 = r0.length()     // Catch: java.lang.Throwable -> Ldb
            if (r1 > 0) goto L1f
            goto Le0
        L1f:
            r13 = r0
            goto L36
        L21:
            boolean r2 = r1.equals(r10)     // Catch: java.lang.Throwable -> Ldb
            if (r2 == 0) goto L35
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: java.lang.Throwable -> Ldb
            if (r0 == 0) goto Le0
            int r1 = r0.length()     // Catch: java.lang.Throwable -> Ldb
            if (r1 > 0) goto L1f
            goto Le0
        L35:
            r13 = r12
        L36:
            java.lang.String[] r3 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r1 = "__sd"
            java.lang.String r4 = "__ii=? "
            java.lang.String[] r5 = new java.lang.String[]{r15}     // Catch: java.lang.Throwable -> Ldb
            r8 = 0
            r9 = 0
            r6 = 0
            r7 = 0
            r0 = r14
            r2 = r17
            android.database.Cursor r1 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> Ldb
            if (r1 == 0) goto L65
        L4f:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L62
            if (r2 == 0) goto L65
            int r2 = r1.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.String r12 = r14.d(r2)     // Catch: java.lang.Throwable -> L62
            goto L4f
        L62:
            r12 = r1
            goto Ldb
        L65:
            org.json.JSONArray r2 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L62
            r2.<init>()     // Catch: java.lang.Throwable -> L62
            boolean r3 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Throwable -> L62
            if (r3 != 0) goto L75
            org.json.JSONArray r2 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L62
            r2.<init>(r12)     // Catch: java.lang.Throwable -> L62
        L75:
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L62
            r4 = 1000(0x3e8, float:1.401E-42)
            if (r3 <= r4) goto L83
            if (r1 == 0) goto Le0
            r1.close()
            return
        L83:
            r3 = 0
        L84:
            int r4 = r13.length()     // Catch: java.lang.Throwable -> L62
            if (r3 >= r4) goto L96
            org.json.JSONObject r4 = r13.getJSONObject(r3)     // Catch: java.lang.Throwable -> L62 org.json.JSONException -> L93
            if (r4 == 0) goto L93
            r2.put(r4)     // Catch: java.lang.Throwable -> L62
        L93:
            int r3 = r3 + 1
            goto L84
        L96:
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = r14.c(r2)     // Catch: java.lang.Throwable -> L62
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L62
            if (r3 != 0) goto Ld5
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62
            r3.<init>()     // Catch: java.lang.Throwable -> L62
            java.lang.String r4 = "update __sd set "
            r3.append(r4)     // Catch: java.lang.Throwable -> L62
            r3.append(r10)     // Catch: java.lang.Throwable -> L62
            r3.append(r11)     // Catch: java.lang.Throwable -> L62
            r3.append(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "\" where "
            r3.append(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "__ii"
            r3.append(r2)     // Catch: java.lang.Throwable -> L62
            r3.append(r11)     // Catch: java.lang.Throwable -> L62
            r3.append(r15)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "\""
            r3.append(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L62
            r3 = r17
            r3.execSQL(r2)     // Catch: java.lang.Throwable -> L62
        Ld5:
            if (r1 == 0) goto Le0
            r1.close()
            goto Le0
        Ldb:
            if (r12 == 0) goto Le0
            r12.close()
        Le0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(java.lang.String, org.json.JSONObject, android.database.sqlite.SQLiteDatabase, java.lang.String):void");
    }

    public JSONObject a(boolean z2) {
        a();
        this.f49450j.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z2) {
            a(jSONObject, z2);
            b(jSONObject, (String) null);
            a(jSONObject, (String) null);
            return jSONObject;
        }
        String strA = a(jSONObject, z2);
        if (!TextUtils.isEmpty(strA)) {
            b(jSONObject, strA);
            a(jSONObject, strA);
        }
        return jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x017b A[EXC_TOP_SPLITTER, PHI: r4 r13
      0x017b: PHI (r4v6 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
      (r4v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:77:0x019a, B:84:0x01aa, B:68:0x0176, B:69:0x0178] A[DONT_GENERATE, DONT_INLINE]
      0x017b: PHI (r13v11 ??) = (r13v6 ??), (r13v7 ??), (r13v0 ??), (r13v0 ??) binds: [B:77:0x019a, B:84:0x01aa, B:68:0x0176, B:69:0x0178] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x017e A[PHI: r4 r13
      0x017e: PHI (r4v5 android.database.sqlite.SQLiteDatabase) = 
      (r4v3 android.database.sqlite.SQLiteDatabase)
      (r4v4 android.database.sqlite.SQLiteDatabase)
      (r4v6 android.database.sqlite.SQLiteDatabase)
     binds: [B:77:0x019a, B:84:0x01aa, B:70:0x017b] A[DONT_GENERATE, DONT_INLINE]
      0x017e: PHI (r13v10 ??) = (r13v6 ??), (r13v7 ??), (r13v11 ??) binds: [B:77:0x019a, B:84:0x01aa, B:70:0x017b] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v7, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.json.JSONObject r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0216 A[PHI: r0 r6 r16
      0x0216: PHI (r0v5 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v6 java.lang.String) binds: [B:97:0x0244, B:104:0x0253, B:86:0x0213] A[DONT_GENERATE, DONT_INLINE]
      0x0216: PHI (r6v5 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v4 android.database.Cursor), (r6v6 android.database.Cursor) binds: [B:97:0x0244, B:104:0x0253, B:86:0x0213] A[DONT_GENERATE, DONT_INLINE]
      0x0216: PHI (r16v5 android.database.sqlite.SQLiteDatabase) = 
      (r16v3 android.database.sqlite.SQLiteDatabase)
      (r16v4 android.database.sqlite.SQLiteDatabase)
      (r16v6 android.database.sqlite.SQLiteDatabase)
     binds: [B:97:0x0244, B:104:0x0253, B:86:0x0213] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0213 A[EXC_TOP_SPLITTER, PHI: r0 r6 r16
      0x0213: PHI (r0v6 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v39 java.lang.String), (r0v39 java.lang.String) binds: [B:97:0x0244, B:104:0x0253, B:84:0x020e, B:85:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0213: PHI (r6v6 android.database.Cursor) = 
      (r6v3 android.database.Cursor)
      (r6v4 android.database.Cursor)
      (r6v36 android.database.Cursor)
      (r6v36 android.database.Cursor)
     binds: [B:97:0x0244, B:104:0x0253, B:84:0x020e, B:85:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0213: PHI (r16v6 android.database.sqlite.SQLiteDatabase) = 
      (r16v3 android.database.sqlite.SQLiteDatabase)
      (r16v4 android.database.sqlite.SQLiteDatabase)
      (r16v28 android.database.sqlite.SQLiteDatabase)
      (r16v28 android.database.sqlite.SQLiteDatabase)
     binds: [B:97:0x0244, B:104:0x0253, B:84:0x020e, B:85:0x0210] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(org.json.JSONObject r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|(4:41|3|(1:(1:6))(3:7|(4:9|(3:11|(2:13|45)(1:46)|14)|44|15)|(1:17))|18)|36|19|40|20|29|(1:(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r6, boolean r7) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            com.umeng.analytics.pro.j r1 = com.umeng.analytics.pro.j.a(r1)     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            if (r7 == 0) goto L18
            if (r6 == 0) goto L45
            java.lang.String r6 = "delete from __is"
            r0.execSQL(r6)     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            goto L45
        L18:
            java.util.List<java.lang.String> r6 = r5.f49452l     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r7 = 0
            if (r6 <= 0) goto L3e
            r1 = r7
        L22:
            if (r7 >= r6) goto L3d
            java.util.List<java.lang.String> r2 = r5.f49452l     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.Object r2 = r2.get(r7)     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            if (r2 != 0) goto L2f
            r1 = 1
        L2f:
            java.lang.String r3 = "__is"
            java.lang.String r4 = "__ii=?"
            java.lang.String[] r2 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r0.delete(r3, r4, r2)     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            int r7 = r7 + 1
            goto L22
        L3d:
            r7 = r1
        L3e:
            if (r7 == 0) goto L45
            java.lang.String r6 = "delete from __is where __ii is null"
            r0.execSQL(r6)     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
        L45:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L55 android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
        L48:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4b
        L4b:
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r6 = com.umeng.analytics.pro.j.a(r6)
            r6.b()
            goto L67
        L55:
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L5d
            com.umeng.analytics.pro.k.a(r6)     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L4b
            goto L48
        L5d:
            r6 = move-exception
            goto L68
        L5f:
            android.content.Context r6 = com.umeng.analytics.pro.l.f49444d     // Catch: java.lang.Throwable -> L5d
            com.umeng.analytics.pro.k.a(r6)     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L4b
            goto L48
        L67:
            return
        L68:
            if (r0 == 0) goto L6d
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r7 = com.umeng.analytics.pro.l.f49444d
            com.umeng.analytics.pro.j r7 = com.umeng.analytics.pro.j.a(r7)
            r7.b()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.l.a(boolean, boolean):void");
    }

    public void a(boolean z2, String str) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = j.a(f49444d).a();
                sQLiteDatabaseA.beginTransaction();
                if (!TextUtils.isEmpty(str)) {
                    sQLiteDatabaseA.delete(h.a.f49371a, "__i=?", new String[]{str});
                    sQLiteDatabaseA.delete(h.b.f49382a, "__i=?", new String[]{str});
                    this.f49450j.clear();
                    sQLiteDatabaseA.delete(h.d.f49408a, "__ii=?", new String[]{str});
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                j.a(f49444d).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            k.a(f49444d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
        }
    }
}
