package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.umeng.analytics.pro.b;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class bh implements bf {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48828a = "Coolpad";

    /* renamed from: b, reason: collision with root package name */
    private static final String f48829b = "com.coolpad.deviceidsupport";

    /* renamed from: c, reason: collision with root package name */
    private static final String f48830c = "com.coolpad.deviceidsupport.DeviceIdService";

    /* renamed from: d, reason: collision with root package name */
    private static b f48831d;

    /* renamed from: f, reason: collision with root package name */
    private CountDownLatch f48833f;

    /* renamed from: g, reason: collision with root package name */
    private Context f48834g;

    /* renamed from: e, reason: collision with root package name */
    private String f48832e = "";

    /* renamed from: h, reason: collision with root package name */
    private final ServiceConnection f48835h = new ServiceConnection() { // from class: com.umeng.analytics.pro.bh.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b unused = bh.f48831d = b.AbstractBinderC0855b.a(iBinder);
                bh.this.f48832e = bh.f48831d.b(bh.this.f48834g.getPackageName());
                String unused2 = bh.this.f48832e;
            } catch (RemoteException | NullPointerException e2) {
                Log.e(bh.f48828a, "onServiceConnected failed e=" + e2.getMessage());
            }
            bh.this.f48833f.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b unused = bh.f48831d = null;
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(f48829b, f48830c));
            if (context.bindService(intent, this.f48835h, 1)) {
                return;
            }
            Log.e(f48828a, "bindService return false");
        } catch (Throwable th) {
            Log.e(f48828a, "bindService failed. e=" + th.getMessage());
            this.f48833f.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.f48835h);
        } catch (Throwable th) {
            Log.e(f48828a, "unbindService failed. e=" + th.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.f48834g = context.getApplicationContext();
        this.f48833f = new CountDownLatch(1);
        try {
            try {
                b(context);
                if (!this.f48833f.await(500L, TimeUnit.MILLISECONDS)) {
                    Log.e(f48828a, "getOAID time-out");
                }
                String str = this.f48832e;
                c(context);
                return str;
            } catch (InterruptedException e2) {
                Log.e(f48828a, "getOAID interrupted. e=" + e2.getMessage());
                c(context);
                return null;
            }
        } catch (Throwable th) {
            c(context);
            throw th;
        }
    }
}
