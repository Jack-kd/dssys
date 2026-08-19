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
public class w0 {

    /* renamed from: a, reason: collision with root package name */
    private Context f16778a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f16779b = new LinkedBlockingQueue(1);

    /* renamed from: c, reason: collision with root package name */
    ServiceConnection f16780c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                w0.this.f16779b.put(iBinder);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public w0(Context context) {
        this.f16778a = context;
    }

    public void a(d7.b bVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16778a.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Intent intent = new Intent();
        intent.setAction("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        if (this.f16778a.bindService(intent, this.f16780c, 1)) {
            try {
                String strB = new x0((IBinder) this.f16779b.take()).b();
                if (bVar != null) {
                    bVar.a(strB);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }
}
