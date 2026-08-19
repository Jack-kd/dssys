package com.byazt.cy;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* loaded from: classes2.dex */
public interface l extends IInterface {
    void hp(Map map, Map map2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 1052, 123})
    public static abstract class hp extends Binder implements l {

        @com.byazt.kj.hp(hp = {0, 1, 1052, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM})
        /* renamed from: com.byazt.cy.l$hp$hp, reason: collision with other inner class name */
        public static class C0207hp implements l {
            public static l hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f19041l;

            public C0207hp(IBinder iBinder) {
                this.f19041l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f19041l;
            }

            @Override // com.byazt.cy.l
            public void hp(Map map, Map map2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl");
                    parcelObtain.writeMap(map);
                    parcelObtain.writeMap(map2);
                    if (this.f19041l.transact(1, parcelObtain, parcelObtain2, 0) || hp.hp() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.hp().hp(map, map2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl");
        }

        public static l hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof l)) ? new C0207hp(iBinder) : (l) iInterfaceQueryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl");
            ClassLoader classLoader = getClass().getClassLoader();
            hp(parcel.readHashMap(classLoader), parcel.readHashMap(classLoader));
            parcel2.writeNoException();
            return true;
        }

        public static l hp() {
            return C0207hp.hp;
        }
    }
}
