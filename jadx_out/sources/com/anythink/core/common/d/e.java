package com.anythink.core.common.d;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public final class e {

    public final class a {

        /* renamed from: b, reason: collision with root package name */
        private final String f2461b;

        /* renamed from: c, reason: collision with root package name */
        private final boolean f2462c;

        public a(String str, boolean z2) {
            this.f2461b = str;
            this.f2462c = z2;
        }

        private boolean b() {
            return this.f2462c;
        }

        public final String a() {
            return this.f2461b;
        }
    }

    public final class c implements IInterface {

        /* renamed from: b, reason: collision with root package name */
        private IBinder f2467b;

        public c(IBinder iBinder) {
            this.f2467b = iBinder;
        }

        public final String a() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f2467b.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f2467b;
        }

        public final boolean b() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.f2467b.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    public final a a(Context context) throws IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        b bVar = new b(this, (byte) 0);
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0 || !context.bindService(intent, bVar, 1)) {
            throw new IOException("Google Play connection failed");
        }
        try {
            c cVar = new c(bVar.a());
            return new a(cVar.a(), cVar.b());
        } finally {
        }
    }

    public final class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f2463a;

        /* renamed from: c, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f2465c;

        private b() {
            this.f2463a = false;
            this.f2465c = new LinkedBlockingQueue<>(1);
        }

        public final IBinder a() {
            if (this.f2463a) {
                throw new IllegalStateException();
            }
            this.f2463a = true;
            return this.f2465c.take();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f2465c.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }

        public /* synthetic */ b(e eVar, byte b3) {
            this();
        }
    }
}
