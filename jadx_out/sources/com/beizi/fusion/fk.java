package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
class fk implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13874a;

    /* renamed from: b, reason: collision with root package name */
    private final lc f13875b;

    /* renamed from: c, reason: collision with root package name */
    private final a f13876c;

    public interface a {
        String a(IBinder iBinder);
    }

    private fk(Context context, lc lcVar, a aVar) {
        if (context instanceof Application) {
            this.f13874a = context;
        } else {
            this.f13874a = context.getApplicationContext();
        }
        this.f13875b = lcVar;
        this.f13876c = aVar;
    }

    public static void a(Context context, Intent intent, lc lcVar, a aVar) {
        new fk(context, lcVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ak.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                String strA = this.f13876c.a(iBinder);
                if (strA == null || strA.length() == 0) {
                    throw new vj("OAID acquire failed");
                }
                ak.a("OAID acquire success: " + strA);
                this.f13875b.a(strA);
            } finally {
                try {
                    this.f13874a.unbindService(this);
                    ak.a("Service has been unbound: " + componentName.getClassName());
                } catch (Exception e2) {
                    ak.a(e2);
                }
            }
        } catch (Exception e3) {
            ak.a(e3);
            this.f13875b.a(e3);
            try {
                this.f13874a.unbindService(this);
                ak.a("Service has been unbound: " + componentName.getClassName());
            } catch (Exception e4) {
                ak.a(e4);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ak.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f13874a.bindService(intent, this, 1)) {
                throw new vj("Service binding failed");
            }
            ak.a("Service has been bound: " + intent);
        } catch (Exception e2) {
            this.f13875b.a(e2);
        }
    }
}
