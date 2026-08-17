package com.ubix.ssp.ad.e.a0.c0.i.g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public interface a extends IInterface {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.g.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0807a extends Binder implements a {

        /* renamed from: com.ubix.ssp.ad.e.a0.c0.i.g.a$a$a, reason: collision with other inner class name */
        public static class C0808a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f46218a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f46219b;

            public C0808a(IBinder iBinder) {
                this.f46219b = iBinder;
            }

            @Override // com.ubix.ssp.ad.e.a0.c0.i.g.a
            public String a(String str, String str2, String str3) {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (this.f46219b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0807a.m() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0807a.m().a(str, str2, str3);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f46219b;
            }
        }

        public AbstractBinderC0807a() {
            attachInterface(this, "com.heytap.openid.IOpenID");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0808a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a m() {
            return C0808a.f46218a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.heytap.openid.IOpenID");
                return true;
            }
            parcel.enforceInterface("com.heytap.openid.IOpenID");
            String strA = a(parcel.readString(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strA);
            return true;
        }
    }

    String a(String str, String str2, String str3);
}
