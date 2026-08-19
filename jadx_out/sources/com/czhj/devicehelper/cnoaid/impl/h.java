package com.czhj.devicehelper.cnoaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
class h implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: b, reason: collision with root package name */
    private final Context f29145b;

    /* renamed from: c, reason: collision with root package name */
    private final Handler f29146c = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f29144a = new LinkedBlockingQueue<>(1);

    public static final class a implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private final IBinder f29156a;

        private a(IBinder iBinder) {
            this.f29156a = iBinder;
        }

        public String a() {
            String string = null;
            try {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                this.f29156a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                string = parcelObtain2.readString();
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return string;
            } catch (Throwable th) {
                SigmobLog.e("getOAID", th);
                return string;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f29156a;
        }
    }

    public h(Context context) {
        this.f29145b = context;
    }

    private String a(String str) {
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(str);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.czhj.devicehelper.cnoaid.impl.h.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
                try {
                    h.this.f29144a.put(iBinder);
                } catch (Exception e2) {
                    SigmobLog.e(e2.getMessage());
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        try {
            if (this.f29145b.bindService(intent, serviceConnection, 1)) {
                return new a(this.f29144a.take()).a();
            }
        } catch (Exception e2) {
            SigmobLog.e(e2.getMessage());
        } finally {
            this.f29145b.unbindService(serviceConnection);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.czhj.devicehelper.cnoaid.c cVar) {
        if (!a()) {
            SigmobLog.e("huawei OAID not Support");
            a(cVar, new com.czhj.devicehelper.cnoaid.f("huawei OAID not support"));
            return;
        }
        String strA = null;
        try {
            Object objInvoke = AdvertisingIdClient.class.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f29145b);
            if (objInvoke != null) {
                Object objInvoke2 = objInvoke.getClass().getDeclaredMethod("getId", null).invoke(objInvoke, null);
                if (objInvoke2 instanceof String) {
                    a(cVar, (String) objInvoke2);
                    return;
                }
                return;
            }
            SigmobLog.e("huawei OAID info is null");
            String[] strArr = {"com.huawei.hwid", "com.huawei.hwid.tv", "com.huawei.hms"};
            String strA2 = null;
            for (int i2 = 0; i2 < 3; i2++) {
                String str = strArr[i2];
                if (!TextUtils.isEmpty(strA2)) {
                    a(cVar, strA2);
                    return;
                }
                strA2 = a(str);
            }
            a(cVar, new com.czhj.devicehelper.cnoaid.f("huawei OAID info is null"));
        } catch (Throwable th) {
            try {
                String[] strArr2 = {"com.huawei.hwid", "com.huawei.hwid.tv", "com.huawei.hms"};
                for (int i3 = 0; i3 < 3; i3++) {
                    String str2 = strArr2[i3];
                    if (!TextUtils.isEmpty(strA)) {
                        a(cVar, strA);
                        return;
                    }
                    strA = a(str2);
                }
                SigmobLog.e("HWDeviceIDHelper error, will retry", th);
                a(cVar, new com.czhj.devicehelper.cnoaid.f(th));
            } catch (Throwable th2) {
                SigmobLog.e("HWDeviceIDHelper error ", th2);
                a(cVar, new com.czhj.devicehelper.cnoaid.f(th2));
            }
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(final com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29145b == null || cVar == null) {
            return;
        }
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.1
            @Override // java.lang.Runnable
            public void run() {
                h.this.b(cVar);
            }
        });
    }

    private void a(final com.czhj.devicehelper.cnoaid.c cVar, final com.czhj.devicehelper.cnoaid.f fVar) {
        this.f29146c.post(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.4
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(fVar);
            }
        });
    }

    private void a(final com.czhj.devicehelper.cnoaid.c cVar, final String str) {
        this.f29146c.post(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.3
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(str);
            }
        });
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        PackageManager packageManager;
        if (this.f29145b == null) {
            return false;
        }
        try {
            Object objInvoke = AdvertisingIdClient.class.getMethod("isAdvertisingIdAvailable", Context.class).invoke(null, this.f29145b);
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable th) {
            SigmobLog.e("hw oaid support", th);
        }
        try {
            packageManager = this.f29145b.getPackageManager();
        } catch (Throwable unused) {
        }
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) == null && packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        }
        return true;
    }
}
