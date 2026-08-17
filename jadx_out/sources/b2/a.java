package b2;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public Context f1171a;

    public a(Context context) {
        this.f1171a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(int r9, java.lang.String r10) throws java.lang.Throwable {
        /*
            r8 = this;
            r1 = 0
            if (r9 == 0) goto L65
            r0 = 1
            if (r9 == r0) goto L4f
            r0 = 2
            if (r9 == r0) goto L39
            r0 = 3
            if (r9 == r0) goto L32
            r0 = 4
            if (r9 == r0) goto L1c
            r10 = 5
            if (r9 == r10) goto L14
            r3 = r1
            goto L6c
        L14:
            java.lang.String r9 = "content://com.vivo.abe.exidentifier/guid"
            android.net.Uri r9 = android.net.Uri.parse(r9)
        L1a:
            r3 = r9
            goto L6c
        L1c:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS_"
            r9.append(r0)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1a
        L32:
            java.lang.String r9 = "content://com.vivo.vms.IdProvider/IdentifierId/UDID"
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1a
        L39:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
            r9.append(r0)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1a
        L4f:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
            r9.append(r0)
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1a
        L65:
            java.lang.String r9 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
            android.net.Uri r9 = android.net.Uri.parse(r9)
            goto L1a
        L6c:
            if (r3 != 0) goto L6f
            return r1
        L6f:
            android.content.Context r9 = r8.f1171a     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> L9d
            android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> L9d
            r6 = 0
            r7 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> L9d
            if (r9 == 0) goto L94
            boolean r10 = r9.moveToNext()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L9e
            if (r10 == 0) goto L94
            java.lang.String r10 = "value"
            int r10 = r9.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L9e
            java.lang.String r1 = r9.getString(r10)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L9e
            goto L94
        L90:
            r0 = move-exception
            r10 = r0
            r1 = r9
            goto Lab
        L94:
            if (r9 == 0) goto L99
            r9.close()
        L99:
            return r1
        L9a:
            r0 = move-exception
            r10 = r0
            goto Lab
        L9d:
            r9 = r1
        L9e:
            java.lang.String r10 = "VMS_SDK_DB"
            java.lang.String r0 = "return cursor is error"
            android.util.Log.e(r10, r0)     // Catch: java.lang.Throwable -> L90
            if (r9 == 0) goto Laa
            r9.close()
        Laa:
            return r1
        Lab:
            if (r1 == 0) goto Lb0
            r1.close()
        Lb0:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.a.a(int, java.lang.String):java.lang.String");
    }

    public boolean b(int i2, String str, ContentValues[] contentValuesArr) {
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
        } catch (Exception unused) {
            Log.e("VMS_SDK_DB", "return insert is error");
        }
        return this.f1171a.getContentResolver().bulkInsert(uri, contentValuesArr) != 0;
    }
}
