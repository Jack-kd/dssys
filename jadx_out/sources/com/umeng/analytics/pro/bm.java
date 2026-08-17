package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.umeng.analytics.pro.eu;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class bm implements bf {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48856a = "Lenovo";

    /* renamed from: b, reason: collision with root package name */
    private static final String f48857b = "com.zui.deviceidservice";

    /* renamed from: c, reason: collision with root package name */
    private static final String f48858c = "com.zui.deviceidservice.DeviceidService";

    /* renamed from: d, reason: collision with root package name */
    private volatile String f48859d = "";

    /* renamed from: e, reason: collision with root package name */
    private CountDownLatch f48860e;

    /* renamed from: f, reason: collision with root package name */
    private Context f48861f;

    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.f48861f = context.getApplicationContext();
        this.f48860e = new CountDownLatch(1);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.umeng.analytics.pro.bm.1
            @Override // android.content.ServiceConnection
            public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                CountDownLatch countDownLatch;
                try {
                    eu euVarA = eu.b.a(iBinder);
                    if (euVarA != null) {
                        try {
                            bm.this.f48859d = euVarA.a();
                            String unused = bm.this.f48859d;
                            countDownLatch = bm.this.f48860e;
                        } catch (RemoteException unused2) {
                            countDownLatch = bm.this.f48860e;
                        } catch (Throwable th) {
                            bm.this.f48860e.countDown();
                            throw th;
                        }
                        countDownLatch.countDown();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        try {
            Intent intent = new Intent();
            intent.setClassName(f48857b, f48858c);
            this.f48861f.bindService(intent, serviceConnection, 1);
            if (!this.f48860e.await(500L, TimeUnit.MILLISECONDS)) {
                Log.e(f48856a, "getOAID time-out");
            }
            return this.f48859d;
        } catch (Throwable th) {
            try {
                Log.e(f48856a, "getOAID interrupted. e=" + th.getMessage());
                return null;
            } finally {
                this.f48861f.unbindService(serviceConnection);
            }
        }
    }
}
