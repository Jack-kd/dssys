package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.beizi.fusion.d7;
import com.bun.miitmdid.content.StringValues;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class tq {

    /* renamed from: a, reason: collision with root package name */
    Context f16400a;

    /* renamed from: b, reason: collision with root package name */
    String f16401b = "com.mdid.msa";

    /* renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f16402c = new LinkedBlockingQueue(1);

    /* renamed from: d, reason: collision with root package name */
    ServiceConnection f16403d = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                tq.this.f16402c.put(iBinder);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public tq(Context context) {
        this.f16400a = context;
    }

    private int a() throws PackageManager.NameNotFoundException {
        try {
            this.f16400a.getPackageManager().getPackageInfo(this.f16401b, 0);
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private void a(String str) throws PackageManager.NameNotFoundException {
        a();
        Intent intent = new Intent();
        intent.setClassName(this.f16401b, "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            this.f16400a.startService(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(d7.b bVar) throws PackageManager.NameNotFoundException {
        try {
            this.f16400a.getPackageManager().getPackageInfo(this.f16401b, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        String packageName = this.f16400a.getPackageName();
        a(packageName);
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, packageName);
        if (this.f16400a.bindService(intent, this.f16403d, 1)) {
            try {
                String oaid = new uq((IBinder) this.f16402c.take()).getOAID();
                if (bVar != null) {
                    bVar.a(oaid);
                }
                this.f16400a.unbindService(this.f16403d);
            } catch (Exception e3) {
                e3.printStackTrace();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
