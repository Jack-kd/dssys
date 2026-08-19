package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface tk extends IInterface {

    public static abstract class a extends Binder implements tk {

        /* renamed from: com.beizi.fusion.tk$a$a, reason: collision with other inner class name */
        public static class C0171a implements tk {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f16383a;

            public C0171a(IBinder iBinder) {
                this.f16383a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16383a;
            }

            public String getSerID(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                        parcelObtain.writeString(str);
                        parcelObtain.writeString(str2);
                        parcelObtain.writeString(str3);
                        this.f16383a.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        return parcelObtain2.readString();
                    } catch (Exception e2) {
                        rm.a(e2);
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        return null;
                    }
                } finally {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            }
        }

        public static tk a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof tk)) ? new C0171a(iBinder) : (tk) iInterfaceQueryLocalInterface;
        }
    }
}
