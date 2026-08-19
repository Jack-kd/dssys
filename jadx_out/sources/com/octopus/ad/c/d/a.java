package com.octopus.ad.c.d;

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

    boolean c() throws RemoteException;

    boolean c(String str) throws RemoteException;

    /* renamed from: com.octopus.ad.c.d.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0721a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0722a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    String strA = a();
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 2:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    String strB = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 3:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    boolean zC = c();
                    parcel2.writeNoException();
                    parcel2.writeInt(zC ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    String strA2 = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA2);
                    return true;
                case 5:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    String strB2 = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strB2);
                    return true;
                case 6:
                    parcel.enforceInterface("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    boolean zC2 = c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zC2 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        /* renamed from: com.octopus.ad.c.d.a$a$a, reason: collision with other inner class name */
        public static class C0722a implements a {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f33792a;

            public C0722a(IBinder iBinder) {
                this.f33792a = iBinder;
            }

            @Override // com.octopus.ad.c.d.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    this.f33792a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33792a;
            }

            @Override // com.octopus.ad.c.d.a
            public String b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    this.f33792a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.c.d.a
            public boolean c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    this.f33792a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.c.d.a
            public String a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    this.f33792a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.c.d.a
            public String b(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    this.f33792a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.octopus.ad.c.d.a
            public boolean c(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("org.repackage.com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    this.f33792a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
