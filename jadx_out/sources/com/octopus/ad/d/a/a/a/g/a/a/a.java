package com.octopus.ad.d.a.a.a.g.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.octopus.ad.d.a.a.a.g.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0740a extends Binder implements a {

        /* renamed from: com.octopus.ad.d.a.a.a.g.a.a.a$a$a, reason: collision with other inner class name */
        public static class C0741a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33950a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33951b;

            public C0741a(IBinder iBinder) {
                this.f33951b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.g.a.a.a
            public String a() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (this.f33951b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0740a.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0740a.c().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33951b;
            }

            @Override // com.octopus.ad.d.a.a.a.g.a.a.a
            public boolean b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (!this.f33951b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0740a.c() != null) {
                        return AbstractBinderC0740a.c().b();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0741a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a c() {
            return C0741a.f33950a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            boolean zB = b();
            parcel2.writeNoException();
            parcel2.writeInt(zB ? 1 : 0);
            return true;
        }
    }

    String a() throws RemoteException;

    boolean b() throws RemoteException;
}
