package com.anythink.odopt.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface r extends IInterface {

    public static abstract class a extends Binder implements r {

        /* renamed from: a, reason: collision with root package name */
        private static final String f10616a = "com.oplus.stdid.IStdID";

        /* renamed from: b, reason: collision with root package name */
        private static final int f10617b = 1;

        /* renamed from: com.anythink.odopt.a.a.r$a$a, reason: collision with other inner class name */
        public static class C0123a implements r {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f10618a;

            public C0123a(IBinder iBinder) {
                this.f10618a = iBinder;
            }

            @Override // com.anythink.odopt.a.a.r
            public final String a(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f10616a);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f10618a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10618a;
            }
        }

        public a() {
            attachInterface(this, f10616a);
        }

        public static r a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f10616a);
            return iInterfaceQueryLocalInterface instanceof r ? (r) iInterfaceQueryLocalInterface : new C0123a(iBinder);
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
