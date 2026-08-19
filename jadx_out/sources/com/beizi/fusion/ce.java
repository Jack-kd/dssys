package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface ce extends IInterface {

    public static abstract class a extends Binder implements ce {

        /* renamed from: com.beizi.fusion.ce$a$a, reason: collision with other inner class name */
        public static class C0156a implements ce {

            /* renamed from: b, reason: collision with root package name */
            public static ce f13239b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f13240a;

            public C0156a(IBinder iBinder) {
                this.f13240a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f13240a;
            }

            @Override // com.beizi.fusion.ce
            public String getSerID(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.f13240a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getSerID(str, str2, str3);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static ce a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ce)) ? new C0156a(iBinder) : (ce) iInterfaceQueryLocalInterface;
        }

        public static ce b() {
            return C0156a.f13239b;
        }
    }

    String getSerID(String str, String str2, String str3);
}
