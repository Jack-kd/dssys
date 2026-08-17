package com.anythink.odopt.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface l extends IInterface {

    public static class a implements l {
        @Override // com.anythink.odopt.a.a.l
        public final String a(String str) {
            return null;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.l
        public final String b() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.l
        public final boolean a() {
            return false;
        }
    }

    String a(String str);

    boolean a();

    String b();

    public static abstract class b extends Binder implements l {

        /* renamed from: a, reason: collision with root package name */
        static final int f10588a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f10589b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f10590c = 3;

        /* renamed from: d, reason: collision with root package name */
        static final int f10591d = 4;

        /* renamed from: e, reason: collision with root package name */
        static final int f10592e = 5;

        /* renamed from: f, reason: collision with root package name */
        static final int f10593f = 6;

        /* renamed from: g, reason: collision with root package name */
        static final int f10594g = 7;

        /* renamed from: h, reason: collision with root package name */
        private static final String f10595h = "com.coolpad.deviceidsupport.IDeviceIdManager";

        public b() {
            attachInterface(this, f10595h);
        }

        public static l a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f10595h);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof l)) ? new a(iBinder) : (l) iInterfaceQueryLocalInterface;
        }

        public static l c() {
            return a.f10596a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(f10595h);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(f10595h);
                    parcel.readString();
                    parcel2.writeNoException();
                    parcel2.writeString("");
                    return true;
                case 2:
                    parcel.enforceInterface(f10595h);
                    String strA = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strA);
                    return true;
                case 3:
                    parcel.enforceInterface(f10595h);
                    parcel.readString();
                    parcel2.writeNoException();
                    parcel2.writeString("");
                    return true;
                case 4:
                    parcel.enforceInterface(f10595h);
                    parcel.readString();
                    parcel2.writeNoException();
                    parcel2.writeString("");
                    return true;
                case 5:
                    parcel.enforceInterface(f10595h);
                    parcel.readString();
                    parcel2.writeNoException();
                    parcel2.writeString("");
                    return true;
                case 6:
                    parcel.enforceInterface(f10595h);
                    boolean zA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(f10595h);
                    String strB = b();
                    parcel2.writeNoException();
                    parcel2.writeString(strB);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        private static boolean a(l lVar) {
            if (a.f10596a != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (lVar == null) {
                return false;
            }
            a.f10596a = lVar;
            return true;
        }

        public static class a implements l {

            /* renamed from: a, reason: collision with root package name */
            public static l f10596a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f10597b;

            public a(IBinder iBinder) {
                this.f10597b = iBinder;
            }

            private static String c() {
                return b.f10595h;
            }

            @Override // com.anythink.odopt.a.a.l
            public final String a(String str) {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f10595h);
                    parcelObtain.writeString(str);
                    if (this.f10597b.transact(2, parcelObtain, parcelObtain2, 0) || b.c() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = b.c().a(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10597b;
            }

            @Override // com.anythink.odopt.a.a.l
            public final String b() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f10595h);
                    if (this.f10597b.transact(7, parcelObtain, parcelObtain2, 0) || b.c() == null) {
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

            @Override // com.anythink.odopt.a.a.l
            public final boolean a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f10595h);
                    if (!this.f10597b.transact(6, parcelObtain, parcelObtain2, 0) && b.c() != null) {
                        return b.c().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
