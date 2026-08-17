package Z1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.f;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: g, reason: collision with root package name */
    public static volatile f f741g;

    /* renamed from: f, reason: collision with root package name */
    public BroadcastReceiver f747f;

    /* renamed from: a, reason: collision with root package name */
    public a f742a = new a("udid");

    /* renamed from: b, reason: collision with root package name */
    public a f743b = new a("oaid");

    /* renamed from: d, reason: collision with root package name */
    public a f745d = new a("vaid");

    /* renamed from: c, reason: collision with root package name */
    public a f744c = new a("aaid");

    /* renamed from: e, reason: collision with root package name */
    public c f746e = new c();

    public static d a(Cursor cursor) {
        d dVar = new d(null, 0);
        if (cursor == null) {
            e("parseValue fail, cursor is null.");
            return dVar;
        }
        if (cursor.isClosed()) {
            e("parseValue fail, cursor is closed.");
            return dVar;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(f.a.f3244d);
        if (columnIndex >= 0) {
            dVar.f738a = cursor.getString(columnIndex);
        } else {
            e("parseValue fail, index < 0.");
        }
        int columnIndex2 = cursor.getColumnIndex("code");
        if (columnIndex2 >= 0) {
            dVar.f739b = cursor.getInt(columnIndex2);
        } else {
            e("parseCode fail, index < 0.");
        }
        int columnIndex3 = cursor.getColumnIndex("expired");
        if (columnIndex3 >= 0) {
            dVar.f740c = cursor.getLong(columnIndex3);
            return dVar;
        }
        e("parseExpired fail, index < 0.");
        return dVar;
    }

    public static final f b() {
        if (f741g == null) {
            synchronized (f.class) {
                try {
                    if (f741g == null) {
                        f741g = new f();
                    }
                } finally {
                }
            }
        }
        return f741g;
    }

    public static String d(PackageManager packageManager, String str) {
        ProviderInfo providerInfoResolveContentProvider;
        if (packageManager == null || (providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0)) == null || (providerInfoResolveContentProvider.applicationInfo.flags & 1) == 0) {
            return null;
        }
        return providerInfoResolveContentProvider.packageName;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean f(android.content.Context r9) {
        /*
            java.lang.String r0 = "querySupport version : 1.0.8"
            e(r0)
            java.lang.String r0 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r2 = android.net.Uri.parse(r0)
            r7 = 0
            r8 = 0
            android.content.ContentResolver r1 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            java.lang.String r9 = "supported"
            java.lang.String[] r5 = new java.lang.String[]{r9}     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            r6 = 0
            r3 = 0
            r4 = 0
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            if (r8 == 0) goto L40
            Z1.d r9 = a(r8)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            int r0 = r9.f739b     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            r1 = 1000(0x3e8, float:1.401E-42)
            if (r1 != r0) goto L3b
            java.lang.String r0 = "0"
            java.lang.String r9 = r9.f738a     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            boolean r9 = r0.equals(r9)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L38
            if (r9 == 0) goto L3c
            goto L3b
        L35:
            r0 = move-exception
            r9 = r0
            goto L5f
        L38:
            r0 = move-exception
            r9 = r0
            goto L46
        L3b:
            r7 = 1
        L3c:
            r8.close()
            return r7
        L40:
            if (r8 == 0) goto L5e
        L42:
            r8.close()
            goto L5e
        L46:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            java.lang.String r1 = "querySupport, Exception : "
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L35
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L35
            r0.append(r9)     // Catch: java.lang.Throwable -> L35
            java.lang.String r9 = r0.toString()     // Catch: java.lang.Throwable -> L35
            e(r9)     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L5e
            goto L42
        L5e:
            return r7
        L5f:
            if (r8 == 0) goto L64
            r8.close()
        L64:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: Z1.f.f(android.content.Context):boolean");
    }

    public static String i(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            e("getAppVersion, Exception : " + e2.getMessage());
            return null;
        }
    }

    public final String c(Context context, a aVar) {
        String str;
        if (aVar == null) {
            str = "getId, openId = null.";
        } else {
            if (aVar.d()) {
                return aVar.f732b;
            }
            if (g(context, true)) {
                return h(context, aVar);
            }
            str = "getId, isSupported = false.";
        }
        e(str);
        return null;
    }

    public final boolean g(Context context, boolean z2) throws PackageManager.NameNotFoundException {
        if (this.f746e.b() && !z2) {
            return this.f746e.e();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        String strD = d(packageManager, "com.meizu.flyme.openidsdk");
        if (TextUtils.isEmpty(strD)) {
            return false;
        }
        String strI = i(packageManager, strD);
        if (this.f746e.b() && this.f746e.c(strI)) {
            e("use same version cache, safeVersion : ".concat(String.valueOf(strI)));
            return this.f746e.e();
        }
        this.f746e.d(strI);
        boolean zF = f(context);
        e("query support, result : ".concat(String.valueOf(zF)));
        this.f746e.a(zF);
        return zF;
    }

    public final String h(Context context, a aVar) throws Throwable {
        Exception exc;
        String str;
        Throwable th;
        Cursor cursorQuery;
        String strConcat;
        e("queryId : " + aVar.f733c);
        Cursor cursor = null;
        str = null;
        str = null;
        String str2 = null;
        cursor = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{aVar.f733c}, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            exc = e2;
            str = null;
        }
        try {
            if (cursorQuery != null) {
                d dVarA = a(cursorQuery);
                str2 = dVarA.f738a;
                aVar.c(str2);
                aVar.b(dVarA.f740c);
                aVar.a(dVarA.f739b);
                e(aVar.f733c + " errorCode : " + aVar.f734d);
                if (dVarA.f739b != 1000) {
                    j(context);
                    if (!g(context, false)) {
                        strConcat = "not support, forceQuery isSupported: ".concat(String.valueOf(g(context, true)));
                        e(strConcat);
                    }
                }
            } else if (g(context, false)) {
                strConcat = "forceQuery isSupported : ".concat(String.valueOf(g(context, true)));
                e(strConcat);
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return str2;
        } catch (Exception e3) {
            exc = e3;
            str = str2;
            cursor = cursorQuery;
            e("queryId, Exception : " + exc.getMessage());
            if (cursor != null) {
                cursor.close();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            cursor = cursorQuery;
            if (cursor == null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
    }

    public final synchronized void j(Context context) {
        if (this.f747f != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        e eVar = new e();
        this.f747f = eVar;
        context.registerReceiver(eVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    public static void e(String str) {
    }
}
