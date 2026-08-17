package com.anythink.odopt.a.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface b extends IInterface {

    public static class a implements b {
        @Override // com.anythink.odopt.a.a.a.b
        public final boolean a() {
            return false;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.a.b
        public final boolean b() {
            return false;
        }

        @Override // com.anythink.odopt.a.a.a.b
        public final String c() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.a.b
        public final String d() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.a.b
        public final String e() {
            return null;
        }

        @Override // com.anythink.odopt.a.a.a.b
        public final void f() {
        }
    }

    boolean a();

    boolean b();

    String c();

    String d();

    String e();

    void f();

    /* renamed from: com.anythink.odopt.a.a.a.b$b, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0118b extends Binder implements b {

        /* renamed from: a, reason: collision with root package name */
        static final int f10533a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f10534b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f10535c = 3;

        /* renamed from: d, reason: collision with root package name */
        static final int f10536d = 4;

        /* renamed from: e, reason: collision with root package name */
        static final int f10537e = 5;

        /* renamed from: f, reason: collision with root package name */
        static final int f10538f = 6;

        /* renamed from: g, reason: collision with root package name */
        private static final String f10539g = "com.bun.lib.MsaIdInterface";

        /* renamed from: com.anythink.odopt.a.a.a.b$b$a */
        public static class a implements b {

            /* renamed from: a, reason: collision with root package name */
            public static b f10540a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f10541b;

            public a(IBinder iBinder) {
                this.f10541b = iBinder;
            }

            private static String g() {
                return AbstractBinderC0118b.f10539g;
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final boolean a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (!this.f10541b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0118b.g() != null) {
                        return AbstractBinderC0118b.g().a();
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
                return this.f10541b;
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final boolean b() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (!this.f10541b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0118b.g() != null) {
                        return AbstractBinderC0118b.g().b();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final String c() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (this.f10541b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0118b.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0118b.g().c();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final String d() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (this.f10541b.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0118b.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0118b.g().d();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final String e() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (this.f10541b.transact(5, parcelObtain, parcelObtain2, 0) || AbstractBinderC0118b.g() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0118b.g().e();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.anythink.odopt.a.a.a.b
            public final void f() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0118b.f10539g);
                    if (this.f10541b.transact(6, parcelObtain, parcelObtain2, 0) || AbstractBinderC0118b.g() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0118b.g().f();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0118b() {
            attachInterface(this, f10539g);
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f10539g);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public static b g() {
            return a.f10540a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(f10539g);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(f10539g);
                    boolean zA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(f10539g);
                    boolean zB = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(zB ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(f10539g);
                    String strC = c();
                    parcel2.writeNoException();
                    parcel2.writeString(strC);
                    return true;
                case 4:
                    parcel.enforceInterface(f10539g);
                    String strD = d();
                    parcel2.writeNoException();
                    parcel2.writeString(strD);
                    return true;
                case 5:
                    parcel.enforceInterface(f10539g);
                    String strE = e();
                    parcel2.writeNoException();
                    parcel2.writeString(strE);
                    return true;
                case 6:
                    parcel.enforceInterface(f10539g);
                    f();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        private static boolean a(b bVar) {
            if (a.f10540a != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (bVar == null) {
                return false;
            }
            a.f10540a = bVar;
            return true;
        }
    }
}
