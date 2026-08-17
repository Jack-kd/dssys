package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.d7;

/* loaded from: classes2.dex */
public class um {

    /* renamed from: a, reason: collision with root package name */
    private Context f16505a;

    public class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        private d7.b f16506a;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String strB = new vm(iBinder).b();
            d7.b bVar = this.f16506a;
            if (bVar != null) {
                bVar.a(strB);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private b(d7.b bVar) {
            this.f16506a = bVar;
        }
    }

    public um(Context context) {
        this.f16505a = context;
    }

    public void a(d7.b bVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16505a.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0);
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            this.f16505a.bindService(intent, new b(bVar), 1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
