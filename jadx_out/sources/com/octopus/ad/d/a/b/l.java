package com.octopus.ad.d.a.b;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public class l implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33985a;

    /* renamed from: b, reason: collision with root package name */
    private final com.octopus.ad.d.a.c f33986b;

    /* renamed from: c, reason: collision with root package name */
    private final a f33987c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e;
    }

    private l(Context context, com.octopus.ad.d.a.c cVar, a aVar) {
        if (context instanceof Application) {
            this.f33985a = context;
        } else {
            this.f33985a = context.getApplicationContext();
        }
        this.f33986b = cVar;
        this.f33987c = aVar;
    }

    public static void a(Context context, Intent intent, com.octopus.ad.d.a.c cVar, a aVar) {
        new l(context, cVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.octopus.ad.d.a.f.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.f33987c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.octopus.ad.d.a.e("OAID/GAID acquire failed");
                    }
                    com.octopus.ad.d.a.f.a("OAID/GAID acquire success: " + strA);
                    this.f33986b.a(strA);
                    this.f33985a.unbindService(this);
                    com.octopus.ad.d.a.f.a("Service has been unbound: " + componentName.getClassName());
                } catch (Throwable th) {
                    try {
                        this.f33985a.unbindService(this);
                        com.octopus.ad.d.a.f.a("Service has been unbound: " + componentName.getClassName());
                    } catch (Exception e2) {
                        com.octopus.ad.d.a.f.a(e2);
                    }
                    throw th;
                }
            } catch (Exception e3) {
                com.octopus.ad.d.a.f.a(e3);
                this.f33986b.a(e3);
                this.f33985a.unbindService(this);
                com.octopus.ad.d.a.f.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Exception e4) {
            com.octopus.ad.d.a.f.a(e4);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.octopus.ad.d.a.f.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f33985a.bindService(intent, this, 1)) {
                throw new com.octopus.ad.d.a.e("Service binding failed");
            }
            com.octopus.ad.d.a.f.a("Service has been bound: " + intent);
        } catch (Exception e2) {
            this.f33986b.a(e2);
        }
    }
}
