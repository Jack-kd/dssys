package com.ubix.ssp.ad.e.a0.c0.i.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0794a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.a.a$a$a, reason: collision with other inner class name */
        public static class C0795a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46204a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46205b;

            public C0795a(IBinder iBinder) {
                this.f46205b = iBinder;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.a.a
            public String a() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (this.f46205b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0794a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0794a.m().a();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46205b;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.a.a
            public boolean f() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f46205b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0794a.m() != null) {
                        return AbstractBinderC0794a.m().f();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0794a() {
            attachInterface(this, IDidAidlInterface.Stub.DESCRIPTOR);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0795a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0795a.f46204a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(IDidAidlInterface.Stub.DESCRIPTOR);
                return true;
            }
            if (i2 == 1) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                boolean zF = f();
                parcel2.writeNoException();
                parcel2.writeInt(zF ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strA = a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            }
            if (i2 != 5) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            String strC = c();
            parcel2.writeNoException();
            parcel2.writeString(strC);
            return true;
        }
    }

    String a();

    String b();

    String c();

    String e();

    boolean f();
}
