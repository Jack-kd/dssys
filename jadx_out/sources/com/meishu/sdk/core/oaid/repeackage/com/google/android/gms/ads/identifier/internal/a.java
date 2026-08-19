package com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0665a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31719a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a$a$a, reason: collision with other inner class name */
        public static class C0666a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31720a;

            public C0666a(IBinder iBinder) {
                this.f31720a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a
            public boolean a(boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f31720a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0665a.f31719a;
                    }
                    parcelObtain2.readException();
                    boolean z3 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z3;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f31720a;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a
            public String c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    if (!this.f31720a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0665a.f31719a;
                    }
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return string;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }

    boolean a(boolean z2) throws RemoteException;

    String c() throws RemoteException;
}
