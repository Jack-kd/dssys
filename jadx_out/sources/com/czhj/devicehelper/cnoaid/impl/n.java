package com.czhj.devicehelper.cnoaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes3.dex */
class n implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29164a;

    /* renamed from: b, reason: collision with root package name */
    private final com.czhj.devicehelper.cnoaid.c f29165b;

    /* renamed from: c, reason: collision with root package name */
    private final a f29166c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException;
    }

    private n(Context context, com.czhj.devicehelper.cnoaid.c cVar, a aVar) {
        this.f29164a = context instanceof Application ? context : context.getApplicationContext();
        this.f29165b = cVar;
        this.f29166c = aVar;
    }

    public static void a(Context context, Intent intent, com.czhj.devicehelper.cnoaid.c cVar, a aVar) {
        new n(context, cVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.czhj.devicehelper.cnoaid.g.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                try {
                    String strA = this.f29166c.a(iBinder);
                    if (strA == null || strA.length() == 0) {
                        throw new com.czhj.devicehelper.cnoaid.f("OAID/AAID acquire failed");
                    }
                    com.czhj.devicehelper.cnoaid.g.a("OAID/AAID acquire success: " + strA);
                    this.f29165b.a(strA);
                    this.f29164a.unbindService(this);
                    com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
                } catch (Throwable th) {
                    try {
                        this.f29164a.unbindService(this);
                        com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
                    } catch (Exception e2) {
                        com.czhj.devicehelper.cnoaid.g.a(e2);
                    }
                    throw th;
                }
            } catch (Exception e3) {
                com.czhj.devicehelper.cnoaid.g.a(e3);
                this.f29165b.a(e3);
                this.f29164a.unbindService(this);
                com.czhj.devicehelper.cnoaid.g.a("Service has been unbound: " + componentName.getClassName());
            }
        } catch (Exception e4) {
            com.czhj.devicehelper.cnoaid.g.a(e4);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.czhj.devicehelper.cnoaid.g.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f29164a.bindService(intent, this, 1)) {
                throw new com.czhj.devicehelper.cnoaid.f("Service binding failed");
            }
            com.czhj.devicehelper.cnoaid.g.a("Service has been bound: " + intent);
        } catch (Exception e2) {
            this.f29165b.a(e2);
        }
    }
}
