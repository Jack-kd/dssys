package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.e7;
import com.bun.miitmdid.content.StringValues;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class sq {

    /* renamed from: a, reason: collision with root package name */
    Context f16283a;

    /* renamed from: b, reason: collision with root package name */
    String f16284b = "com.mdid.msa";

    /* renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f16285c = new LinkedBlockingQueue(1);

    /* renamed from: d, reason: collision with root package name */
    ServiceConnection f16286d = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                sq.this.f16285c.put(iBinder);
            } catch (Exception e2) {
                rm.a(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public sq(Context context) {
        this.f16283a = context;
    }

    private int a() throws PackageManager.NameNotFoundException {
        try {
            this.f16283a.getPackageManager().getPackageInfo(this.f16284b, 0);
            return 1;
        } catch (Exception e2) {
            rm.a(e2);
            return 0;
        }
    }

    private void a(String str) throws PackageManager.NameNotFoundException {
        a();
        Intent intent = new Intent();
        intent.setClassName(this.f16284b, "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            this.f16283a.startService(intent);
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    public void a(e7.a aVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16283a.getPackageManager().getPackageInfo(this.f16284b, 0);
        } catch (Exception e2) {
            rm.a(e2);
        }
        String packageName = this.f16283a.getPackageName();
        a(packageName);
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, packageName);
        if (this.f16283a.bindService(intent, this.f16286d, 1)) {
            try {
                String oaid = new vq((IBinder) this.f16285c.take()).getOAID();
                if (aVar != null) {
                    aVar.a(oaid);
                }
                this.f16283a.unbindService(this.f16286d);
            } catch (Exception e3) {
                rm.a(e3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
