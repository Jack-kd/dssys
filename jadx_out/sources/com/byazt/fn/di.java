package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fu.DownloadInfo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface di extends IInterface {
    String hp() throws RemoteException;

    void hp(int i2, DownloadInfo downloadInfo, String str, String str2) throws RemoteException;

    boolean hp(boolean z2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, MediaPlayer.MEDIA_PLAYER_OPTION_GET_STREAM_INFO_FIND_END_TIME})
    public static abstract class hp extends Binder implements di {
        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
        }

        public static di hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof di)) ? new C0230hp(iBinder) : (di) iInterfaceQueryLocalInterface;
        }

        public static di l() {
            return C0230hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                hp(parcel.readInt(), parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                boolean zHp = hp(parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeInt(zHp ? 1 : 0);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
            String strHp = hp();
            parcel2.writeNoException();
            parcel2.writeString(strHp);
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, 588, 1786})
        /* renamed from: com.byazt.fn.di$hp$hp, reason: collision with other inner class name */
        public static class C0230hp implements di {
            public static di hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20070l;

            public C0230hp(IBinder iBinder) {
                this.f20070l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20070l;
            }

            @Override // com.byazt.fn.di
            public void hp(int i2, DownloadInfo downloadInfo, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    parcelObtain.writeInt(i2);
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f20070l.transact(1, parcelObtain, parcelObtain2, 0) || hp.l() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.l().hp(i2, downloadInfo, str, str2);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.fn.di
            public boolean hp(boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f20070l.transact(2, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        return hp.l().hp(z2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fn.di
            public String hp() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    if (!this.f20070l.transact(3, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
                        string = hp.l().hp();
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
