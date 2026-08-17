package com.umeng.commonsdk.statistics.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.core.common.v.o;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: com.umeng.commonsdk.statistics.common.a$a, reason: collision with other inner class name */
    public static final class C0862a {

        /* renamed from: a, reason: collision with root package name */
        private final String f50250a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f50251b;

        public C0862a(String str, boolean z2) {
            this.f50250a = str;
            this.f50251b = z2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.f50250a;
        }

        public boolean a() {
            return this.f50251b;
        }
    }

    public static final class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f50252a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f50253b;

        private b() {
            this.f50252a = false;
            this.f50253b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() throws InterruptedException {
            if (this.f50252a) {
                throw new IllegalStateException();
            }
            this.f50252a = true;
            IBinder iBinderPoll = this.f50253b.poll(5L, TimeUnit.SECONDS);
            if (iBinderPoll != null) {
                return iBinderPoll;
            }
            throw new InterruptedException("Timed out waiting for GMS AdvertisingId service");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f50253b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static String a(Context context) {
        try {
            C0862a c0862aC = c(context);
            if (c0862aC != null && !c0862aC.a()) {
                return c0862aC.b();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String b(Context context) {
        try {
            C0862a c0862aC = c(context);
            if (c0862aC == null) {
                return null;
            }
            return c0862aC.b();
        } catch (Exception unused) {
            return null;
        }
    }

    private static C0862a c(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper() || com.umeng.commonsdk.utils.b.a().a(context, o.a.f8258a, 0) == null) {
            return null;
        }
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, bVar, 1)) {
            throw new IOException("Google Play connection failed");
        }
        try {
            try {
                c cVar = new c(bVar.a());
                boolean zA = cVar.a(true);
                C0862a c0862a = new C0862a(zA ? "" : cVar.a(), zA);
                context.unbindService(bVar);
                return c0862a;
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Throwable th) {
            context.unbindService(bVar);
            throw th;
        }
    }

    public static final class c implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f50254a;

        public c(IBinder iBinder) {
            this.f50254a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f50254a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f50254a;
        }

        public boolean a(boolean z2) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z2 ? 1 : 0);
                this.f50254a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
