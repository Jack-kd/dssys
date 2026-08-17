package com.octopus.ad.c.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.c.a.b;
import com.octopus.ad.c.c;
import com.octopus.ad.d.b.f;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private static b f33745a;

    /* renamed from: b, reason: collision with root package name */
    private CountDownLatch f33746b;

    /* renamed from: c, reason: collision with root package name */
    private Context f33747c;

    /* renamed from: d, reason: collision with root package name */
    private String f33748d = "";

    /* renamed from: e, reason: collision with root package name */
    private final ServiceConnection f33749e = new ServiceConnection() { // from class: com.octopus.ad.c.a.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                try {
                    b bVarA = b.a.a(iBinder);
                    b unused = a.f33745a = bVarA;
                    a.this.f33748d = bVarA.b(a.this.f33747c.getPackageName());
                    f.a("Coolpad", "onServiceConnected: oaid = " + a.f33745a.b(a.this.f33747c.getPackageName()));
                } finally {
                    a.this.f33746b.countDown();
                }
            } catch (RemoteException | NullPointerException e2) {
                f.d("Coolpad", "onServiceConnected failed e=" + e2.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b unused = a.f33745a = null;
        }
    };

    private void c(Context context) {
        try {
            f.a("Coolpad", "call unbindService.");
            context.unbindService(this.f33749e);
        } catch (Throwable th) {
            f.d("Coolpad", "unbindService failed. e=" + th.getMessage());
        }
    }

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
            if (context.bindService(intent, this.f33749e, 1)) {
                return;
            }
            f.d("Coolpad", "bindService return false");
        } catch (Throwable th) {
            f.d("Coolpad", "bindService failed. e=" + th.getMessage());
            this.f33746b.countDown();
        }
    }

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.f33747c = context.getApplicationContext();
        this.f33746b = new CountDownLatch(1);
        try {
            try {
                b(context);
                if (!this.f33746b.await(500L, TimeUnit.MILLISECONDS)) {
                    f.d("Coolpad", "getOAID time-out");
                }
                String str = this.f33748d;
                c(context);
                return str;
            } catch (InterruptedException e2) {
                f.d("Coolpad", "getOAID interrupted. e=" + e2.getMessage());
                c(context);
                return null;
            }
        } catch (Throwable th) {
            c(context);
            throw th;
        }
    }
}
