package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.odopt.a.a.s;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f10620a = new LinkedBlockingQueue<>(1);

    /* renamed from: b, reason: collision with root package name */
    ServiceConnection f10621b = new ServiceConnection() { // from class: com.anythink.odopt.a.a.t.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                t.this.f10620a.put(iBinder);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private Context f10622c;

    public t(Context context) {
        this.f10622c = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            if (!this.f10622c.bindService(intent, this.f10621b, 1)) {
                aVar.a("Service unbind.");
                return;
            }
            try {
                aVar.a(new s.a(this.f10620a.take()).a(), false);
            } catch (Throwable th) {
                th.printStackTrace();
                aVar.a(th.getMessage());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
