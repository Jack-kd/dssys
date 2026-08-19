package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface yb extends IInterface {

    public static abstract class a extends Binder implements yb {

        /* renamed from: com.beizi.fusion.yb$a$a, reason: collision with other inner class name */
        public static class C0180a implements yb {

            /* renamed from: b, reason: collision with root package name */
            public static yb f17673b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f17674a;

            public C0180a(IBinder iBinder) {
                this.f17674a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17674a;
            }

            @Override // com.beizi.fusion.yb
            public String getOAID(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (!this.f17674a.transact(2, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOAID(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static yb a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof yb)) ? new C0180a(iBinder) : (yb) iInterfaceQueryLocalInterface;
        }

        public static yb b() {
            return C0180a.f17673b;
        }
    }

    String getOAID(String str);
}
