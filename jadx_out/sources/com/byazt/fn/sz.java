package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes2.dex */
public interface sz extends IInterface {
    void hp(List<String> list) throws RemoteException;

    boolean hp() throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 1655})
    public static abstract class hp extends Binder implements sz {
        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
        }

        public static sz hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof sz)) ? new C0239hp(iBinder) : (sz) iInterfaceQueryLocalInterface;
        }

        public static sz l() {
            return C0239hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                hp(parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
            boolean zHp = hp();
            parcel2.writeNoException();
            parcel2.writeInt(zHp ? 1 : 0);
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, 588, 2473})
        /* renamed from: com.byazt.fn.sz$hp$hp, reason: collision with other inner class name */
        public static class C0239hp implements sz {
            public static sz hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20079l;

            public C0239hp(IBinder iBinder) {
                this.f20079l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20079l;
            }

            @Override // com.byazt.fn.sz
            public void hp(List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    parcelObtain.writeStringList(list);
                    if (this.f20079l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp(list);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fn.sz
            public boolean hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    if (!this.f20079l.transact(2, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        return hp.l().hp();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
