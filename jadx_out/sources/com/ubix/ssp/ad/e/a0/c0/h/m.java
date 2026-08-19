package com.ubix.ssp.ad.e.a0.c0.h;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes5.dex */
class m implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46180a;

    /* renamed from: b, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.a0.c0.c f46181b;

    /* renamed from: c, reason: collision with root package name */
    private final a f46182c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder);
    }

    private m(Context context, com.ubix.ssp.ad.e.a0.c0.c cVar, a aVar) {
        this.f46180a = context instanceof Application ? context : context.getApplicationContext();
        this.f46181b = cVar;
        this.f46182c = aVar;
    }

    public static void a(Context context, Intent intent, com.ubix.ssp.ad.e.a0.c0.c cVar, a aVar) {
        new m(context, cVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.ubix.ssp.ad.e.a0.c0.f.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.f46182c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.ubix.ssp.ad.e.a0.c0.e("OAID/AAID acquire failed");
                    }
                    com.ubix.ssp.ad.e.a0.c0.f.a("OAID/AAID acquire success: " + strA);
                    this.f46181b.a(strA);
                    this.f46180a.unbindService(this);
                    com.ubix.ssp.ad.e.a0.c0.f.a("Service has been unbound: " + componentName.getClassName());
                } catch (Throwable th) {
                    try {
                        this.f46180a.unbindService(this);
                        com.ubix.ssp.ad.e.a0.c0.f.a("Service has been unbound: " + componentName.getClassName());
                    } catch (Exception e2) {
                        com.ubix.ssp.ad.e.a0.c0.f.a(e2);
                    }
                    throw th;
                }
            } catch (Exception e3) {
                com.ubix.ssp.ad.e.a0.c0.f.a(e3);
                this.f46181b.a(e3);
                this.f46180a.unbindService(this);
                com.ubix.ssp.ad.e.a0.c0.f.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Exception e4) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e4);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.ubix.ssp.ad.e.a0.c0.f.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f46180a.bindService(intent, this, 1)) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("Service binding failed");
            }
            com.ubix.ssp.ad.e.a0.c0.f.a("Service has been bound: " + intent);
        } catch (Exception e2) {
            this.f46181b.a(e2);
        }
    }
}
