package com.ubix.ssp.ad.e.a0.c0.i.e;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.e.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0803a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.e.a$a$a, reason: collision with other inner class name */
        public static class C0804a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46214a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46215b;

            public C0804a(IBinder iBinder) {
                this.f46215b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46215b;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.e.a
            public String e(String str) {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f46215b.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0803a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0803a.m().e(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0803a() {
            attachInterface(this, "com.coolpad.deviceidsupport.IDeviceIdManager");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0804a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0804a.f46214a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString("com.coolpad.deviceidsupport.IDeviceIdManager");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strC = c(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                case 2:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strE = e(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strE);
                    return true;
                case 3:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strB = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 4:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strA = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 5:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcel.readString();
                    parcel2.writeNoException();
                    parcel2.writeString("");
                    return true;
                case 6:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    boolean zJ = j();
                    parcel2.writeNoException();
                    parcel2.writeInt(zJ ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strK = k();
                    parcel2.writeNoException();
                    parcel2.writeString(strK);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    String a(String str);

    String b(String str);

    String c(String str);

    String e(String str);

    boolean j();

    String k();
}
