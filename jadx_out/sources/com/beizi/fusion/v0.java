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
public class v0 {

    /* renamed from: b, reason: collision with root package name */
    private Context f16576b;

    /* renamed from: a, reason: collision with root package name */
    private final String f16575a = "ASUSDeviceIDHelper";

    /* renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f16577c = new LinkedBlockingQueue(1);

    /* renamed from: d, reason: collision with root package name */
    ServiceConnection f16578d = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                v0.this.f16577c.put(iBinder);
            } catch (Exception e2) {
                rm.a(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public v0(Context context) {
        this.f16576b = context;
    }

    public void a(e7.a aVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16576b.getPackageManager().getPackageInfo("com.asus.msa.SupplementaryDID", 0);
        } catch (Exception e2) {
            rm.a(e2);
        }
        Intent intent = new Intent();
        intent.setAction("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        if (this.f16576b.bindService(intent, this.f16578d, 1)) {
            try {
                String strB = new y0((IBinder) this.f16577c.take()).b();
                if (aVar != null) {
                    aVar.a(strB);
                }
            } catch (Exception e3) {
                rm.a(e3);
            }
        }
    }
}
