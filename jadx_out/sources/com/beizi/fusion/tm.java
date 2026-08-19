package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.e7;

/* loaded from: classes2.dex */
public class tm {

    /* renamed from: a, reason: collision with root package name */
    private Context f16389a;

    public class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        private e7.a f16390a;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String strB = new wm(iBinder).b();
            e7.a aVar = this.f16390a;
            if (aVar != null) {
                aVar.a(strB);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private b(e7.a aVar) {
            this.f16390a = aVar;
        }
    }

    public tm(Context context) {
        this.f16389a = context;
    }

    public void a(e7.a aVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16389a.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0);
        } catch (Exception e2) {
            rm.a(e2);
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        this.f16389a.bindService(intent, new b(aVar), 1);
    }
}
