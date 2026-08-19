package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface s extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, 588, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static abstract class hp extends Binder implements s {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1324})
        /* renamed from: com.byazt.fn.s$hp$hp, reason: collision with other inner class name */
        public static class C0238hp implements s {
            public static s hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20078l;

            public C0238hp(IBinder iBinder) {
                this.f20078l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20078l;
            }

            @Override // com.byazt.fn.s
            public boolean hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
                    if (!this.f20078l.transact(1, parcelObtain, parcelObtain2, 0) && hp.l() != null) {
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

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
        }

        public static s hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof s)) ? new C0238hp(iBinder) : (s) iInterfaceQueryLocalInterface;
        }

        public static s l() {
            return C0238hp.hp;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
            boolean zHp = hp();
            parcel2.writeNoException();
            parcel2.writeInt(zHp ? 1 : 0);
            return true;
        }
    }

    boolean hp() throws RemoteException;
}
