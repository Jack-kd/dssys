package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public interface mf extends IInterface {

    public static abstract class a extends Binder implements mf {

        /* renamed from: com.beizi.fusion.mf$a$a, reason: collision with other inner class name */
        public static class C0164a implements mf {

            /* renamed from: b, reason: collision with root package name */
            public static mf f15082b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f15083a;

            public C0164a(IBinder iBinder) {
                this.f15083a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15083a;
            }

            @Override // com.beizi.fusion.mf
            public String getOAID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (!this.f15083a.transact(3, parcelObtain, parcelObtain2, 0) && a.b() != null) {
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

        public static mf a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof mf)) ? new C0164a(iBinder) : (mf) iInterfaceQueryLocalInterface;
        }

        public static mf b() {
            return C0164a.f15082b;
        }
    }

    String getOAID();
}
