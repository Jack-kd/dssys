package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface e extends IInterface {

    public static class a implements e {
        @Override // com.umeng.analytics.pro.e
        public String a() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.e
        public String b(String str) throws RemoteException {
            return null;
        }

        @Override // com.umeng.analytics.pro.e
        public String a(String str) throws RemoteException {
            return null;
        }
    }

    String a() throws RemoteException;

    String a(String str) throws RemoteException;

    String b(String str) throws RemoteException;

    public static abstract class b extends Binder implements e {

        /* renamed from: a, reason: collision with root package name */
        static final int f49254a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f49255b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f49256c = 3;

        /* renamed from: d, reason: collision with root package name */
        private static final String f49257d = "com.samsung.android.deviceidservice.IDeviceIdService";

        public static class a implements e {

            /* renamed from: a, reason: collision with root package name */
            public static e f49258a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f49259b;

            public a(IBinder iBinder) {
                this.f49259b = iBinder;
            }

            @Override // com.umeng.analytics.pro.e
            public String a() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f49257d);
                    if (this.f49259b.transact(1, parcelObtain, parcelObtain2, 0) || b.b() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = b.b().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f49259b;
            }

            public String b() {
                return b.f49257d;
            }

            @Override // com.umeng.analytics.pro.e
            public String b(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f49257d);
                    parcelObtain.writeString(str);
                    if (this.f49259b.transact(3, parcelObtain, parcelObtain2, 0) || b.b() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = b.b().b(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.e
            public String a(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f49257d);
                    parcelObtain.writeString(str);
                    if (!this.f49259b.transact(2, parcelObtain, parcelObtain2, 0) && b.b() != null) {
                        string = b.b().a(str);
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

        public b() {
            attachInterface(this, f49257d);
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f49257d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        public static e b() {
            return a.f49258a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(f49257d);
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(f49257d);
                String strA2 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strA2);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(f49257d);
                return true;
            }
            parcel.enforceInterface(f49257d);
            String strB = b(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strB);
            return true;
        }

        public static boolean a(e eVar) {
            if (a.f49258a != null || eVar == null) {
                return false;
            }
            a.f49258a = eVar;
            return true;
        }
    }
}
