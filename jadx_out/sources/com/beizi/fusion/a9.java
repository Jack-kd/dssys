package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.d7;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class a9 {

    /* renamed from: a, reason: collision with root package name */
    private Context f12638a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f12639b = new LinkedBlockingQueue(1);

    /* renamed from: c, reason: collision with root package name */
    ServiceConnection f12640c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                a9.this.f12639b.put(iBinder);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public a9(Context context) {
        this.f12638a = context;
    }

    public void a(d7.b bVar) throws PackageManager.NameNotFoundException {
        try {
            this.f12638a.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        try {
            if (this.f12638a.bindService(intent, this.f12640c, 1)) {
                try {
                    b9 b9Var = new b9((IBinder) this.f12639b.take());
                    String strC = b9Var.c();
                    b9Var.b();
                    if (bVar != null) {
                        bVar.a(strC);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } finally {
            this.f12638a.unbindService(this.f12640c);
        }
    }
}
