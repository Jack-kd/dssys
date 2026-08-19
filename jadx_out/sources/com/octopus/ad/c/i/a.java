package com.octopus.ad.c.i;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {
    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b(String str) throws RemoteException;

    /* renamed from: com.octopus.ad.c.i.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0725a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0726a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a b() {
            return C0726a.f33846a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.samsung.android.deviceidservice.IDeviceIdService");
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.samsung.android.deviceidservice.IDeviceIdService");
                String strA2 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA2);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.samsung.android.deviceidservice.IDeviceIdService");
                return true;
            }
            parcel.enforceInterface("com.samsung.android.deviceidservice.IDeviceIdService");
            String strB = b(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strB);
            return true;
        }

        /* renamed from: com.octopus.ad.c.i.a$a$a, reason: collision with other inner class name */
        public static class C0726a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33846a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33847b;

            public C0726a(IBinder iBinder) {
                this.f33847b = iBinder;
            }

            @Override // com.octopus.ad.c.i.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    if (!this.f33847b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0725a.b() != null) {
                        String strA = AbstractBinderC0725a.b().a();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return strA;
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

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33847b;
            }

            @Override // com.octopus.ad.c.i.a
            public String b(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    parcelObtain.writeString(str);
                    if (!this.f33847b.transact(3, parcelObtain, parcelObtain2, 0) && AbstractBinderC0725a.b() != null) {
                        String strB = AbstractBinderC0725a.b().b(str);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return strB;
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

            @Override // com.octopus.ad.c.i.a
            public String a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    parcelObtain.writeString(str);
                    if (!this.f33847b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0725a.b() != null) {
                        String strA = AbstractBinderC0725a.b().a(str);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return strA;
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
}
