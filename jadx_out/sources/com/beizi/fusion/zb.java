package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface zb extends IInterface {

    public static abstract class a extends Binder implements zb {

        /* renamed from: com.beizi.fusion.zb$a$a, reason: collision with other inner class name */
        public static class C0182a implements zb {

            /* renamed from: b, reason: collision with root package name */
            public static zb f17871b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f17872a;

            public C0182a(IBinder iBinder) {
                this.f17872a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17872a;
            }

            @Override // com.beizi.fusion.zb
            public String getOAID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    if (!this.f17872a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOAID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zb a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zb)) ? new C0182a(iBinder) : (zb) iInterfaceQueryLocalInterface;
        }

        public static zb b() {
            return C0182a.f17871b;
        }
    }

    String getOAID();
}
