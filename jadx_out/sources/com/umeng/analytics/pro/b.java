package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface b extends IInterface {

    public static class a implements b {
        @Override // com.umeng.analytics.pro.b
        public String a(String str) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public String b() throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public String c(String str) throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public String d(String str) throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public String e(String str) throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.b
        public boolean a() throws RemoteException {
            return false;
        }

        @Override // com.umeng.analytics.pro.b
        public String b(String str) throws RemoteException {
            return null;
        }
    }

    String a(String str) throws RemoteException;

    boolean a() throws RemoteException;

    String b() throws RemoteException;

    String b(String str) throws RemoteException;

    String c(String str) throws RemoteException;

    String d(String str) throws RemoteException;

    String e(String str) throws RemoteException;

    /* renamed from: com.umeng.analytics.pro.b$b, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0855b extends Binder implements b {

        /* renamed from: a, reason: collision with root package name */
        static final int f48756a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f48757b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f48758c = 3;

        /* renamed from: d, reason: collision with root package name */
        static final int f48759d = 4;

        /* renamed from: e, reason: collision with root package name */
        static final int f48760e = 5;

        /* renamed from: f, reason: collision with root package name */
        static final int f48761f = 6;

        /* renamed from: g, reason: collision with root package name */
        static final int f48762g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final String f48763h = "com.coolpad.deviceidsupport.IDeviceIdManager";

        /* renamed from: com.umeng.analytics.pro.b$b$a */
        public static class a implements b {

            /* renamed from: a, reason: collision with root package name */
            public static b f48764a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f48765b;

            public a(IBinder iBinder) {
                this.f48765b = iBinder;
            }

            @Override // com.umeng.analytics.pro.b
            public String a(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    parcelObtain.writeString(str);
                    if (this.f48765b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0855b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0855b.c().a(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f48765b;
            }

            @Override // com.umeng.analytics.pro.b
            public String b(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    parcelObtain.writeString(str);
                    if (this.f48765b.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0855b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0855b.c().b(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String c() {
                return AbstractBinderC0855b.f48763h;
            }

            @Override // com.umeng.analytics.pro.b
            public String d(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    parcelObtain.writeString(str);
                    if (this.f48765b.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0855b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0855b.c().d(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.b
            public String e(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    parcelObtain.writeString(str);
                    if (this.f48765b.transact(5, parcelObtain, parcelObtain2, 0) || AbstractBinderC0855b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0855b.c().e(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.b
            public String c(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    parcelObtain.writeString(str);
                    if (this.f48765b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0855b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0855b.c().c(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.b
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    if (!this.f48765b.transact(6, parcelObtain, parcelObtain2, 0) && AbstractBinderC0855b.c() != null) {
                        return AbstractBinderC0855b.c().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.b
            public String b() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0855b.f48763h);
                    if (!this.f48765b.transact(7, parcelObtain, parcelObtain2, 0) && AbstractBinderC0855b.c() != null) {
                        string = AbstractBinderC0855b.c().b();
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

        public AbstractBinderC0855b() {
            attachInterface(this, f48763h);
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f48763h);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public static b c() {
            return a.f48764a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString(f48763h);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(f48763h);
                    String strA = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 2:
                    parcel.enforceInterface(f48763h);
                    String strB = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 3:
                    parcel.enforceInterface(f48763h);
                    String strC = c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                case 4:
                    parcel.enforceInterface(f48763h);
                    String strD = d(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strD);
                    return true;
                case 5:
                    parcel.enforceInterface(f48763h);
                    String strE = e(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strE);
                    return true;
                case 6:
                    parcel.enforceInterface(f48763h);
                    boolean zA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(f48763h);
                    String strB2 = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB2);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        public static boolean a(b bVar) {
            if (a.f48764a != null || bVar == null) {
                return false;
            }
            a.f48764a = bVar;
            return true;
        }
    }
}
