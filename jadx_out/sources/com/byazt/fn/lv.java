package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface lv extends IInterface {
    long hp(int i2, int i3) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 1320})
    public static abstract class hp extends Binder implements lv {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1923})
        /* renamed from: com.byazt.fn.lv$hp$hp, reason: collision with other inner class name */
        public static class C0234hp implements lv {
            public static lv hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20074l;

            public C0234hp(IBinder iBinder) {
                this.f20074l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20074l;
            }

            @Override // com.byazt.fn.lv
            public long hp(int i2, int i3) throws RemoteException {
                long jHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (this.f20074l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        jHp = parcelObtain2.readLong();
                    } else {
                        jHp = hp.hp().hp(i2, i3);
                    }
                    return jHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
        }

        public static lv hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof lv)) ? new C0234hp(iBinder) : (lv) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            long jHp = hp(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeLong(jHp);
            return true;
        }

        public static lv hp() {
            return C0234hp.hp;
        }
    }
}
