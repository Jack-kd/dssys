package com.ubix.ssp.ad.e.a0.c0.h.r.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Base64;
import android.util.Log;
import com.anythink.odopt.a.a.j;
import com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a;
import com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.umeng.analytics.pro.bk;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes5.dex */
public class b implements ServiceConnection {

    /* renamed from: b, reason: collision with root package name */
    public Context f46195b;

    /* renamed from: a, reason: collision with root package name */
    public a.C0791a f46194a = new a.C0791a();

    /* renamed from: c, reason: collision with root package name */
    public BinderC0792b f46196c = new BinderC0792b();

    /* renamed from: d, reason: collision with root package name */
    public c f46197d = new c();

    /* renamed from: e, reason: collision with root package name */
    public CountDownLatch f46198e = new CountDownLatch(2);

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ IBinder f46199a;

        public a(IBinder iBinder) {
            this.f46199a = iBinder;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.a0.c0.h.r.b.a.c bVar;
            try {
                Binder.getCallingPid();
                IBinder iBinder = this.f46199a;
                if (iBinder == null) {
                    bVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f10579a);
                    bVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.ubix.ssp.ad.e.a0.c0.h.r.b.a.c)) ? new com.ubix.ssp.ad.e.a0.c0.h.r.b.a.b(this.f46199a) : (com.ubix.ssp.ad.e.a0.c0.h.r.b.a.c) iInterfaceQueryLocalInterface;
                }
                try {
                    u.e("AdvertisingIdPlatform", "onServiceConnected-debug4-" + bVar);
                    bVar.a(b.this.f46196c);
                    u.e("AdvertisingIdPlatform", "onServiceConnected-debug5-");
                    bVar.b(b.this.f46197d);
                    u.e("AdvertisingIdPlatform", "onServiceConnected-debug6-");
                } catch (Exception e2) {
                    e = e2;
                    u.e("AdvertisingIdPlatform", "onServiceConnected4");
                    Log.e("AdvertisingIdPlatform", "onServiceConnected error:" + e.getMessage());
                    b.this.f46198e.countDown();
                    b.this.f46198e.countDown();
                    b.this.a();
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.h.r.a.a.b$b, reason: collision with other inner class name */
    public class BinderC0792b extends a.AbstractBinderC0793a {
        public BinderC0792b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a
        public void a(int i2, Bundle bundle) {
            Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult retCode=" + i2 + " retInfo=" + bundle);
            if (i2 != 0 || bundle == null) {
                Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult error retCode=$ " + i2);
            } else if (b.this.f46194a != null) {
                String string = bundle.getString(bk.c.f48849b);
                b.this.f46194a.f46192a = string;
                u.e("AdvertisingIdPlatform", "OAIDCallBack handleResult success " + string);
                try {
                    Context context = b.this.f46195b;
                    Context applicationContext = context != null ? context.getApplicationContext() : com.ubix.ssp.ad.e.a0.c.e();
                    v.b(applicationContext, "ubix_sp_special_seed", "seed", Base64.encodeToString(string.getBytes(), 10));
                    v.a(applicationContext, "ubix_sp_special_seed", "seed_time", System.currentTimeMillis());
                } catch (Throwable unused) {
                }
            }
            b.this.f46198e.countDown();
        }
    }

    public class c extends a.AbstractBinderC0793a {
        public c() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a
        public void a(int i2, Bundle bundle) {
            Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult retCode=" + i2 + " retInfo= " + bundle);
            if (i2 != 0 || bundle == null) {
                Log.e("AdvertisingIdPlatform", "OAIDLimitCallback handleResult error retCode= " + i2);
            } else if (b.this.f46194a != null) {
                boolean z2 = bundle.getBoolean("oa_id_limit_state");
                b.this.f46194a.f46193b = z2;
                u.e("AdvertisingIdPlatform", "OAIDLimitCallback handleResult success  isLimit=" + z2);
            }
            b.this.f46198e.countDown();
        }
    }

    public b() {
        u.e("AdvertisingIdPlatform", "HonorSC");
    }

    public final void a() {
        u.e("AdvertisingIdPlatform", "disconnect");
        try {
            this.f46195b.unbindService(this);
        } catch (Exception e2) {
            Log.e("AdvertisingIdPlatform", "OAIDClientImpl#disconnect#Disconnect error::" + e2.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        u.e("AdvertisingIdPlatform", "onServiceConnected ");
        new Thread(new a(iBinder)).start();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        u.e("AdvertisingIdPlatform", "onServiceDisconnected ");
        this.f46198e.countDown();
        this.f46198e.countDown();
    }

    public boolean a(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo("com.hihonor.id", 0);
            new Intent("com.hihonor.id.HnOaIdService").setPackage("com.hihonor.id");
            return !r5.queryIntentServices(r2, 0).isEmpty();
        } catch (Exception unused) {
            return false;
        }
    }
}
