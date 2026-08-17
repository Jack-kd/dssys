package com.anythink.odopt.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface g extends IInterface {

    public static abstract class a extends Binder implements g {

        /* renamed from: a, reason: collision with root package name */
        static final int f10565a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f10566b = 2;

        /* renamed from: c, reason: collision with root package name */
        private static final String f10567c = "com.uodis.opendevice.aidl.OpenDeviceIdentifierService";

        /* renamed from: com.anythink.odopt.a.a.g$a$a, reason: collision with other inner class name */
        public static class C0119a implements g {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f10568a;

            public C0119a(IBinder iBinder) {
                this.f10568a = iBinder;
            }

            private static String c() {
                return a.f10567c;
            }

            @Override // com.anythink.odopt.a.a.g
            public final String a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f10567c);
                    this.f10568a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10568a;
            }

            @Override // com.anythink.odopt.a.a.g
            public final boolean b() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f10567c);
                    this.f10568a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, f10567c);
        }

        public static g a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f10567c);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g)) ? new C0119a(iBinder) : (g) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(f10567c);
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(f10567c);
                return true;
            }
            parcel.enforceInterface(f10567c);
            boolean zB = b();
            parcel2.writeNoException();
            parcel2.writeInt(zB ? 1 : 0);
            return true;
        }
    }

    String a();

    boolean b();
}
