package com.czhj.devicehelper.honor.identifier;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.anythink.odopt.a.a.j;
import com.czhj.devicehelper.honor.identifier.a;
import com.czhj.devicehelper.honor.oaid.a;
import com.czhj.devicehelper.honor.oaid.b;
import com.umeng.analytics.pro.bk;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public class b implements ServiceConnection {

    /* renamed from: b, reason: collision with root package name */
    public Context f29187b;

    /* renamed from: a, reason: collision with root package name */
    public a.C0449a f29186a = new a.C0449a();

    /* renamed from: c, reason: collision with root package name */
    public a f29188c = new a();

    /* renamed from: d, reason: collision with root package name */
    public BinderC0450b f29189d = new BinderC0450b();

    /* renamed from: e, reason: collision with root package name */
    public CountDownLatch f29190e = new CountDownLatch(2);

    public class a extends a.AbstractBinderC0451a {
        public a() {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i2, Bundle bundle) {
            Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult retCode=" + i2 + " retInfo=" + bundle);
            if (i2 != 0 || bundle == null) {
                Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult error retCode=$ " + i2);
            } else if (b.this.f29186a != null) {
                b.this.f29186a.f29184a = bundle.getString(bk.c.f48849b);
            }
            b.this.f29190e.countDown();
        }
    }

    /* renamed from: com.czhj.devicehelper.honor.identifier.b$b, reason: collision with other inner class name */
    public class BinderC0450b extends a.AbstractBinderC0451a {
        public BinderC0450b() {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.czhj.devicehelper.honor.oaid.a
        public void a(int i2, Bundle bundle) {
            Log.e("AdvertisingIdPlatform", "OAIDCallBack handleResult retCode=" + i2 + " retInfo= " + bundle);
            if (i2 != 0 || bundle == null) {
                Log.e("AdvertisingIdPlatform", "OAIDLimitCallback handleResult error retCode= " + i2);
            } else if (b.this.f29186a != null) {
                b.this.f29186a.f29185b = bundle.getBoolean("oa_id_limit_state");
            }
            b.this.f29190e.countDown();
        }
    }

    public final void a() {
        try {
            this.f29187b.unbindService(this);
        } catch (Exception e2) {
            Log.e("AdvertisingIdPlatform", "OAIDClientImpl#disconnect#Disconnect error::" + e2.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        new Thread(new Runnable() { // from class: com.czhj.devicehelper.honor.identifier.b.1
            @Override // java.lang.Runnable
            public void run() {
                com.czhj.devicehelper.honor.oaid.b c0452a;
                try {
                    Binder.getCallingPid();
                    IBinder iBinder2 = iBinder;
                    if (iBinder2 == null) {
                        c0452a = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder2.queryLocalInterface(j.f10579a);
                        c0452a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.czhj.devicehelper.honor.oaid.b)) ? new b.a.C0452a(iBinder) : (com.czhj.devicehelper.honor.oaid.b) iInterfaceQueryLocalInterface;
                    }
                    Objects.toString(c0452a);
                    c0452a.a(b.this.f29188c);
                    c0452a.b(b.this.f29189d);
                } catch (Exception e2) {
                    Log.e("AdvertisingIdPlatform", "onServiceConnected error:" + e2.getMessage());
                    b.this.f29190e.countDown();
                    b.this.f29190e.countDown();
                    b.this.a();
                }
            }
        }).start();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f29190e.countDown();
        this.f29190e.countDown();
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
