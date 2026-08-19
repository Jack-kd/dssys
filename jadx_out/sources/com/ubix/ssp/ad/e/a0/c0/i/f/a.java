package com.ubix.ssp.ad.e.a0.c0.i.f;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.f.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0805a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.f.a$a$a, reason: collision with other inner class name */
        public static class C0806a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46216a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46217b;

            public C0806a(IBinder iBinder) {
                this.f46217b = iBinder;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.f.a
            public String a() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f46217b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0805a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0805a.m().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46217b;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.f.a
            public boolean d() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f46217b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0805a.m() != null) {
                        return AbstractBinderC0805a.m().d();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0805a() {
            attachInterface(this, "com.bun.lib.MsaIdInterface");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0806a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0806a.f46216a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bun.lib.MsaIdInterface");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zD = d();
                    parcel2.writeNoException();
                    parcel2.writeInt(zD ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zL = l();
                    parcel2.writeNoException();
                    parcel2.writeInt(zL ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strA = a();
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 4:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strB = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                case 5:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strC = c();
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                case 6:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    h();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    String a();

    String b();

    String c();

    boolean d();

    void h();

    boolean l();
}
