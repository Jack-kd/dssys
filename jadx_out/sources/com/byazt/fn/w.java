package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface w extends IInterface {
    int hp(long j2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 8})
    public static abstract class hp extends Binder implements w {

        @com.byazt.kj.hp(hp = {0, 1, 588, 839})
        /* renamed from: com.byazt.fn.w$hp$hp, reason: collision with other inner class name */
        public static class C0243hp implements w {
            public static w hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20083l;

            public C0243hp(IBinder iBinder) {
                this.f20083l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20083l;
            }

            @Override // com.byazt.fn.w
            public int hp(long j2) throws RemoteException {
                int iHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                    parcelObtain.writeLong(j2);
                    if (this.f20083l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        iHp = parcelObtain2.readInt();
                    } else {
                        iHp = hp.hp().hp(j2);
                    }
                    return iHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
        }

        public static w hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof w)) ? new C0243hp(iBinder) : (w) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            int iHp = hp(parcel.readLong());
            parcel2.writeNoException();
            parcel2.writeInt(iHp);
            return true;
        }

        public static w hp() {
            return C0243hp.hp;
        }
    }
}
