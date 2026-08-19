package com.byazt.fn;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface eb extends IInterface {
    Uri hp(String str, String str2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 131})
    public static abstract class hp extends Binder implements eb {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1419})
        /* renamed from: com.byazt.fn.eb$hp$hp, reason: collision with other inner class name */
        public static class C0232hp implements eb {
            public static eb hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20072l;

            public C0232hp(IBinder iBinder) {
                this.f20072l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20072l;
            }

            @Override // com.byazt.fn.eb
            public Uri hp(String str, String str2) throws RemoteException {
                Uri uriHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f20072l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                        uriHp = parcelObtain2.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        uriHp = hp.hp().hp(str, str2);
                    }
                    return uriHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
        }

        public static eb hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof eb)) ? new C0232hp(iBinder) : (eb) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
            Uri uriHp = hp(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            if (uriHp != null) {
                parcel2.writeInt(1);
                uriHp.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }

        public static eb hp() {
            return C0232hp.hp;
        }
    }
}
