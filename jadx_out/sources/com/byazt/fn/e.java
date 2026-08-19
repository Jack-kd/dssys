package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface e extends IInterface {
    String hp() throws RemoteException;

    void hp(String str) throws RemoteException;

    int[] l() throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 773})
    public static abstract class hp extends Binder implements e {
        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
        }

        public static e hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0231hp(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        public static e jx() {
            return C0231hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                hp(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                String strHp = hp();
                parcel2.writeNoException();
                parcel2.writeString(strHp);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
            int[] iArrL = l();
            parcel2.writeNoException();
            parcel2.writeIntArray(iArrL);
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, 588, 1966})
        /* renamed from: com.byazt.fn.e$hp$hp, reason: collision with other inner class name */
        public static class C0231hp implements e {
            public static e hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20071l;

            public C0231hp(IBinder iBinder) {
                this.f20071l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20071l;
            }

            @Override // com.byazt.fn.e
            public void hp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    parcelObtain.writeString(str);
                    if (this.f20071l.transact(1, parcelObtain, parcelObtain2, 0) || hp.jx() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.jx().hp(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fn.e
            public int[] l() throws RemoteException {
                int[] iArrCreateIntArray;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    if (this.f20071l.transact(3, parcelObtain, parcelObtain2, 0) || hp.jx() == null) {
                        parcelObtain2.readException();
                        iArrCreateIntArray = parcelObtain2.createIntArray();
                    } else {
                        iArrCreateIntArray = hp.jx().l();
                    }
                    return iArrCreateIntArray;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fn.e
            public String hp() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    if (!this.f20071l.transact(2, parcelObtain, parcelObtain2, 0) && hp.jx() != null) {
                        string = hp.jx().hp();
                    } else {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
