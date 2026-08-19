package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fu.DownloadInfo;

/* loaded from: classes2.dex */
public interface ud extends IInterface {
    boolean hp(DownloadInfo downloadInfo) throws RemoteException;

    boolean jx(DownloadInfo downloadInfo) throws RemoteException;

    boolean l(DownloadInfo downloadInfo) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, 1098})
    public static abstract class hp extends Binder implements ud {

        @com.byazt.kj.hp(hp = {0, 1, 588, 2189})
        /* renamed from: com.byazt.fn.ud$hp$hp, reason: collision with other inner class name */
        public static class C0241hp implements ud {
            public static ud hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20081l;

            public C0241hp(IBinder iBinder) {
                this.f20081l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20081l;
            }

            @Override // com.byazt.fn.ud
            public boolean hp(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f20081l.transact(1, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zHp = hp.hp().hp(downloadInfo);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zHp;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.fn.ud
            public boolean jx(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f20081l.transact(3, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zJx = hp.hp().jx(downloadInfo);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zJx;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.fn.ud
            public boolean l(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f20081l.transact(2, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zL = hp.hp().l(downloadInfo);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zL;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
        }

        public static ud hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ud)) ? new C0241hp(iBinder) : (ud) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                boolean zHp = hp(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zHp ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                boolean zL = l(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zL ? 1 : 0);
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback");
            boolean zJx = jx(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(zJx ? 1 : 0);
            return true;
        }

        public static ud hp() {
            return C0241hp.hp;
        }
    }
}
