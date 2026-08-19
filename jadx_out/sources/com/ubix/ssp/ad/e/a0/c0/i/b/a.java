package com.ubix.ssp.ad.e.a0.c0.i.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.b.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0796a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.b.a$a$a, reason: collision with other inner class name */
        public static class C0797a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46206a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46207b;

            public C0797a(IBinder iBinder) {
                this.f46207b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46207b;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.b.a
            public boolean g() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (!this.f46207b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0796a.m() != null) {
                        return AbstractBinderC0796a.m().g();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.b.a
            public String i() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (this.f46207b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0796a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0796a.m().i();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0796a() {
            attachInterface(this, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0797a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0797a.f46206a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                String strI = i();
                parcel2.writeNoException();
                parcel2.writeString(strI);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            boolean zG = g();
            parcel2.writeNoException();
            parcel2.writeInt(zG ? 1 : 0);
            return true;
        }
    }

    boolean g();

    String i();
}
