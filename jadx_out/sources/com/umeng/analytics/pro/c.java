package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface c extends IInterface {

    public static class a implements c {
        @Override // com.umeng.analytics.pro.c
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.c
        public void a(int i2, Bundle bundle) throws RemoteException {
        }
    }

    void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void a(int i2, Bundle bundle) throws RemoteException;

    public static abstract class b extends Binder implements c {

        /* renamed from: a, reason: collision with root package name */
        static final int f48996a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f48997b = 2;

        /* renamed from: c, reason: collision with root package name */
        private static final String f48998c = "com.hihonor.cloudservice.oaid.IOAIDCallBack";

        public static class a implements c {

            /* renamed from: a, reason: collision with root package name */
            public static c f48999a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f49000b;

            public a(IBinder iBinder) {
                this.f49000b = iBinder;
            }

            public String a() {
                return "com.hihonor.cloudservice.oaid.IOAIDCallBack";
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f49000b;
            }

            @Override // com.umeng.analytics.pro.c
            public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f49000b.transact(1, parcelObtain, parcelObtain2, 0) || b.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.a().a(i2, j2, z2, f2, d2, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.umeng.analytics.pro.c
            public void a(int i2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f49000b.transact(2, parcelObtain, parcelObtain2, 0) && b.a() != null) {
                        b.a().a(i2, bundle);
                    } else {
                        parcelObtain2.readException();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public b() {
            attachInterface(this, "com.hihonor.cloudservice.oaid.IOAIDCallBack");
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
            a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        public static boolean a(c cVar) {
            if (a.f48999a != null || cVar == null) {
                return false;
            }
            a.f48999a = cVar;
            return true;
        }

        public static c a() {
            return a.f48999a;
        }
    }
}
