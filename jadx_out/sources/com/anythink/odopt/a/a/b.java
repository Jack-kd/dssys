package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f10547a = new LinkedBlockingQueue<>(1);

    /* renamed from: b, reason: collision with root package name */
    ServiceConnection f10548b = new ServiceConnection() { // from class: com.anythink.odopt.a.a.b.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b.this.f10547a.put(iBinder);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private Context f10549c;

    public b(Context context) {
        this.f10549c = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("com.asus.msa.action.ACCESS_DID");
            intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
            if (!this.f10549c.bindService(intent, this.f10548b, 1)) {
                aVar.a("Empty");
                return;
            }
            try {
                try {
                    aVar.a(new a(this.f10547a.take()).a(), false);
                } catch (Exception e2) {
                    aVar.a(e2.getMessage());
                }
            } catch (Throwable th) {
                aVar.a(th.getMessage());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
