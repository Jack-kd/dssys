package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface pu extends IInterface {
    void hp(int i2, int i3) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 774})
    public static abstract class hp extends Binder implements pu {

        @com.byazt.kj.hp(hp = {0, 1, 588, 2122})
        /* renamed from: com.byazt.fn.pu$hp$hp, reason: collision with other inner class name */
        public static class C0236hp implements pu {
            public static pu hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20076l;

            public C0236hp(IBinder iBinder) {
                this.f20076l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20076l;
            }

            @Override // com.byazt.fn.pu
            public void hp(int i2, int i3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (this.f20076l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().hp(i2, i3);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
        }

        public static pu hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof pu)) ? new C0236hp(iBinder) : (pu) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            hp(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        public static pu hp() {
            return C0236hp.hp;
        }
    }
}
