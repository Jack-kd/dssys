package com.octopus.ad.d.a.a.a.c.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.octopus.ad.d.a.a.a.c.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0732a extends Binder implements a {

        /* renamed from: com.octopus.ad.d.a.a.a.c.a.a$a$a, reason: collision with other inner class name */
        public static class C0733a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33942a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33943b;

            public C0733a(IBinder iBinder) {
                this.f33943b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f33943b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0732a.g() != null) {
                        return AbstractBinderC0732a.g().a();
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
                return this.f33943b;
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public boolean b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f33943b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0732a.g() != null) {
                        return AbstractBinderC0732a.g().b();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public String c() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f33943b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0732a.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0732a.g().c();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public String d() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f33943b.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0732a.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0732a.g().d();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public String e() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f33943b.transact(5, parcelObtain, parcelObtain2, 0) || AbstractBinderC0732a.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0732a.g().e();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.c.a.a
            public void f() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f33943b.transact(6, parcelObtain, parcelObtain2, 0) || AbstractBinderC0732a.g() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0732a.g().f();
                    }
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
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0733a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a g() {
            return C0733a.f33942a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bun.lib.MsaIdInterface");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zB = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(zB ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strC = c();
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                case 4:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strD = d();
                    parcel2.writeNoException();
                    parcel2.writeString(strD);
                    return true;
                case 5:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strE = e();
                    parcel2.writeNoException();
                    parcel2.writeString(strE);
                    return true;
                case 6:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    f();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean a() throws RemoteException;

    boolean b() throws RemoteException;

    String c() throws RemoteException;

    String d() throws RemoteException;

    String e() throws RemoteException;

    void f() throws RemoteException;
}
