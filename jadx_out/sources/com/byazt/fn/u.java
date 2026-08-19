package com.byazt.fn;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fn.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public interface u extends IInterface {
    boolean hp(long j2, long j3, v vVar) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 588, MediaPlayer.MEDIA_PLAYER_OPTION_NO_BUFFERING_UPDATE})
    public static abstract class hp extends Binder implements u {

        @com.byazt.kj.hp(hp = {0, 1, 588, 1142})
        /* renamed from: com.byazt.fn.u$hp$hp, reason: collision with other inner class name */
        public static class C0240hp implements u {
            public static u hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20080l;

            public C0240hp(IBinder iBinder) {
                this.f20080l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20080l;
            }

            @Override // com.byazt.fn.u
            public boolean hp(long j2, long j3, v vVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeLong(j3);
                    parcelObtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                    if (!this.f20080l.transact(1, parcelObtain, parcelObtain2, 0) && hp.hp() != null) {
                        boolean zHp = hp.hp().hp(j2, j3, vVar);
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
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
        }

        public static u hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof u)) ? new C0240hp(iBinder) : (u) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler");
            boolean zHp = hp(parcel.readLong(), parcel.readLong(), v.hp.hp(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(zHp ? 1 : 0);
            return true;
        }

        public static u hp() {
            return C0240hp.hp;
        }
    }
}
