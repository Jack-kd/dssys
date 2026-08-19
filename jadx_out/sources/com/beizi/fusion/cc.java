package com.beizi.fusion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes2.dex */
public interface cc extends IInterface {

    public static abstract class a extends Binder implements cc {

        /* renamed from: com.beizi.fusion.cc$a$a, reason: collision with other inner class name */
        public static class C0155a implements cc {

            /* renamed from: b, reason: collision with root package name */
            public static cc f13237b;

            /* renamed from: a, reason: collision with root package name */
            private IBinder f13238a;

            public C0155a(IBinder iBinder) {
                this.f13238a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f13238a;
            }

            @Override // com.beizi.fusion.cc
            public String getOAID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f13238a.transact(3, parcelObtain, parcelObtain2, 0) && a.b() != null) {
                        return a.b().getOAID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.beizi.fusion.cc
            public boolean isSupport() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f13238a.transact(1, parcelObtain, parcelObtain2, 0) && a.b() != null) {
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

        public static cc a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof cc)) ? new C0155a(iBinder) : (cc) iInterfaceQueryLocalInterface;
        }

        public static cc b() {
            return C0155a.f13237b;
        }
    }

    String getOAID();

    boolean isSupport();
}
