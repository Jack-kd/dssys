package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
class ek implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13726a;

    /* renamed from: b, reason: collision with root package name */
    private final mc f13727b;

    /* renamed from: c, reason: collision with root package name */
    private final a f13728c;

    public interface a {
        String a(IBinder iBinder);
    }

    private ek(Context context, mc mcVar, a aVar) {
        if (context instanceof Application) {
            this.f13726a = context;
        } else {
            this.f13726a = context.getApplicationContext();
        }
        this.f13727b = mcVar;
        this.f13728c = aVar;
    }

    public static void a(Context context, Intent intent, mc mcVar, a aVar) {
        new ek(context, mcVar, aVar).a(intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bk.a("Service has been connected: " + componentName.getClassName());
        try {
            try {
                String strA = this.f13728c.a(iBinder);
                if (strA == null || strA.length() == 0) {
                    throw new wj("OAID acquire failed");
                }
                bk.a("OAID acquire success: " + strA);
                this.f13727b.a(strA);
            } finally {
                try {
                    this.f13726a.unbindService(this);
                    bk.a("Service has been unbound: " + componentName.getClassName());
                } catch (Exception e2) {
                    bk.a(e2);
                }
            }
        } catch (Exception e3) {
            bk.a(e3);
            this.f13727b.a(e3);
            try {
                this.f13726a.unbindService(this);
                bk.a("Service has been unbound: " + componentName.getClassName());
            } catch (Exception e4) {
                bk.a(e4);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        bk.a("Service has been disconnected: " + componentName.getClassName());
    }

    private void a(Intent intent) {
        try {
            if (!this.f13726a.bindService(intent, this, 1)) {
                throw new wj("Service binding failed");
            }
            bk.a("Service has been bound: " + intent);
        } catch (Exception e2) {
            this.f13727b.a(e2);
        }
    }
}
