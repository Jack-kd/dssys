package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface v extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 588, 709})
    public static abstract class hp extends Binder implements v {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1704})
        /* renamed from: com.byazt.fn.v$hp$hp, reason: collision with other inner class name */
        public static class C0242hp implements v {
            public static v hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20082l;

            public C0242hp(IBinder iBinder) {
                this.f20082l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20082l;
            }

            @Override // com.byazt.fn.v
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
                    if (this.f20082l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
        }

        public static v hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof v)) ? new C0242hp(iBinder) : (v) iInterfaceQueryLocalInterface;
        }

        public static v l() {
            return C0242hp.hp;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback");
            hp();
            parcel2.writeNoException();
            return true;
        }
    }

    void hp() throws RemoteException;
}
