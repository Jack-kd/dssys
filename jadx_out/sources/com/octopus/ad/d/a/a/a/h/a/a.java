package com.octopus.ad.d.a.a.a.h.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {
    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b() throws RemoteException;

    String b(String str) throws RemoteException;

    String c(String str) throws RemoteException;

    boolean c() throws RemoteException;

    /* renamed from: com.octopus.ad.d.a.a.a.h.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0742a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0743a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a d() {
            return C0743a.f33952a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.zui.deviceidservice.IDeviceidInterface");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    String strA = a();
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 2:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    String strB = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 3:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    boolean zC = c();
                    parcel2.writeNoException();
                    parcel2.writeInt(zC ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    String strA2 = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA2);
                    return true;
                case 5:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    String strB2 = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strB2);
                    return true;
                case 6:
                    parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                    String strC = c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        /* renamed from: com.octopus.ad.d.a.a.a.h.a.a$a$a, reason: collision with other inner class name */
        public static class C0743a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33952a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33953b;

            public C0743a(IBinder iBinder) {
                this.f33953b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public String a() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    if (this.f33953b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0742a.d() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0742a.d().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33953b;
            }

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public String b() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    if (this.f33953b.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0742a.d() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0742a.d().b();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public boolean c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    if (!this.f33953b.transact(3, parcelObtain, parcelObtain2, 0) && AbstractBinderC0742a.d() != null) {
                        return AbstractBinderC0742a.d().c();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public String a(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    if (!this.f33953b.transact(4, parcelObtain, parcelObtain2, 0) && AbstractBinderC0742a.d() != null) {
                        string = AbstractBinderC0742a.d().a(str);
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

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public String b(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    if (!this.f33953b.transact(5, parcelObtain, parcelObtain2, 0) && AbstractBinderC0742a.d() != null) {
                        string = AbstractBinderC0742a.d().b(str);
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

            @Override // com.octopus.ad.d.a.a.a.h.a.a
            public String c(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    if (!this.f33953b.transact(6, parcelObtain, parcelObtain2, 0) && AbstractBinderC0742a.d() != null) {
                        string = AbstractBinderC0742a.d().c(str);
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
