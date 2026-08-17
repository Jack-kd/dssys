package com.octopus.ad.c.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.octopus.ad.c.c;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class a implements c {

    /* renamed from: com.octopus.ad.c.c.a$a, reason: collision with other inner class name */
    public static final class ServiceConnectionC0720a implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f33789a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f33790b;

        public IBinder a() throws InterruptedException {
            if (this.f33789a) {
                throw new IllegalStateException();
            }
            this.f33789a = true;
            return this.f33790b.poll(5L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f33790b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private ServiceConnectionC0720a() {
            this.f33789a = false;
            this.f33790b = new LinkedBlockingQueue<>();
        }
    }

    public static final class b implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f33791a;

        public b(IBinder iBinder) {
            this.f33791a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                this.f33791a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f33791a;
        }
    }

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        ServiceConnectionC0720a serviceConnectionC0720a = new ServiceConnectionC0720a();
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        if (context.bindService(intent, serviceConnectionC0720a, 1)) {
            try {
                return new b(serviceConnectionC0720a.a()).a();
            } catch (Exception unused) {
            } finally {
                context.unbindService(serviceConnectionC0720a);
            }
        }
        return null;
    }
}
