package com.ubix.ssp.ad.e.a0.c0.i.c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.c.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0798a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.c.a$a$a, reason: collision with other inner class name */
        public static class C0799a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46208a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46209b;

            public C0799a(IBinder iBinder) {
                this.f46209b = iBinder;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.c.a
            public String a() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (this.f46209b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0798a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0798a.m().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46209b;
            }
        }

        public AbstractBinderC0798a() {
            attachInterface(this, "com.android.creator.IdsSupplier");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0799a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0799a.f46208a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString("com.android.creator.IdsSupplier");
                return true;
            }
            if (i2 == 1) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                boolean zD = d();
                parcel2.writeNoException();
                parcel2.writeInt(zD ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strC = c(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.android.creator.IdsSupplier");
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            }
            if (i2 != 5) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel.enforceInterface("com.android.creator.IdsSupplier");
            String strA2 = a(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strA2);
            return true;
        }
    }

    String a();

    String a(String str);

    String b();

    String c(String str);

    boolean d();
}
