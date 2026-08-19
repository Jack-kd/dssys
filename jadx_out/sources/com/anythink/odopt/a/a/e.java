package com.anythink.odopt.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface e extends IInterface {

    public static class a implements e {
        @Override // com.anythink.odopt.a.a.e
        public final boolean a() {
            return false;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.e
        public final String b() {
            return null;
        }
    }

    boolean a();

    String b();

    public static abstract class b extends Binder implements e {

        /* renamed from: a, reason: collision with root package name */
        static final int f10555a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f10556b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f10557c = 3;

        /* renamed from: d, reason: collision with root package name */
        static final int f10558d = 4;

        /* renamed from: e, reason: collision with root package name */
        static final int f10559e = 5;

        /* renamed from: f, reason: collision with root package name */
        private static final String f10560f = "com.android.creator.FreemeIdsSupplier";

        public static class a implements e {

            /* renamed from: a, reason: collision with root package name */
            public static e f10561a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f10562b;

            public a(IBinder iBinder) {
                this.f10562b = iBinder;
            }

            private static String c() {
                return b.f10560f;
            }

            @Override // com.anythink.odopt.a.a.e
            public final boolean a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f10560f);
                    if (!this.f10562b.transact(1, parcelObtain, parcelObtain2, 0) && b.c() != null) {
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
            public final IBinder asBinder() {
                return this.f10562b;
            }

            @Override // com.anythink.odopt.a.a.e
            public final String b() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f10560f);
                    if (this.f10562b.transact(3, parcelObtain, parcelObtain2, 0) || b.c() == null) {
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
        }

        public b() {
            attachInterface(this, f10560f);
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f10560f);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        public static e c() {
            return a.f10561a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(f10560f);
                boolean zA = a();
                parcel2.writeNoException();
                parcel2.writeInt(zA ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(f10560f);
                parcel.readString();
                parcel2.writeNoException();
                parcel2.writeString("");
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(f10560f);
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(f10560f);
                parcel2.writeNoException();
                parcel2.writeString("");
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(f10560f);
                return true;
            }
            parcel.enforceInterface(f10560f);
            parcel.readString();
            parcel2.writeNoException();
            parcel2.writeString("");
            return true;
        }

        private static boolean a(e eVar) {
            if (a.f10561a != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (eVar == null) {
                return false;
            }
            a.f10561a = eVar;
            return true;
        }
    }
}
