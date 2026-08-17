package com.meishu.sdk.core.oaid.honor;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Parcel;
import com.anythink.odopt.a.a.j;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public c f31682a;

    /* renamed from: b, reason: collision with root package name */
    public ServiceConnection f31683b = new ServiceConnectionC0655a();

    /* renamed from: com.meishu.sdk.core.oaid.honor.a$a, reason: collision with other inner class name */
    public class ServiceConnectionC0655a implements ServiceConnection {
        public ServiceConnectionC0655a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b bVar = a.this.new b();
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(bVar);
                    iBinder.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                } catch (Exception unused) {
                    parcelObtain2.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
                parcelObtain.recycle();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public class b extends com.meishu.sdk.core.oaid.honor.b {
        public b() {
        }
    }

    public interface c {
    }

    public void a(Context context) {
        boolean z2 = false;
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getPackageInfo("com.hihonor.id", 0);
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            z2 = !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (Throwable unused) {
        }
        if (z2) {
            try {
                Intent intent2 = new Intent();
                intent2.setAction("com.hihonor.id.HnOaIdService");
                intent2.setPackage("com.hihonor.id");
                context.bindService(intent2, this.f31683b, 1);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
