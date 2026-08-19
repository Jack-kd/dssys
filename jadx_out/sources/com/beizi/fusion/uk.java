package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface uk extends IInterface {

    public static abstract class a extends Binder implements uk {

        /* renamed from: com.beizi.fusion.uk$a$a, reason: collision with other inner class name */
        public static class C0173a implements uk {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f16504a;

            public C0173a(IBinder iBinder) {
                this.f16504a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16504a;
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
                        this.f16504a.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        return parcelObtain2.readString();
                    } catch (Exception e2) {
                        e2.printStackTrace();
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

        public static uk a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof uk)) ? new C0173a(iBinder) : (uk) iInterfaceQueryLocalInterface;
        }
    }
}
