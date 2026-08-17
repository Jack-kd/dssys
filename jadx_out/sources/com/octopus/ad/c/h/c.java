package com.octopus.ad.c.h;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* renamed from: com.octopus.ad.c.h.c$a$a, reason: collision with other inner class name */
        public static class C0724a implements c {

            /* renamed from: b, reason: collision with root package name */
            public static c f33839b;

            /* renamed from: a, reason: collision with root package name */
            public IBinder f33840a;

            public C0724a(IBinder iBinder) {
                this.f33840a = iBinder;
            }

            @Override // com.octopus.ad.c.h.c
            public String a(String str, String str2, String str3) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (this.f33840a.transact(1, parcelObtain, parcelObtain2, 0) || a.a() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = a.a().a(str, str2, str3);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33840a;
            }
        }

        public static c a() {
            return C0724a.f33839b;
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0724a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }
    }

    String a(String str, String str2, String str3) throws RemoteException;
}
