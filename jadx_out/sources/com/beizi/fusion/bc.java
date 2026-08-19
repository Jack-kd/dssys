package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface bc extends IInterface {

    public static abstract class a extends Binder implements bc {

        /* renamed from: com.beizi.fusion.bc$a$a, reason: collision with other inner class name */
        public static class C0152a implements bc {

            /* renamed from: b, reason: collision with root package name */
            public static bc f13076b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f13077a;

            public C0152a(IBinder iBinder) {
                this.f13077a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f13077a;
            }

            @Override // com.beizi.fusion.bc
            public String getOAID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    if (!this.f13077a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOAID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.beizi.fusion.bc
            public boolean isSupport() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    if (!this.f13077a.transact(3, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().isSupport();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static bc a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof bc)) ? new C0152a(iBinder) : (bc) iInterfaceQueryLocalInterface;
        }

        public static bc b() {
            return C0152a.f13076b;
        }
    }

    String getOAID();

    boolean isSupport();
}
