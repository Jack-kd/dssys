package com.octopus.ad.c.h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.octopus.ad.c.h.c;
import com.octopus.ad.c.h.g;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public c f33830a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f33831b = null;

    /* renamed from: c, reason: collision with root package name */
    public String f33832c = null;

    /* renamed from: d, reason: collision with root package name */
    public Object f33833d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public ServiceConnection f33834e = new d(this);

    /* renamed from: com.octopus.ad.c.h.a$a, reason: collision with other inner class name */
    public static class C0723a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f33836a = new a(null);
    }

    public a(d dVar) {
    }

    public boolean a(Context context) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return Build.VERSION.SDK_INT >= 28 ? packageInfo != null && packageInfo.getLongVersionCode() >= 1 : packageInfo != null && packageInfo.versionCode >= 1;
    }

    public synchronized String b(Context context, String str) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalStateException("Cannot run on MainThread");
            }
            if (this.f33830a == null) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                if (context.bindService(intent, this.f33834e, 1)) {
                    synchronized (this.f33833d) {
                        try {
                            this.f33833d.wait(3000L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                if (this.f33830a == null) {
                    return "";
                }
            }
            return a(context, str);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String a(Context context, String str) {
        if (TextUtils.isEmpty(this.f33831b)) {
            this.f33831b = context.getPackageName();
        }
        String strA = null;
        if (TextUtils.isEmpty(this.f33832c)) {
            this.f33832c = new g(new g.a() { // from class: com.octopus.ad.c.h.a.1
                @Override // com.octopus.ad.c.h.g.a
                public String a(String str2, String str3, String str4) {
                    return str3;
                }
            }).a(context, null);
        }
        try {
            strA = ((c.a.C0724a) this.f33830a).a(this.f33831b, this.f33832c, str);
        } catch (RemoteException unused) {
        }
        return TextUtils.isEmpty(strA) ? "" : strA;
    }
}
