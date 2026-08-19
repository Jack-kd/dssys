package com.anythink.odopt.a.a.a;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
class d implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10543a;

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.odopt.a.a f10544b;

    /* renamed from: c, reason: collision with root package name */
    private final a f10545c;

    /* renamed from: d, reason: collision with root package name */
    private String f10546d = d.class.getSimpleName();

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder);
    }

    private d(Context context, com.anythink.odopt.a.a aVar, a aVar2) {
        if (context instanceof Application) {
            this.f10543a = context;
        } else {
            this.f10543a = context.getApplicationContext();
        }
        this.f10544b = aVar;
        this.f10545c = aVar2;
    }

    public static void a(Context context, Intent intent, com.anythink.odopt.a.a aVar, a aVar2) {
        d dVar = new d(context, aVar, aVar2);
        try {
            if (dVar.f10543a.bindService(intent, dVar, 1)) {
            } else {
                throw new RuntimeException("Service binding failed");
            }
        } catch (Exception e2) {
            dVar.f10544b.a(e2.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            try {
                String strA = this.f10545c.a(iBinder);
                if (strA == null || strA.isEmpty()) {
                    throw new RuntimeException("OAID acquire failed");
                }
                if ("oaid".equalsIgnoreCase(strA)) {
                    throw new RuntimeException("Invalid OAID");
                }
                this.f10544b.a(strA, false);
            } catch (Exception e2) {
                this.f10544b.a(e2.getMessage());
                try {
                    this.f10543a.unbindService(this);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } finally {
            try {
                this.f10543a.unbindService(this);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    private void a(Intent intent) {
        try {
            if (this.f10543a.bindService(intent, this, 1)) {
            } else {
                throw new RuntimeException("Service binding failed");
            }
        } catch (Exception e2) {
            this.f10544b.a(e2.getMessage());
        }
    }
}
