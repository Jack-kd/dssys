package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.e7;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class z8 {

    /* renamed from: a, reason: collision with root package name */
    private Context f17842a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f17843b = new LinkedBlockingQueue(1);

    /* renamed from: c, reason: collision with root package name */
    ServiceConnection f17844c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                z8.this.f17843b.put(iBinder);
            } catch (Exception e2) {
                rm.a(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public z8(Context context) {
        this.f17842a = context;
    }

    public void a(e7.a aVar) throws PackageManager.NameNotFoundException {
        try {
            this.f17842a.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
        } catch (Exception e2) {
            rm.a(e2);
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        try {
            if (this.f17842a.bindService(intent, this.f17844c, 1)) {
                try {
                    c9 c9Var = new c9((IBinder) this.f17843b.take());
                    String strC = c9Var.c();
                    c9Var.b();
                    if (aVar != null) {
                        aVar.a(strC);
                    }
                } catch (Exception e3) {
                    rm.a(e3);
                }
            }
        } finally {
            this.f17842a.unbindService(this.f17844c);
        }
    }
}
