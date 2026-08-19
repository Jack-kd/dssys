package com.octopus.ad.d.a.a.a.e.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {
    String a(String str, String str2, String str3) throws RemoteException;

    /* renamed from: com.octopus.ad.d.a.a.a.e.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0736a extends Binder implements a {

        /* renamed from: com.octopus.ad.d.a.a.a.e.a.a$a$a, reason: collision with other inner class name */
        public static class C0737a implements a {

            /* renamed from: a, reason: collision with root package name */
            public static a f33946a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33947b;

            public C0737a(IBinder iBinder) {
                this.f33947b = iBinder;
            }

            @Override // com.octopus.ad.d.a.a.a.e.a.a
            public String a(String str, String str2, String str3) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (this.f33947b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0736a.a() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0736a.a().a(str, str2, str3);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33947b;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0737a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
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

        public static a a() {
            return C0737a.f33946a;
        }
    }
}
