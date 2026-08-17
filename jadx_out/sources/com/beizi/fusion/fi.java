package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface fi extends IInterface {

    public static abstract class a extends Binder implements fi {

        /* renamed from: com.beizi.fusion.fi$a$a, reason: collision with other inner class name */
        public static class C0159a implements fi {

            /* renamed from: b, reason: collision with root package name */
            public static fi f13872b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f13873a;

            public C0159a(IBinder iBinder) {
                this.f13873a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f13873a;
            }

            @Override // com.beizi.fusion.fi
            public String getOAID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f13873a.transact(3, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOAID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.beizi.fusion.fi
            public boolean isSupported() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f13873a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().isSupported();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static fi a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof fi)) ? new C0159a(iBinder) : (fi) iInterfaceQueryLocalInterface;
        }

        public static fi b() {
            return C0159a.f13872b;
        }
    }

    String getOAID();

    boolean isSupported();
}
