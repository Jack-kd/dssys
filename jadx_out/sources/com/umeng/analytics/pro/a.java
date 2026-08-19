package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.umeng.analytics.pro.a$a, reason: collision with other inner class name */
    public static class C0853a implements a {
        @Override // com.umeng.analytics.pro.a
        public String a(String str) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.a
        public String b() throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.a
        public boolean a() throws RemoteException {
            return false;
        }
    }

    String a(String str) throws RemoteException;

    boolean a() throws RemoteException;

    String b() throws RemoteException;

    public static abstract class b extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        static final int f48632a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f48633b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f48634c = 3;

        /* renamed from: d, reason: collision with root package name */
        private static final String f48635d = "com.android.creator.IdsSupplier";

        public b() {
            attachInterface(this, f48635d);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f48635d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0854a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a c() {
            return C0854a.f48636a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(f48635d);
                boolean zA = a();
                parcel2.writeNoException();
                parcel2.writeInt(zA ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(f48635d);
                String strA = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(f48635d);
                return true;
            }
            parcel.enforceInterface(f48635d);
            String strB = b();
            parcel2.writeNoException();
            parcel2.writeString(strB);
            return true;
        }

        public static boolean a(a aVar) {
            if (C0854a.f48636a != null || aVar == null) {
                return false;
            }
            C0854a.f48636a = aVar;
            return true;
        }

        /* renamed from: com.umeng.analytics.pro.a$b$a, reason: collision with other inner class name */
        public static class C0854a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f48636a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f48637b;

            public C0854a(IBinder iBinder) {
                this.f48637b = iBinder;
            }

            @Override // com.umeng.analytics.pro.a
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f48635d);
                    if (!this.f48637b.transact(1, parcelObtain, parcelObtain2, 0) && b.c() != null) {
                        return b.c().a();
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
                return this.f48637b;
            }

            @Override // com.umeng.analytics.pro.a
            public String b() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f48635d);
                    if (this.f48637b.transact(3, parcelObtain, parcelObtain2, 0) || b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = b.c().b();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String c() {
                return b.f48635d;
            }

            @Override // com.umeng.analytics.pro.a
            public String a(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f48635d);
                    parcelObtain.writeString(str);
                    if (!this.f48637b.transact(2, parcelObtain, parcelObtain2, 0) && b.c() != null) {
                        string = b.c().a(str);
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
