package com.octopus.ad.c.i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.octopus.ad.c.c;
import com.octopus.ad.c.i.a;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class b implements c {

    public static final class a implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f33848a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f33849b;

        public IBinder a() throws InterruptedException {
            if (this.f33848a) {
                throw new IllegalStateException();
            }
            this.f33848a = true;
            return this.f33849b.poll(5L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f33849b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private a() {
            this.f33848a = false;
            this.f33849b = new LinkedBlockingQueue<>();
        }
    }

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        a aVar = new a();
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        if (context.bindService(intent, aVar, 1)) {
            try {
                return a.AbstractBinderC0725a.a(aVar.a()).a();
            } catch (Exception unused) {
            } finally {
                context.unbindService(aVar);
            }
        }
        return null;
    }
}
