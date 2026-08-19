package com.octopus.ad.d.a.a.a.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {
    String a(String str) throws RemoteException;

    boolean a() throws RemoteException;

    String b() throws RemoteException;

    String b(String str) throws RemoteException;

    String c() throws RemoteException;

    /* renamed from: com.octopus.ad.d.a.a.a.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0728a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0729a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a d() {
            return C0729a.f33938a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                boolean zA = a();
                parcel2.writeNoException();
                parcel2.writeInt(zA ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strA = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.android.creator.IdsSupplier");
                return true;
            }
            parcel.enforceInterface("com.android.creator.IdsSupplier");
            String strB2 = b(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strB2);
            return true;
        }

        /* renamed from: com.octopus.ad.d.a.a.a.a.a.a$a$a, reason: collision with other inner class name */
        public static class C0729a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33938a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33939b;

            public C0729a(IBinder iBinder) {
                this.f33939b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.a.a.a
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (!this.f33939b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0728a.d() != null) {
                        return AbstractBinderC0728a.d().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33939b;
            }

            @Override // com.octopus.ad.d.a.a.a.a.a.a
            public String b() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (this.f33939b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0728a.d() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0728a.d().b();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.a.a.a
            public String c() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (this.f33939b.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0728a.d() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0728a.d().c();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.a.a.a
            public String b(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    parcelObtain.writeString(str);
                    if (!this.f33939b.transact(5, parcelObtain, parcelObtain2, 0) && AbstractBinderC0728a.d() != null) {
                        string = AbstractBinderC0728a.d().b(str);
                    } else {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.a.a.a
            public String a(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    parcelObtain.writeString(str);
                    if (!this.f33939b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0728a.d() != null) {
                        string = AbstractBinderC0728a.d().a(str);
                    } else {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
