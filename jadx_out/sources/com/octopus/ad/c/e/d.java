package com.octopus.ad.c.e;

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

/* loaded from: classes4.dex */
public class d {

    /* renamed from: e, reason: collision with root package name */
    private static volatile d f33808e = null;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f33809f = false;

    /* renamed from: g, reason: collision with root package name */
    private BroadcastReceiver f33814g;

    /* renamed from: a, reason: collision with root package name */
    b f33810a = new b("udid");

    /* renamed from: b, reason: collision with root package name */
    b f33811b = new b("oaid");

    /* renamed from: c, reason: collision with root package name */
    b f33812c = new b("vaid");

    /* renamed from: d, reason: collision with root package name */
    b f33813d = new b("aaid");

    /* renamed from: h, reason: collision with root package name */
    private e f33815h = new e();

    private d() {
    }

    public static final d a() {
        if (f33808e == null) {
            synchronized (d.class) {
                try {
                    if (f33808e == null) {
                        f33808e = new d();
                    }
                } finally {
                }
            }
        }
        return f33808e;
    }

    private static String b(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private String b(Context context, b bVar) {
        String str = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{bVar.f33805c}, null);
            if (cursorQuery != null) {
                f fVarA = a(cursorQuery);
                str = fVarA.f33818a;
                bVar.a(str);
                bVar.a(fVarA.f33820c);
                bVar.a(fVarA.f33819b);
                if (fVarA.f33819b != 1000) {
                    b(context);
                    a(context, false);
                }
            } else {
                a(context, false);
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return str;
        } catch (Exception unused) {
            return str;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static f a(Cursor cursor) {
        f fVar = new f(null, 0);
        if (cursor != null && !cursor.isClosed()) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex(f.a.f3244d);
            if (columnIndex >= 0) {
                fVar.f33818a = cursor.getString(columnIndex);
            }
            int columnIndex2 = cursor.getColumnIndex("code");
            if (columnIndex2 >= 0) {
                fVar.f33819b = cursor.getInt(columnIndex2);
            }
            int columnIndex3 = cursor.getColumnIndex("expired");
            if (columnIndex3 >= 0) {
                fVar.f33820c = cursor.getLong(columnIndex3);
            }
        }
        return fVar;
    }

    private synchronized void b(Context context) {
        if (this.f33814g != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        g gVar = new g();
        this.f33814g = gVar;
        context.registerReceiver(gVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    private static String a(PackageManager packageManager, String str) {
        ProviderInfo providerInfoResolveContentProvider;
        if (packageManager == null || (providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0)) == null || (providerInfoResolveContentProvider.applicationInfo.flags & 1) == 0) {
            return null;
        }
        return providerInfoResolveContentProvider.packageName;
    }

    public final boolean a(Context context, boolean z2) throws PackageManager.NameNotFoundException {
        if (this.f33815h.a() && !z2) {
            return this.f33815h.b();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        String strA = a(packageManager, "com.meizu.flyme.openidsdk");
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        String strB = b(packageManager, strA);
        if (this.f33815h.a() && this.f33815h.a(strB)) {
            return this.f33815h.b();
        }
        this.f33815h.b(strB);
        boolean zA = a(context);
        this.f33815h.a(zA);
        return zA;
    }

    public final String a(Context context, b bVar) {
        if (bVar == null) {
            return null;
        }
        if (bVar.a()) {
            return bVar.f33804b;
        }
        if (a(context, true)) {
            return b(context, bVar);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(android.content.Context r8) {
        /*
            r0 = 0
            r1 = 0
            android.content.ContentResolver r2 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            java.lang.String r8 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r3 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            java.lang.String r8 = "supported"
            java.lang.String[] r6 = new java.lang.String[]{r8}     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            r7 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            if (r1 != 0) goto L21
            if (r1 == 0) goto L20
            r1.close()
        L20:
            return r0
        L21:
            com.octopus.ad.c.e.f r8 = a(r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            int r2 = r8.f33819b     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            r3 = 1000(0x3e8, float:1.401E-42)
            if (r3 != r2) goto L39
            java.lang.String r2 = "0"
            java.lang.String r8 = r8.f33818a     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            boolean r8 = r2.equals(r8)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L44
            if (r8 != 0) goto L3a
            goto L39
        L36:
            r0 = move-exception
            r8 = r0
            goto L3e
        L39:
            r0 = 1
        L3a:
            r1.close()
            return r0
        L3e:
            if (r1 == 0) goto L43
            r1.close()
        L43:
            throw r8
        L44:
            if (r1 == 0) goto L49
            r1.close()
        L49:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.c.e.d.a(android.content.Context):boolean");
    }
}
