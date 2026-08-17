package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.umeng.analytics.pro.a;
import com.umeng.commonsdk.statistics.common.MLog;

/* loaded from: classes5.dex */
public class bj implements bf {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48837a = "FreemeDeviceIdSupplier---";

    /* renamed from: b, reason: collision with root package name */
    private static final long f48838b = 5000;

    /* renamed from: c, reason: collision with root package name */
    private static final long f48839c = 100;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f48840d = false;

    /* renamed from: e, reason: collision with root package name */
    private static volatile a f48841e;

    /* renamed from: h, reason: collision with root package name */
    private static final ServiceConnection f48842h = new ServiceConnection() { // from class: com.umeng.analytics.pro.bj.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MLog.d("FreemeDeviceIdSupplier---CreatorService connected");
            a unused = bj.f48841e = a.b.a(iBinder);
            boolean unused2 = bj.f48840d = bj.f48841e != null;
            MLog.d("FreemeDeviceIdSupplier---CreatorService bound: " + bj.f48840d);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MLog.d("FreemeDeviceIdSupplier---CreatorService disconnected");
            a unused = bj.f48841e = null;
            boolean unused2 = bj.f48840d = false;
        }
    };

    /* renamed from: f, reason: collision with root package name */
    private String f48843f = "";

    /* renamed from: g, reason: collision with root package name */
    private Context f48844g;

    private static String c() throws InterruptedException {
        for (long j2 = 0; j2 < 5000; j2 += 100) {
            if (f48840d && f48841e != null) {
                try {
                    String strB = f48841e.b();
                    MLog.d("FreemeDeviceIdSupplier---Creator OAID: " + strB);
                    return strB;
                } catch (Exception e2) {
                    MLog.e("FreemeDeviceIdSupplier---Failed to get Creator OAID after connection", e2);
                    return null;
                }
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e3) {
                MLog.e("FreemeDeviceIdSupplier---Interrupted while waiting for CreatorService", e3);
                return null;
            }
        }
        MLog.e("FreemeDeviceIdSupplier---Timeout waiting for CreatorService connection");
        return null;
    }

    private static boolean b(Context context) {
        if (!a(context, "com.android.creator")) {
            MLog.w("FreemeDeviceIdSupplier---Creator service package not available");
            return false;
        }
        try {
            Intent intent = new Intent("android.service.action.msa");
            intent.setPackage("com.android.creator");
            intent.setComponent(new ComponentName("com.android.creator", "com.android.creator.CreatorService"));
            boolean zBindService = context.bindService(intent, f48842h, 1);
            MLog.d("FreemeDeviceIdSupplier---Binding CreatorService: " + zBindService);
            return zBindService;
        } catch (Exception e2) {
            MLog.e("FreemeDeviceIdSupplier---Failed to bind CreatorService", e2);
            return false;
        }
    }

    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.f48844g = context.getApplicationContext();
        if (f48840d && f48841e != null) {
            try {
                this.f48843f = f48841e.b();
                MLog.d("FreemeDeviceIdSupplier---Creator OAID: " + this.f48843f);
                return this.f48843f;
            } catch (Exception e2) {
                MLog.e("FreemeDeviceIdSupplier---Failed to get Creator OAID", e2);
                return null;
            } finally {
                c(this.f48844g);
            }
        }
        MLog.w("FreemeDeviceIdSupplier---CreatorService not bound, attempting to bind...");
        if (!b(context)) {
            MLog.e("FreemeDeviceIdSupplier---Failed to bind CreatorService for OAID");
            return null;
        }
        this.f48843f = c();
        c(this.f48844g);
        return this.f48843f;
    }

    private static void c(Context context) {
        try {
            if (f48840d) {
                context.unbindService(f48842h);
                f48840d = false;
                f48841e = null;
                MLog.d("FreemeDeviceIdSupplier---CreatorService unbound");
            }
        } catch (Exception e2) {
            MLog.e("FreemeDeviceIdSupplier---Failed to unbind CreatorService", e2);
        }
    }

    private static boolean a(Context context, String str) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception e2) {
            MLog.w("FreemeDeviceIdSupplier---Package " + str + " not available: " + e2.getMessage());
            return false;
        }
    }
}
