package com.octopus.ad.c.j;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.octopus.ad.d.b.f;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f33850a;

    public a(Context context) {
        this.f33850a = context;
    }

    public boolean a(int i2, String str, ContentValues[] contentValuesArr) {
        Uri uri;
        if (i2 == 6) {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDBLACK_" + str);
        } else if (i2 != 7) {
            uri = null;
        } else {
            uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/STATISTICS_" + str);
        }
        if (uri == null) {
            return false;
        }
        try {
            int iBulkInsert = this.f33850a.getContentResolver().bulkInsert(uri, contentValuesArr);
            f.a("VMS_SDK_DB", "insert:" + iBulkInsert);
            return iBulkInsert != 0;
        } catch (Exception unused) {
            f.d("VMS_SDK_DB", "return insert is error");
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(int r9, java.lang.String r10) {
        /*
            r8 = this;
            java.lang.String r0 = "VMS_SDK_DB"
            r1 = 0
            if (r9 == 0) goto L67
            r2 = 1
            if (r9 == r2) goto L51
            r2 = 2
            if (r9 == r2) goto L3b
            r2 = 3
            if (r9 == r2) goto L34
            r2 = 4
            if (r9 == r2) goto L1e
            r10 = 5
            if (r9 == r10) goto L16
            r3 = r1
            goto L6e
        L16:
            java.lang.String r9 = "content://com.vivo.abe.exidentifier/guid"
            android.net.Uri r9 = android.net.Uri.parse(r9)
        L1c:
            r3 = r9
            goto L6e
        L1e:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r2 = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS_"
            r9.append(r2)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1c
        L34:
            java.lang.String r9 = "content://com.vivo.vms.IdProvider/IdentifierId/UDID"
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1c
        L3b:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r2 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
            r9.append(r2)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1c
        L51:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r2 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
            r9.append(r2)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1c
        L67:
            java.lang.String r9 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1c
        L6e:
            if (r3 != 0) goto L71
            return r1
        L71:
            android.content.Context r9 = r8.f33850a     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            r6 = 0
            r7 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            if (r9 == 0) goto L95
            boolean r10 = r9.moveToNext()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            if (r10 == 0) goto L9a
            java.lang.String r10 = "value"
            int r10 = r9.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            java.lang.String r1 = r9.getString(r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
            goto L9a
        L92:
            r0 = move-exception
            r9 = r0
            goto La0
        L95:
            java.lang.String r10 = "return cursor is null,return"
            com.octopus.ad.d.b.f.a(r0, r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
        L9a:
            if (r9 == 0) goto L9f
            r9.close()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La1
        L9f:
            return r1
        La0:
            throw r9
        La1:
            java.lang.String r9 = "return cursor is error"
            com.octopus.ad.d.b.f.d(r0, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.c.j.a.a(int, java.lang.String):java.lang.String");
    }
}
