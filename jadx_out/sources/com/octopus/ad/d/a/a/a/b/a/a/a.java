package com.octopus.ad.d.a.a.a.b.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.octopus.ad.d.a.a.a.b.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0730a extends Binder implements a {

        /* renamed from: com.octopus.ad.d.a.a.a.b.a.a.a$a$a, reason: collision with other inner class name */
        public static class C0731a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33940a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33941b;

            public C0731a(IBinder iBinder) {
                this.f33941b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.b.a.a.a
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f33941b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0730a.f() != null) {
                        return AbstractBinderC0730a.f().a();
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
                return this.f33941b;
            }

            @Override // com.octopus.ad.d.a.a.a.b.a.a.a
            public String b() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (this.f33941b.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0730a.f() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0730a.f().b();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.b.a.a.a
            public String c() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (this.f33941b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0730a.f() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0730a.f().c();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.b.a.a.a
            public String d() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (this.f33941b.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0730a.f() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0730a.f().d();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.b.a.a.a
            public String e() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (this.f33941b.transact(5, parcelObtain, parcelObtain2, 0) || AbstractBinderC0730a.f() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0730a.f().e();
                    }
                    return string;
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
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0731a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a f() {
            return C0731a.f33940a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                boolean zA = a();
                parcel2.writeNoException();
                parcel2.writeInt(zA ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strD = d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(IDidAidlInterface.Stub.DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            String strE = e();
            parcel2.writeNoException();
            parcel2.writeString(strE);
            return true;
        }
    }

    boolean a() throws RemoteException;

    String b() throws RemoteException;

    String c() throws RemoteException;

    String d() throws RemoteException;

    String e() throws RemoteException;
}
