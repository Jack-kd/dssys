package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface eu extends IInterface {

    public static class a implements eu {
        @Override // com.umeng.analytics.pro.eu
        public String a() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    String a() throws RemoteException;

    public static abstract class b extends Binder implements eu {

        /* renamed from: a, reason: collision with root package name */
        static final int f49309a = 1;

        /* renamed from: b, reason: collision with root package name */
        private static final String f49310b = "com.zui.deviceidservice.IDeviceidInterface";

        public static class a implements eu {

            /* renamed from: a, reason: collision with root package name */
            public static eu f49311a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f49312b;

            public a(IBinder iBinder) {
                this.f49312b = iBinder;
            }

            @Override // com.umeng.analytics.pro.eu
            public String a() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f49310b);
                    if (this.f49312b.transact(1, parcelObtain, parcelObtain2, 0) || b.b() == null) {
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
                return this.f49312b;
            }

            public String b() {
                return b.f49310b;
            }
        }

        public b() {
            attachInterface(this, f49310b);
        }

        public static eu a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f49310b);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof eu)) ? new a(iBinder) : (eu) iInterfaceQueryLocalInterface;
        }

        public static eu b() {
            return a.f49311a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(f49310b);
                return true;
            }
            parcel.enforceInterface(f49310b);
            String strA = a();
            parcel2.writeNoException();
            parcel2.writeString(strA);
            return true;
        }

        public static boolean a(eu euVar) {
            if (a.f49311a != null || euVar == null) {
                return false;
            }
            a.f49311a = euVar;
            return true;
        }
    }
}
