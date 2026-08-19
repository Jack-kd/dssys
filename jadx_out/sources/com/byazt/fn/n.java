package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fn.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface n extends IInterface {
    boolean hp(sz szVar) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM})
    public static abstract class hp extends Binder implements n {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1462})
        /* renamed from: com.byazt.fn.n$hp$hp, reason: collision with other inner class name */
        public static class C0235hp implements n {
            public static n hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20075l;

            public C0235hp(IBinder iBinder) {
                this.f20075l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20075l;
            }

            @Override // com.byazt.fn.n
            public boolean hp(sz szVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                    parcelObtain.writeStrongBinder(szVar != null ? szVar.asBinder() : null);
                    if (!this.f20075l.transact(1, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zHp = hp.hp().hp(szVar);
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
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
        }

        public static n hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof n)) ? new C0235hp(iBinder) : (n) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            boolean zHp = hp(sz.hp.hp(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(zHp ? 1 : 0);
            return true;
        }

        public static n hp() {
            return C0235hp.hp;
        }
    }
}
