package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface qk extends IInterface {

    public static abstract class a extends Binder implements qk {

        /* renamed from: com.beizi.fusion.qk$a$a, reason: collision with other inner class name */
        public static class C0169a implements qk {

            /* renamed from: b, reason: collision with root package name */
            public static qk f15822b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f15823a;

            public C0169a(IBinder iBinder) {
                this.f15823a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15823a;
            }

            @Override // com.beizi.fusion.qk
            public String getOaid() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (!this.f15823a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOaid();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.beizi.fusion.qk
            public boolean isOaidTrackLimited() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    if (!this.f15823a.transact(2, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().isOaidTrackLimited();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static qk a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof qk)) ? new C0169a(iBinder) : (qk) iInterfaceQueryLocalInterface;
        }

        public static qk b() {
            return C0169a.f15822b;
        }
    }

    String getOaid();

    boolean isOaidTrackLimited();
}
