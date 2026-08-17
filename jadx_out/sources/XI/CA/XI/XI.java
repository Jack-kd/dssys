package XI.CA.XI;

import android.content.Context;

/* loaded from: classes.dex */
public class XI {

    /* renamed from: XI, reason: collision with root package name */
    public Context f692XI;

    public XI(Context context) {
        this.f692XI = context;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(3:4|(2:6|(2:8|(7:10|42|17|(4:40|19|(1:21)|24)|(1:29)|38|39)(1:11))(1:13))(1:15)|14)(1:16)|12|42|17|(0)|(0)|38|39) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0064, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006c, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String XI(int r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            r9 = this;
            r1 = 0
            if (r10 == 0) goto L30
            r0 = 1
            if (r10 == r0) goto L28
            r0 = 2
            if (r10 == r0) goto L16
            r11 = 4
            if (r10 == r11) goto Le
            r3 = r1
            goto L33
        Le:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS"
        L10:
            android.net.Uri r10 = android.net.Uri.parse(r10)
            r3 = r10
            goto L33
        L16:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r0 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
        L1d:
            r10.append(r0)
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            goto L10
        L28:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r0 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
            goto L1d
        L30:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
            goto L10
        L33:
            android.content.Context r10 = r9.f692XI     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L6c
            android.content.ContentResolver r2 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L6c
            r6 = 0
            r7 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r10 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L6c
            if (r10 == 0) goto L60
            boolean r11 = r10.moveToNext()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L5c
            if (r11 == 0) goto L58
            java.lang.String r11 = "value"
            int r11 = r10.getColumnIndex(r11)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L5c
            java.lang.String r1 = r10.getString(r11)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L5c
            goto L58
        L54:
            r0 = move-exception
            r11 = r0
            r1 = r10
            goto L66
        L58:
            r10.close()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L5c
            goto L60
        L5c:
            r8 = r1
            r1 = r10
            r10 = r8
            goto L6d
        L60:
            if (r10 == 0) goto L63
            goto L72
        L63:
            return r1
        L64:
            r0 = move-exception
            r11 = r0
        L66:
            if (r1 == 0) goto L6b
            r1.close()
        L6b:
            throw r11
        L6c:
            r10 = r1
        L6d:
            if (r1 == 0) goto L76
            r8 = r1
            r1 = r10
            r10 = r8
        L72:
            r10.close()
            r10 = r1
        L76:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: XI.CA.XI.XI.XI(int, java.lang.String):java.lang.String");
    }
}
