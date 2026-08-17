package XI.xo.XI.XI;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import com.anythink.core.common.f.f;

/* loaded from: classes.dex */
public class CA {
    public static volatile CA J9;
    public BroadcastReceiver vs;

    /* renamed from: XI, reason: collision with root package name */
    public XI f714XI = new XI("udid");

    /* renamed from: K0, reason: collision with root package name */
    public XI f713K0 = new XI("oaid");
    public XI xo = new XI("vaid");
    public XI kM = new XI("aaid");
    public K0 CA = new K0();

    public static final CA XI() {
        if (J9 == null) {
            synchronized (CA.class) {
                try {
                    if (J9 == null) {
                        J9 = new CA();
                    }
                } finally {
                }
            }
        }
        return J9;
    }

    public static kM XI(Cursor cursor) {
        kM kMVar = new kM(null, 0);
        if (!cursor.isClosed()) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex(f.a.f3244d);
            if (columnIndex >= 0) {
                kMVar.f720XI = cursor.getString(columnIndex);
            }
            int columnIndex2 = cursor.getColumnIndex("code");
            if (columnIndex2 >= 0) {
                kMVar.f719K0 = cursor.getInt(columnIndex2);
            }
            int columnIndex3 = cursor.getColumnIndex("expired");
            if (columnIndex3 >= 0) {
                kMVar.kM = cursor.getLong(columnIndex3);
            }
        }
        return kMVar;
    }

    public final synchronized void XI(Context context) {
        if (this.vs != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        xo xoVar = new xo();
        this.vs = xoVar;
        context.registerReceiver(xoVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String XI(android.content.Context r10, XI.xo.XI.XI.XI r11) throws java.lang.Throwable {
        /*
            r9 = this;
            r1 = 0
            if (r11 != 0) goto L4
            return r1
        L4:
            long r2 = r11.f718XI
            long r4 = java.lang.System.currentTimeMillis()
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L11
            java.lang.String r10 = r11.f717K0
            return r10
        L11:
            r0 = 1
            boolean r2 = r9.XI(r10, r0)
            if (r2 != 0) goto L19
            return r1
        L19:
            java.lang.String r2 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r4 = android.net.Uri.parse(r2)
            android.content.ContentResolver r3 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r2 = r11.kM     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String[] r7 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r8 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r3 = 0
            if (r2 == 0) goto L6a
            XI.xo.XI.XI.kM r4 = XI(r2)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            java.lang.String r1 = r4.f720XI     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r11.f717K0 = r1     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            long r5 = r4.kM     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r11.f718XI = r5     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            int r5 = r4.f719K0     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r11.xo = r5     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            int r11 = r4.f719K0     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r4 = 1000(0x3e8, float:1.401E-42)
            if (r11 == r4) goto L7f
            r9.XI(r10)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            boolean r11 = r9.XI(r10, r3)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            if (r11 != 0) goto L7f
            boolean r10 = r9.XI(r10, r0)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r11.<init>()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            java.lang.String r0 = "not support, forceQuery isSupported: "
        L5d:
            r11.append(r0)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            goto L7c
        L61:
            r0 = move-exception
            r10 = r0
            r1 = r2
            goto L95
        L65:
            r0 = move-exception
            r10 = r0
            r11 = r1
            r1 = r2
            goto L89
        L6a:
            boolean r11 = r9.XI(r10, r3)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            if (r11 == 0) goto L7f
            boolean r10 = r9.XI(r10, r0)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            r11.<init>()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
            java.lang.String r0 = "forceQuery isSupported : "
            goto L5d
        L7c:
            r11.append(r10)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L65
        L7f:
            if (r2 == 0) goto L82
            goto L90
        L82:
            return r1
        L83:
            r0 = move-exception
            r10 = r0
            goto L95
        L86:
            r0 = move-exception
            r10 = r0
            r11 = r1
        L89:
            r10.getMessage()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L94
            r2 = r1
            r1 = r11
        L90:
            r2.close()
            r11 = r1
        L94:
            return r11
        L95:
            if (r1 == 0) goto L9a
            r1.close()
        L9a:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: XI.xo.XI.XI.CA.XI(android.content.Context, XI.xo.XI.XI.XI):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean XI(android.content.Context r11, boolean r12) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r10 = this;
            java.lang.String r1 = "com.meizu.safe"
            XI.xo.XI.XI.K0 r0 = r10.CA
            java.lang.Boolean r0 = r0.f715K0
            r2 = 0
            if (r0 == 0) goto L13
            if (r12 != 0) goto L13
            if (r0 == 0) goto L12
            boolean r11 = r0.booleanValue()
            return r11
        L12:
            return r2
        L13:
            android.content.pm.PackageManager r12 = r11.getPackageManager()
            if (r12 != 0) goto L1a
            return r2
        L1a:
            r3 = 0
            android.content.pm.PackageInfo r0 = r12.getPackageInfo(r1, r2)     // Catch: java.lang.Exception -> L24
            if (r0 == 0) goto L2b
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Exception -> L24
            goto L2c
        L24:
            r0 = move-exception
            r0.printStackTrace()
            r0.getMessage()
        L2b:
            r0 = r3
        L2c:
            XI.xo.XI.XI.K0 r4 = r10.CA
            java.lang.Boolean r5 = r4.f715K0
            if (r5 == 0) goto L4d
            boolean r5 = android.text.TextUtils.isEmpty(r0)
            if (r5 == 0) goto L3a
            r4 = r2
            goto L40
        L3a:
            java.lang.String r4 = r4.f716XI
            boolean r4 = android.text.TextUtils.equals(r4, r0)
        L40:
            if (r4 == 0) goto L4d
            XI.xo.XI.XI.K0 r11 = r10.CA
            java.lang.Boolean r11 = r11.f715K0
            if (r11 == 0) goto L4c
            boolean r2 = r11.booleanValue()
        L4c:
            return r2
        L4d:
            XI.xo.XI.XI.K0 r4 = r10.CA
            r4.f716XI = r0
            java.lang.String r0 = "com.meizu.flyme.openidsdk"
            android.content.pm.ProviderInfo r12 = r12.resolveContentProvider(r0, r2)
            r0 = 1
            if (r12 != 0) goto L5b
            goto L6b
        L5b:
            android.content.pm.ApplicationInfo r4 = r12.applicationInfo
            int r4 = r4.flags
            r4 = r4 & r0
            if (r4 != 0) goto L63
            goto L6b
        L63:
            java.lang.String r12 = r12.packageName
            boolean r12 = android.text.TextUtils.equals(r1, r12)
            if (r12 != 0) goto L6d
        L6b:
            r12 = r2
            goto L6e
        L6d:
            r12 = r0
        L6e:
            if (r12 == 0) goto Lc1
            java.lang.String r12 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r5 = android.net.Uri.parse(r12)
            android.content.ContentResolver r4 = r11.getContentResolver()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            java.lang.String r11 = "supported"
            java.lang.String[] r8 = new java.lang.String[]{r11}     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            r9 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r3 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            if (r3 == 0) goto La9
            XI.xo.XI.XI.kM r11 = XI(r3)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            int r12 = r11.f719K0     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            r1 = 1000(0x3e8, float:1.401E-42)
            if (r1 != r12) goto La4
            java.lang.String r12 = "0"
            java.lang.String r11 = r11.f720XI     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            boolean r11 = r12.equals(r11)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La1
            if (r11 == 0) goto La5
            goto La4
        L9e:
            r0 = move-exception
            r11 = r0
            goto Lbb
        La1:
            r0 = move-exception
            r11 = r0
            goto Lac
        La4:
            r2 = r0
        La5:
            r3.close()
            goto Lb2
        La9:
            if (r3 == 0) goto Lb2
            goto Lb1
        Lac:
            r11.getMessage()     // Catch: java.lang.Throwable -> L9e
            if (r3 == 0) goto Lb2
        Lb1:
            goto La5
        Lb2:
            XI.xo.XI.XI.K0 r11 = r10.CA
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r2)
            r11.f715K0 = r12
            return r2
        Lbb:
            if (r3 == 0) goto Lc0
            r3.close()
        Lc0:
            throw r11
        Lc1:
            XI.xo.XI.XI.K0 r11 = r10.CA
            java.lang.Boolean r12 = java.lang.Boolean.FALSE
            r11.f715K0 = r12
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: XI.xo.XI.XI.CA.XI(android.content.Context, boolean):boolean");
    }
}
